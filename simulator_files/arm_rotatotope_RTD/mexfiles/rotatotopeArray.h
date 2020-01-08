/*
Author: Bohao Zhang
Oct. 29 2019

arm_planning mex

a cuda array for a cluster of rotatotopes
*/

#ifndef ROTATOTOPE_ARRAY_H
#define ROTATOTOPE_ARRAY_H

#include "mex.h"
#include "cuda_runtime.h"
#include "device_launch_parameters.h"
#include "IpTNLP.hpp"
#include "IpIpoptApplication.hpp"
#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <cstdint>
#include <ctime>
#include <cfloat>

#define k_dim 2
#define reduce_order 16
#define norm_size 160
#define max_RZ_length 60
#define A_BIG_NUMBER 1000000.0
#define TOO_SMALL_POLYTOPE_JUDGE 0.0001
#define CONSERVATIVE_BUFFER 0.0001

class rotatotopeArray {
public:
	/*
	Instruction:
		constructor of rotatotopeArray
	Requires:
		1. n_links
		2. n_time_steps
		3. R
		4. dev_R
		5. R_unit_length
		6. dev_rot_axes
		7. Z
		8. Z_width
		9. Z_length
	*/
	rotatotopeArray(uint32_t n_links_input, uint32_t n_time_steps_input, double* R_input, double* dev_R_input, uint32_t R_unit_length_input, uint8_t* dev_rot_axes_input, double* Z_input, uint32_t Z_width_input, uint32_t Z_length_input);

	/*
	Instruction:
		destructor of rotatotopeArray, release the memory
	*/
	~rotatotopeArray();

	/*
	Instruction:
		stack the links
	Requires:
		1. rotatotope array of EEs
	*/
	void stack(rotatotopeArray &EEs);

	/*
	Instruction:
		generate the constraints using input obstacles
	Requires:
		1. number of obstacles
		2. zonotope array of obstacles
		3. width of the array above
		4. length of the array above
	*/
	void generate_constraints(uint32_t n_obstacles, double* OZ, uint32_t OZ_width, uint32_t OZ_length);

	/*
	Instruction:
		evaluate constraints at k_opt for optimization
	Requires:
		1. k_opt
			--> input of k
	*/
	void evaluate_constraints(double* k_opt);

	// number of different zonotopes
	uint32_t n_links;

	// number of time steps
	uint32_t n_time_steps;

	// a pointer to R in gpu
	double* dev_R;
	uint32_t R_unit_length;

	// a pointer to rot_axes in gpu
	uint8_t* dev_rot_axes;

	// the array of zonotopes to rotate
	double* Z;
	double* dev_Z;
	uint32_t Z_length, Z_width, Z_unit_length;

	// zonotope of k interval
	double* c_k;
	double* g_k;

	// the resulting array of rotatotopes without stacking
	double* dev_RZ;

	// keep track of the center
	bool* dev_c_idx;

	// keep track of k-dependent generators
	bool* dev_k_idx;

	// stacking results
	double** dev_RZ_stack;
	bool** dev_c_idx_stack;
	bool** dev_k_idx_stack;

	double* debug_RZ = nullptr;
	bool* debug_c_idx = nullptr;
	bool* debug_k_idx = nullptr;

	// number of obstacles
	uint32_t n_obstacles;

	// constraint polynomials
	double** A_con;
	double** dev_A_con;

	double** b_con;
	double** dev_b_con;

	bool** k_con;
	bool** dev_k_con;

	uint8_t** k_con_num; // size of each k con
	uint8_t** dev_k_con_num; 

	// maximum of k_con in rotatotopes
	uint32_t* max_k_con_num;

	// current constraints info
	double* current_k_opt; // current k
	double* con; // value of constraints at k
	double* jaco_con; // value of jacobian of constraints at k
	double* hess_con; // value of hessian of constraints at k

	// timing
	std::clock_t start_t, end_t; 

	double* debug = nullptr;
	double* debug_2 = nullptr;
};

/*
Instruction:
	initialize RZ with link_Z to prepare for multiplication
Requires:
	1. link_Z
		--> the Z of zonotopes of links
Modifies:
	1. RZ
	2. c_idx
*/
__global__ void initialize_RZ_kernel(double* link_Z, uint32_t link_Z_length, double* RZ, bool* c_idx);

/*
Instruction:
	multiply a zonotope with a rotatotope
Requires:
	1. rot_axes
	2. link_offset
		--> which link should be rotated
	3. joint_offset
		--> which joint of link should be rotated
	4. RZ
		--> the Z of zonotopes of results from the previous multiplication
	5. R
		--> the Z of zonotopes in trig_FRS
	6. c_idx
	7. k_idx
	8. RZ_new
		--> the Z of zonotopes after rotation
	9. c_idx_new
		--> index of who are multiplied with a center
	10. k_idx_new
		--> index of who are multiplied with a k-dep generator
Modifies:
	1. RZ_new
	2. c_idx_new
	3. k_idx_new
*/
__global__ void multiply_kernel(uint8_t* rot_axes, uint32_t link_offset, uint32_t joint_offset, double* RZ, double* R, bool* c_idx, bool* k_idx, double* RZ_new, bool* c_idx_new, bool* k_idx_new);

/*
Instruction:
	cuda implementation of reduce
Requires:
	1. RZ_new
		--> the temporary array for RZ, will be reduced to RZ
	2. c_idx_new
	3. k_idx_new
	4. link_offset
		--> which link should be reduced
Modifies:
	1. RZ
	2. c_idx
	3. k_idx
*/
__global__ void reduce_kernel(double* RZ_new, bool* c_idx_new, bool* k_idx_new, uint32_t link_offset, double* RZ, bool* c_idx, bool* k_idx);

/*
Instruction:
	copy one rotatotope to another array, used in stacking
Requires:
	1. link_id
		--> which link should be copied
	2. link_RZ
		--> the Z of zonotopes of links
	3. link_c_idx
	4. link_k_idx
	5. RZ_stack
		--> for stacking
	6. c_idx_stack
	7. k_idx_stack
Modifies:
	1. RZ_stack
	2. c_idx_stack
	3. k_idx_stack
*/
__global__ void copy_kernel(uint32_t link_id, double* RZ, bool* c_idx, bool* k_idx, double* RZ_stack, bool* c_idx_stack, bool* k_idx_stack);

/*
Instruction:
	stack two rotatotopes together
Requires:
	1. link_id
		--> which in links should be stacked
	2. EE_id
		--> which in EE should be stacked
	3. RZ_stack
		--> the Z of zonotopes of links
	4. EE_RZ
	5. c_idx_stack
	6. EE_c_idx
	7. k_idx_stack
	8. EE_k_idx
Modifies:
	1. RZ_stack
	2. c_idx_stack
	3. k_idx_stack
*/
__global__ void stack_kernel(uint32_t link_id, uint32_t EE_id, double* RZ_stack, double* EE_RZ, bool* c_idx_stack, bool* EE_c_idx, bool* k_idx_stack, bool* EE_k_idx);

/*
Instruction:
	buffer the obstacle by k-independent generators
Requires:
	1. link_id
		--> which link is in operation
	2. RZ
	3. c_idx
	4. k_idx
	5. OZ
	6. OZ_unit_length
Modifies:
	1. buff_obstacles
	2. frs_k_dep_G
	3. k_con
	4. k_con_num
*/
__global__ void buff_obstacles_kernel(uint32_t link_id, double* RZ, bool* c_idx, bool* k_idx, double* OZ, uint32_t OZ_unit_length, double* buff_obstacles, double* frs_k_dep_G, bool* k_con, uint8_t* k_con_num);

/*
Instruction:
	generate the polytopes of constraints
Requires:
	1. link_id
		--> which link is in operation
	2. buff_obstacles
	3. frs_k_dep_G
	4. k_con_num
	5. A_con_width = max_k_con_num
Modifies:
	1. A_con
	2. b_con
*/
__global__ void polytope(uint32_t link_id, double* buff_obstacles, double* frs_k_dep_G, uint8_t* k_con_num, uint32_t A_con_width, double* A_con, double* b_con);

/*
Instruction:
	evaluate constraints with lambda
Requires:
	1. lambda
	2. link_id
	3. A_con
	4. A_con_width
	5. b_con
	6. k_con
	7. k_con_num
Modifies:
	1. con_result
*/
__global__ void evaluate_constraints_kernel(double* lambda, uint32_t link_id, double* A_con, uint32_t A_con_width, double* b_con, bool* k_con, uint8_t* k_con_num, double* con_result);

/*
Instruction:
	first find the maximum of the constraints
	evaluate the jacobian and hessian of constraint with that maximum
Requires:
	1. con_result
	2. link_id
	3. lambda
	4. g_k
	5. A_con
	6. k_con
	7. k_con_num
	8. n_links
Modifies:
	1. con
	2. jaco_con
	3. hess_con
*/
__global__ void evaluate_gradient_kernel(double* con_result, uint32_t link_id, double* lambda, double* g_k, double* A_con, uint32_t A_con_width, bool* k_con, uint8_t* k_con_num, uint32_t n_links, double* con, double* jaco_con, double* hess_con);

#endif // !ROTATOTOPE_ARRAY_H