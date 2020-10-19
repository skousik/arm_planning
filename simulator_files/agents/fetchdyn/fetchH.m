function H = fetchH(in1)
%FETCHH
%    H = FETCHH(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.0.
%    16-Oct-2020 20:53:08

q2 = in1(2,:);
q3 = in1(3,:);
q4 = in1(4,:);
q5 = in1(5,:);
q6 = in1(6,:);
t2 = cos(q3);
t3 = cos(q5);
t4 = sin(q5);
t5 = cos(q6);
t6 = sin(q6);
t7 = t5.^2;
t8 = t7.*(2.83e2./8.0e1);
t9 = t6.^2;
t10 = t9.*(2.83e2./8.0e1);
t11 = t8+t10+1.6563;
t12 = t3.^2;
t13 = t4.^2;
t14 = t6.*4.4041875e-1;
t15 = t14-2.77933e-3;
t16 = t6.*t15;
t17 = t5.*4.4041875e-1;
t18 = t17+5.45444845e-1;
t19 = t5.*t18;
t20 = t16+t19+1.8169611e-1;
t21 = cos(q4);
t22 = t5.*5.45444845e-1;
t38 = t6.*2.77933e-3;
t23 = t22-t38+6.2211486e-1;
t24 = sin(q3);
t25 = t3.*t4.*5.1938;
t54 = t3.*t4.*t11;
t26 = t25-t54;
t27 = sin(q4);
t28 = t7.*1.45491e-3;
t29 = t9.*1.45491e-3;
t30 = t28+t29-4.405758e-2;
t31 = t5.*2.77933e-3;
t32 = t6.*5.45444845e-1;
t33 = t31+t32;
t34 = t4.*t11.*(1.97e2./1.0e3);
t35 = t4.*t20;
t36 = t34+t35;
t37 = t3.*1.0231786;
t39 = t3.*t23;
t40 = t37+t39;
t41 = t3.*t30;
t42 = t3.*t11.*(1.97e2./1.0e3);
t43 = t3.*t20;
t44 = t42+t43;
t45 = t11.*t12;
t46 = t13.*5.1938;
t47 = t45+t46+2.1299;
t48 = t4.*1.0231786;
t49 = t4.*t23;
t50 = t48+t49;
t51 = t4.*t30;
t52 = t5.*t15;
t53 = t8+t10+3.7862;
t55 = t12.*5.1938;
t56 = t11.*t13;
t57 = t55+t56+4.461;
t58 = t27.^2;
t59 = t53.*t58;
t60 = t21.^2;
t61 = t47.*t60;
t62 = t59+t61+2.3311;
t63 = t4.*t33;
t64 = t41+t63+1.554827e-2;
t65 = t27.*t64;
t66 = sin(q2);
t67 = t7.*4.4041875e-1;
t68 = t9.*4.4041875e-1;
t69 = t22-t38+t67+t68+1.8169611e-1;
t70 = t5.*6.79078832025e-2;
t71 = t5.*5.737396025e-4;
t72 = t5.*7.24381605775e-3;
t73 = t6.*5.737396025e-4;
t74 = t72+t73;
t75 = t6.*1.071226956595e-1;
t76 = t71+t75;
t77 = t5.*1.81136295e-4;
t78 = t77+2.123275175e-4;
t79 = t6.*1.81136295e-4;
t80 = t79+9.189300000000015e-8;
t81 = t3.*t33.*(1.97e2./1.0e3);
t82 = t5.*1.071226956595e-1;
t95 = t6.*7.24381605775e-3;
t83 = t71-t95+3.46026585e-4;
t84 = cos(q2);
t85 = t3.*t4.*1.0231786;
t86 = t3.*t4.*t23;
t101 = t3.*t4.*t11.*(1.97e2./1.0e3);
t102 = t3.*t4.*t69;
t87 = t85+t86-t101-t102;
t88 = t21.*t87;
t89 = t65+t88;
t90 = t27.*t89;
t91 = t60.*t64;
t92 = t90+t91+3.26354e-3;
t93 = -t73+t82+6.79078832025e-2;
t94 = t6.*t93;
t96 = t5.*t83;
t97 = t94+t96;
t98 = t5.*t78;
t99 = t6.*t80;
t100 = t98+t99-4.533116526000001e-3;
t103 = t5.*9.189300000000015e-8;
t104 = t6.*2.123275175e-4;
t105 = t103-t104;
t106 = t6.*t15.*1.245e-1;
t107 = t5.*t18.*1.245e-1;
t111 = t6.*3.46026585e-4;
t108 = t70+t106+t107-t111+1.2951975935075e-1;
t109 = t6.*t78;
t118 = t5.*t80;
t110 = t109-t118;
t112 = t3.*t40.*(1.97e2./1.0e3);
t113 = t4.*t36.*(1.97e2./1.0e3);
t114 = t4.*t108;
t115 = t4.*t69.*(1.97e2./1.0e3);
t164 = t3.*t105;
t116 = t114+t115-t164;
t117 = t4.*t116;
t119 = t3.*t23.*(1.97e2./1.0e3);
t120 = t5.*t93;
t165 = t6.*t83;
t121 = t70-t111+t120-t165+7.943612927e-2;
t122 = t5.*2.123275175e-4;
t123 = t6.*9.189300000000015e-8;
t124 = t7.*1.81136295e-4;
t125 = t9.*1.81136295e-4;
t126 = t122+t123+t124+t125-4.533116526e-3;
t127 = t5.*3.46026585e-4;
t128 = t6.*6.79078832025e-2;
t129 = t5.*t76;
t157 = t6.*t74;
t130 = t127+t128+t129-t157;
t131 = t3.*t130;
t133 = t4.*t30.*(1.97e2./1.0e3);
t201 = t4.*t126;
t132 = t81+t131-t133-t201;
t134 = t3.*t97;
t135 = t5.*t74;
t136 = t6.*t76;
t137 = t135+t136+5.285433999e-3;
t138 = t4.*t110;
t140 = t3.*t33;
t139 = t51-t140;
t141 = t21.*t139;
t142 = t12.*1.0231786;
t143 = t11.*t13.*(1.97e2./1.0e3);
t144 = t13.*t69;
t145 = t12.*t23;
t146 = t142+t143+t144+t145+2.7241421e-1;
t323 = t27.*t146;
t147 = t141-t323;
t148 = t2.*t57;
t255 = t21.*t24.*t26;
t149 = t148-t255;
t150 = t21.*t26.*(1.33e2./1.0e3);
t151 = t12.*6.907754e-1;
t152 = t11.*t13.*(1.33e2./1.0e3);
t153 = t27.*t139;
t154 = t24.*t62;
t259 = t2.*t21.*t26;
t155 = t154-t259;
t156 = t3.*t30.*(1.97e2./1.0e3);
t158 = t4.*t33.*(1.97e2./1.0e3);
t159 = t3.*t36;
t225 = t4.*t40;
t160 = t159-t225;
t161 = t21.*t160;
t162 = t3.*t4.*t11.*(1.33e2./1.0e3);
t224 = t3.*t4.*6.907754e-1;
t163 = t65+t161+t162-t224;
t166 = t3.*t121;
t167 = t119+t138+t166;
t183 = t6.*t18;
t168 = t52-t183;
t227 = t4.*t168;
t169 = t41-t227+1.554827e-2;
t170 = t11.*t12.*(1.97e2./1.0e3);
t171 = t12.*t69;
t172 = t13.*1.0231786;
t173 = t13.*t23;
t174 = t170+t171+t172+t173+2.7241421e-1;
t175 = t4.*t105;
t176 = t3.*t108;
t177 = t3.*t69.*(1.97e2./1.0e3);
t178 = t175+t176+t177;
t179 = t3.*t44;
t180 = t21.*t47.*(1.33e2./1.0e3);
t181 = t4.*t50;
t182 = t179+t180+t181+2.7241421e-1;
t184 = t27.*t53.*(1.33e2./1.0e3);
t185 = t4.*t23.*(1.97e2./1.0e3);
t186 = t4.*t121;
t214 = t3.*t110;
t187 = t185+t186-t214;
t188 = t21.*t89;
t256 = t21.*t27.*t64;
t189 = t150+t188-t256;
t190 = t3.*t40;
t191 = t4.*t36;
t192 = t190+t191+2.7241421e-1;
t193 = t27.*t139.*(1.33e2./1.0e3);
t241 = t4.*t100;
t194 = t81-t133+t134-t241;
t195 = t4.*t30.*(1.33e2./1.0e3);
t196 = t27.*t137;
t284 = t21.*t194;
t285 = t3.*t33.*(1.33e2./1.0e3);
t197 = t195+t196-t284-t285;
t198 = t12.*1.360827538e-1;
t199 = t11.*t13.*2.6201e-2;
t200 = t13.*t69.*(1.33e2./1.0e3);
t202 = t12.*t23.*(1.33e2./1.0e3);
t203 = t3.*t167;
t204 = t112+t113+t117+t203+4.335527983000001e-2;
t205 = t21.*t204;
t287 = t27.*t132;
t206 = t198+t199+t200+t202+t205-t287+3.623108993000001e-2;
t207 = t4.*t97;
t208 = t21.*t64.*(1.33e2./1.0e3);
t209 = t3.*t100;
t210 = t156+t158+t207+t208+t209+3.588623733e-3;
t211 = t27.*t64.*(1.33e2./1.0e3);
t212 = t3.*t50.*(1.97e2./1.0e3);
t213 = t21.*t87.*(1.33e2./1.0e3);
t215 = t3.*t187;
t292 = t4.*t44.*(1.97e2./1.0e3);
t293 = t4.*t178;
t216 = t211+t212+t213+t215-t292-t293;
t217 = t21.*t146;
t218 = t151+t152+t153+t217+5.5484985e-1;
t219 = t21.*t192;
t220 = t151+t152+t153+t219+5.5484985e-1;
t221 = t3.*t50;
t300 = t4.*t44;
t222 = t150+t221-t300;
t298 = t2.*t220;
t299 = t2.*t57.*(2.19e2./1.0e3);
t301 = t24.*t222;
t302 = t21.*t24.*t26.*(2.19e2./1.0e3);
t223 = t298+t299-t301-t302;
t226 = t21.*t163;
t303 = t21.*t27.*t169;
t228 = t226-t303;
t229 = t2.*t228;
t230 = t24.*t62.*(2.19e2./1.0e3);
t231 = t21.*t182;
t232 = t3.*(t52-t183);
t233 = t51+t184+t232;
t234 = t3.*t126;
t235 = t4.*t130;
t236 = t156+t158+t234+t235+3.588623733e-3;
t237 = t3.*t36.*(1.97e2./1.0e3);
t238 = t3.*t116;
t262 = t4.*t40.*(1.97e2./1.0e3);
t263 = t4.*t167;
t239 = t237+t238-t262-t263;
t240 = t21.*t137;
t242 = t21.*t132;
t243 = t21.*t64;
t252 = t27.*t160;
t244 = t243-t252;
t245 = t53.*t58.*(1.33e2./1.0e3);
t246 = t21.*t174;
t247 = t47.*t60.*(1.33e2./1.0e3);
t248 = t153+t245+t246+t247+2.7157315e-1;
t249 = t85+t86-t101-t102+t150;
t312 = t27.*t192;
t250 = t141-t312;
t251 = t58.*t169;
t253 = t21.*t244;
t254 = t251+t253+3.26354e-3;
t257 = t24.*t189;
t348 = t2.*t218;
t258 = t257-t348;
t260 = t27.*t236;
t261 = t21.*t163.*(1.33e2./1.0e3);
t264 = t21.*t239;
t265 = t3.*t4.*t11.*2.6201e-2;
t266 = t3.*t4.*t69.*(1.33e2./1.0e3);
t335 = t3.*t4.*1.360827538e-1;
t336 = t3.*t4.*t23.*(1.33e2./1.0e3);
t351 = t21.*t27.*t169.*(1.33e2./1.0e3);
t267 = t260+t261+t264+t265+t266-t335-t336-t351;
t268 = t2.*t267;
t269 = t24.*t248.*(2.19e2./1.0e3);
t270 = t3.*t44.*(1.97e2./1.0e3);
t271 = t4.*t50.*(1.97e2./1.0e3);
t272 = t21.*t174.*(1.33e2./1.0e3);
t273 = t3.*t178;
t274 = t21.*t182.*(1.33e2./1.0e3);
t275 = t27.*t233.*(1.33e2./1.0e3);
t276 = t4.*t187;
t277 = t193+t270+t271+t272+t273+t274+t275+t276+7.918004943400001e-2;
t278 = t24.*t277;
t352 = t2.*t249.*(2.19e2./1.0e3);
t279 = t268+t269+t278-t352;
t280 = t24.*t189.*(2.19e2./1.0e3);
t281 = t12.*9.18731282e-2;
t282 = t11.*t13.*1.7689e-2;
t283 = t21.*t192.*(1.33e2./1.0e3);
t286 = t27.*t197;
t288 = t21.*t206;
t289 = t193+t281+t282+t283+t286+t288+7.401864203100001e-2;
t290 = t21.*t26.*1.7689e-2;
t291 = t3.*t50.*(1.33e2./1.0e3);
t294 = t21.*t216;
t355 = t4.*t44.*(1.33e2./1.0e3);
t356 = t27.*t210;
t295 = t290+t291+t294-t355-t356;
t296 = t24.*t295;
t354 = t2.*t289;
t357 = t2.*t218.*(2.19e2./1.0e3);
t297 = t280+t296-t354-t357;
t304 = t27.*t233;
t305 = t231+t304+2.7157315e-1;
t306 = t24.*t305;
t359 = t2.*t21.*t26.*(2.19e2./1.0e3);
t307 = t229+t230+t306-t359;
t308 = t21.*t236;
t309 = t58.*t169.*(1.33e2./1.0e3);
t310 = t21.*t244.*(1.33e2./1.0e3);
t334 = t27.*t239;
t311 = t308+t309+t310-t334+4.8020241e-4;
t313 = t21.*t139.*(1.33e2./1.0e3);
t314 = t27.*t194;
t315 = t240+t314;
t316 = t27.*t315;
t317 = t27.*t204;
t318 = t242+t317;
t364 = t27.*t192.*(1.33e2./1.0e3);
t365 = t21.*t318;
t319 = t313+t316-t364-t365;
t320 = t2.*t249;
t369 = t24.*t248;
t321 = t320-t369;
t322 = t24.*t92.*(1.17e2./1.0e3);
t324 = t2.*t147.*(1.17e2./1.0e3);
t325 = t24.*t92.*(2.19e2./1.0e3);
t326 = t21.*t210;
t327 = t27.*t216;
t328 = t326+t327+4.8020241e-4;
t329 = t24.*t328;
t330 = t21.*t197;
t331 = t2.*t147.*(2.19e2./1.0e3);
t332 = t330-t27.*t206;
t333 = t2.*t332;
t337 = t153+t246;
t338 = t41+t63;
t339 = t135+t136+2.771931628e-3;
t340 = t22-t38;
t341 = t70-t111+1.0658769608375e-1;
t342 = t4.*t341;
t343 = t4.*t340.*(1.97e2./1.0e3);
t344 = -t164+t342+t343;
t345 = t122+t123;
t346 = t27.*t33;
t390 = t3.*t21.*t340;
t347 = t346-t390;
t349 = t24.*t258.*(1.17e2./1.0e3);
t350 = t2.*t155.*2.5623e-2;
t353 = t2.*t279;
t358 = t24.*t297;
t360 = t2.*t307.*(2.19e2./1.0e3);
t361 = t353+t358+t360-t24.*t223.*(2.19e2./1.0e3)+1.91628e-6;
t362 = t84.*t361;
t363 = t2.*t311;
t366 = t2.*t254.*(2.19e2./1.0e3);
t367 = t363+t366-t24.*t250.*(2.19e2./1.0e3)-t24.*t319+4.84411296e-3;
t368 = t66.*t367;
t370 = t349+t350+t362+t368-t24.*t149.*2.5623e-2-t2.*t321.*(1.17e2./1.0e3);
t371 = t4.*(t109-t118);
t372 = t119+t166+t371;
t373 = t3.*t372;
t374 = t112+t113+t117+t373+4.335527983000001e-2;
t375 = t21.*t374;
t376 = t198+t199+t200+t202-t287+t375+3.623108993000001e-2;
t377 = t193+t270+t271+t272+t273+t276+4.304177745900001e-2;
t378 = t21.*t338.*(1.33e2./1.0e3);
t379 = t156+t158+t207+t209+t378;
t380 = t27.*t339;
t381 = t195-t284-t285+t380;
t382 = t27.*t345;
t383 = t21.*t344;
t384 = t4.*t340.*(1.33e2./1.0e3);
t385 = t382+t383+t384;
t386 = t3.*t341;
t387 = t3.*t340.*(1.97e2./1.0e3);
t388 = t3.*t21.*t340.*(1.33e2./1.0e3);
t425 = t27.*t33.*(1.33e2./1.0e3);
t389 = t175+t386+t387+t388-t425;
t391 = t21.*t315;
t393 = t27.*t376;
t392 = t330-t393;
t394 = t24.*t147.*(2.19e2./1.0e3);
t395 = t27.*t374;
t400 = t4.*t372;
t396 = t237+t238-t262-t400;
t397 = t27.*(t81-t133+t134-t241);
t398 = t21.*t339;
t399 = t21.*t345;
t401 = t27.*t396;
t402 = t21.*t396;
t403 = t260+t265+t266-t335-t336+t402;
t404 = t24.*t377;
t405 = t24.*t337.*(2.19e2./1.0e3);
t406 = t24.*t337.*(1.17e2./1.0e3);
t407 = t2.*t377;
t408 = t24.*t87.*(2.19e2./1.0e3);
t409 = t2.*t337.*(2.19e2./1.0e3);
t410 = t407+t408+t409-t24.*t403;
t411 = -t308+t401;
t412 = t2.*t139.*(2.19e2./1.0e3);
t413 = t24.*t379;
t414 = t2.*t381;
t415 = t21.*t24.*t338.*(2.19e2./1.0e3);
t416 = t412+t413+t414+t415;
t417 = t314+t398;
t418 = t2.*t139.*(-1.17e2./1.0e3)-t66.*t417-t84.*t416-t21.*t24.*t338.*(1.17e2./1.0e3);
t419 = t24.*t139.*(2.19e2./1.0e3);
t420 = t24.*t381;
t421 = t419+t420-t2.*t379-t2.*t21.*t338.*(2.19e2./1.0e3);
t422 = t397+t398;
t423 = -t156-t158-t207-t209;
t424 = t2.*t385;
t426 = t24.*t389;
t427 = t2.*t4.*t340.*(2.19e2./1.0e3);
t428 = t424+t426+t427-t24.*t347.*(2.19e2./1.0e3);
t429 = t84.*t428;
t430 = t27.*t344;
t431 = -t399+t430;
t432 = t2.*t4.*t340.*(1.17e2./1.0e3);
t433 = t2.*t389;
t434 = t433-t2.*t347.*(2.19e2./1.0e3)-t24.*t385-t4.*t24.*t340.*(2.19e2./1.0e3);
t435 = t175+t386+t387;
t436 = -t122-t123;
H = reshape([t2.*t149.*1.3689e-2+t24.*t155.*1.3689e-2+t66.*(t2.*t250+t24.*t254-2.6615e-4).*(1.17e2./1.0e3)+t66.*(t322+t324+t66.*(t21.*(t240+t27.*(t81+t134-t4.*t30.*(1.97e2./1.0e3)-t4.*t100))+t27.*(t242+t27.*(t112+t113+t117+t3.*(t119+t138+t3.*(t6.*(-3.46026585e-4)+t70+t5.*(t6.*(-5.737396025e-4)+t82+6.79078832025e-2)-t6.*t83+7.943612927e-2))+4.335527983000001e-2))+4.842567731e-3)+t84.*(t325+t329+t331+t333-3.811268e-5)-3.113955000000001e-5)+t84.*(t66.*(t2.*t250.*(2.19e2./1.0e3)+t24.*t254.*(2.19e2./1.0e3)+t2.*t319+t24.*t311-3.811268e-5)+t84.*(t2.*t223.*(2.19e2./1.0e3)-t2.*t297+t24.*t279+t24.*t307.*(2.19e2./1.0e3)+6.591532991999999e-2)+t2.*t149.*2.5623e-2+t24.*t155.*2.5623e-2-t2.*t258.*(1.17e2./1.0e3)-t24.*t321.*(1.17e2./1.0e3)+4.45918356e-2)+t84.*(t2.*t223+t24.*(t229+t230+t24.*(t231+t27.*(t51+t184+t3.*t168)+2.7157315e-1)-t2.*t21.*t26.*(2.19e2./1.0e3))+3.811268e-1).*(1.17e2./1.0e3)+6.7201165455e-2,t370,-t322-t324-t66.*(t391+t27.*(t242+t395)+1.904568956e-3)-t84.*(t325+t329+t331+t2.*t392),t406-t2.*t87.*(1.17e2./1.0e3)+t66.*(t308-t401)+t84.*(t404+t405-t2.*t87.*(2.19e2./1.0e3)+t2.*t403),t418,t429+t432-t24.*t347.*(1.17e2./1.0e3)-t66.*t431,t370,t2.*(t2.*t248.*(2.19e2./1.0e3)+t24.*t249.*(2.19e2./1.0e3)+t2.*t277-t24.*t267)+t2.*(t302+t2.*t62.*(2.19e2./1.0e3)-t24.*t228+t2.*t305).*(2.19e2./1.0e3)+t24.*(t359+t24.*t57.*(2.19e2./1.0e3)+t2.*t222+t24.*t220).*(2.19e2./1.0e3)+t24.*(t2.*t189.*(2.19e2./1.0e3)+t24.*t218.*(2.19e2./1.0e3)+t2.*t295+t24.*(t193+t281+t282+t283+t286+t21.*t376+7.401864203100001e-2))+6.567738437499999e-2,t394-t2.*t92.*(2.19e2./1.0e3)-t2.*t328+t24.*(t330-t393),t410,t421,t434,-t322-t324-t84.*(t325+t329+t331+t333)-t66.*(t391+t27.*t318+1.904568956e-3),t394-t2.*t92.*(2.19e2./1.0e3)-t2.*t328+t24.*t392,t21.*(t240+t397)+t27.*(t395+t21.*(t81+t131-t133-t201))+1.904568956e-3,t411,t422,t431,t406+t84.*(t404+t405-t2.*t87.*(2.19e2./1.0e3)+t2.*(t260+t264+t265+t266-t335-t336))-t2.*t87.*(1.17e2./1.0e3)+t66.*(t308-t334),t410,t411,t270+t271+t273+t276+4.304177745900001e-2,t423,t435,t418,t421,t422,t423,t339,t436,t429+t432-t24.*t347.*(1.17e2./1.0e3)+t66.*(t399-t27.*t344),t434,t431,t435,t436,1.0658769608375e-1],[6,6]);