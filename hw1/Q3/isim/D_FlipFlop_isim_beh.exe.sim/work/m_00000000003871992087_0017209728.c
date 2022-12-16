/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "T:/fucking uni/CAD/hw1/Q3/SR_Latch.v";



static void Always_13_0(char *t0)
{
    char t11[8];
    char t33[8];
    char t67[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    char *t32;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    int t57;
    int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    char *t66;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    char *t71;
    char *t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    char *t80;
    char *t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    char *t94;

LAB0:    t1 = (t0 + 3168U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(13, ng0);
    t2 = (t0 + 3488);
    *((int *)t2) = 1;
    t3 = (t0 + 3200);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(14, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB5;

LAB6:
LAB7:    goto LAB2;

LAB5:    xsi_set_current_line(14, ng0);

LAB8:    xsi_set_current_line(15, ng0);
    t12 = (t0 + 1368U);
    t13 = *((char **)t12);
    memset(t11, 0, 8);
    t12 = (t13 + 4);
    t14 = *((unsigned int *)t12);
    t15 = (~(t14));
    t16 = *((unsigned int *)t13);
    t17 = (t16 & t15);
    t18 = (t17 & 1U);
    if (t18 != 0)
        goto LAB12;

LAB10:    if (*((unsigned int *)t12) == 0)
        goto LAB9;

LAB11:    t19 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t19) = 1;

LAB12:    t20 = (t11 + 4);
    t21 = (t13 + 4);
    t22 = *((unsigned int *)t13);
    t23 = (~(t22));
    *((unsigned int *)t11) = t23;
    *((unsigned int *)t20) = 0;
    if (*((unsigned int *)t21) != 0)
        goto LAB14;

LAB13:    t28 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t28 & 1U);
    t29 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t29 & 1U);
    t30 = (t0 + 2088);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    t34 = *((unsigned int *)t11);
    t35 = *((unsigned int *)t32);
    t36 = (t34 & t35);
    *((unsigned int *)t33) = t36;
    t37 = (t11 + 4);
    t38 = (t32 + 4);
    t39 = (t33 + 4);
    t40 = *((unsigned int *)t37);
    t41 = *((unsigned int *)t38);
    t42 = (t40 | t41);
    *((unsigned int *)t39) = t42;
    t43 = *((unsigned int *)t39);
    t44 = (t43 != 0);
    if (t44 == 1)
        goto LAB15;

LAB16:
LAB17:    t65 = (t0 + 1208U);
    t66 = *((char **)t65);
    t68 = *((unsigned int *)t33);
    t69 = *((unsigned int *)t66);
    t70 = (t68 | t69);
    *((unsigned int *)t67) = t70;
    t65 = (t33 + 4);
    t71 = (t66 + 4);
    t72 = (t67 + 4);
    t73 = *((unsigned int *)t65);
    t74 = *((unsigned int *)t71);
    t75 = (t73 | t74);
    *((unsigned int *)t72) = t75;
    t76 = *((unsigned int *)t72);
    t77 = (t76 != 0);
    if (t77 == 1)
        goto LAB18;

LAB19:
LAB20:    t94 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t94, t67, 0, 0, 1, 0LL);
    xsi_set_current_line(16, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB24;

LAB22:    if (*((unsigned int *)t2) == 0)
        goto LAB21;

LAB23:    t4 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t4) = 1;

LAB24:    t5 = (t11 + 4);
    t12 = (t3 + 4);
    t14 = *((unsigned int *)t3);
    t15 = (~(t14));
    *((unsigned int *)t11) = t15;
    *((unsigned int *)t5) = 0;
    if (*((unsigned int *)t12) != 0)
        goto LAB26;

LAB25:    t23 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t23 & 1U);
    t24 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t24 & 1U);
    t13 = (t0 + 2088);
    t19 = (t13 + 56U);
    t20 = *((char **)t19);
    t25 = *((unsigned int *)t11);
    t26 = *((unsigned int *)t20);
    t27 = (t25 & t26);
    *((unsigned int *)t33) = t27;
    t21 = (t11 + 4);
    t30 = (t20 + 4);
    t31 = (t33 + 4);
    t28 = *((unsigned int *)t21);
    t29 = *((unsigned int *)t30);
    t34 = (t28 | t29);
    *((unsigned int *)t31) = t34;
    t35 = *((unsigned int *)t31);
    t36 = (t35 != 0);
    if (t36 == 1)
        goto LAB27;

LAB28:
LAB29:    t38 = (t0 + 1368U);
    t39 = *((char **)t38);
    t60 = *((unsigned int *)t33);
    t61 = *((unsigned int *)t39);
    t62 = (t60 | t61);
    *((unsigned int *)t67) = t62;
    t38 = (t33 + 4);
    t47 = (t39 + 4);
    t48 = (t67 + 4);
    t63 = *((unsigned int *)t38);
    t64 = *((unsigned int *)t47);
    t68 = (t63 | t64);
    *((unsigned int *)t48) = t68;
    t69 = *((unsigned int *)t48);
    t70 = (t69 != 0);
    if (t70 == 1)
        goto LAB30;

LAB31:
LAB32:    t71 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t71, t67, 0, 0, 1, 0LL);
    goto LAB7;

LAB9:    *((unsigned int *)t11) = 1;
    goto LAB12;

LAB14:    t24 = *((unsigned int *)t11);
    t25 = *((unsigned int *)t21);
    *((unsigned int *)t11) = (t24 | t25);
    t26 = *((unsigned int *)t20);
    t27 = *((unsigned int *)t21);
    *((unsigned int *)t20) = (t26 | t27);
    goto LAB13;

LAB15:    t45 = *((unsigned int *)t33);
    t46 = *((unsigned int *)t39);
    *((unsigned int *)t33) = (t45 | t46);
    t47 = (t11 + 4);
    t48 = (t32 + 4);
    t49 = *((unsigned int *)t11);
    t50 = (~(t49));
    t51 = *((unsigned int *)t47);
    t52 = (~(t51));
    t53 = *((unsigned int *)t32);
    t54 = (~(t53));
    t55 = *((unsigned int *)t48);
    t56 = (~(t55));
    t57 = (t50 & t52);
    t58 = (t54 & t56);
    t59 = (~(t57));
    t60 = (~(t58));
    t61 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t61 & t59);
    t62 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t62 & t60);
    t63 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t63 & t59);
    t64 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t64 & t60);
    goto LAB17;

LAB18:    t78 = *((unsigned int *)t67);
    t79 = *((unsigned int *)t72);
    *((unsigned int *)t67) = (t78 | t79);
    t80 = (t33 + 4);
    t81 = (t66 + 4);
    t82 = *((unsigned int *)t80);
    t83 = (~(t82));
    t84 = *((unsigned int *)t33);
    t85 = (t84 & t83);
    t86 = *((unsigned int *)t81);
    t87 = (~(t86));
    t88 = *((unsigned int *)t66);
    t89 = (t88 & t87);
    t90 = (~(t85));
    t91 = (~(t89));
    t92 = *((unsigned int *)t72);
    *((unsigned int *)t72) = (t92 & t90);
    t93 = *((unsigned int *)t72);
    *((unsigned int *)t72) = (t93 & t91);
    goto LAB20;

LAB21:    *((unsigned int *)t11) = 1;
    goto LAB24;

LAB26:    t16 = *((unsigned int *)t11);
    t17 = *((unsigned int *)t12);
    *((unsigned int *)t11) = (t16 | t17);
    t18 = *((unsigned int *)t5);
    t22 = *((unsigned int *)t12);
    *((unsigned int *)t5) = (t18 | t22);
    goto LAB25;

LAB27:    t40 = *((unsigned int *)t33);
    t41 = *((unsigned int *)t31);
    *((unsigned int *)t33) = (t40 | t41);
    t32 = (t11 + 4);
    t37 = (t20 + 4);
    t42 = *((unsigned int *)t11);
    t43 = (~(t42));
    t44 = *((unsigned int *)t32);
    t45 = (~(t44));
    t46 = *((unsigned int *)t20);
    t49 = (~(t46));
    t50 = *((unsigned int *)t37);
    t51 = (~(t50));
    t57 = (t43 & t45);
    t58 = (t49 & t51);
    t52 = (~(t57));
    t53 = (~(t58));
    t54 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t54 & t52);
    t55 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t55 & t53);
    t56 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t56 & t52);
    t59 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t59 & t53);
    goto LAB29;

LAB30:    t73 = *((unsigned int *)t67);
    t74 = *((unsigned int *)t48);
    *((unsigned int *)t67) = (t73 | t74);
    t65 = (t33 + 4);
    t66 = (t39 + 4);
    t75 = *((unsigned int *)t65);
    t76 = (~(t75));
    t77 = *((unsigned int *)t33);
    t85 = (t77 & t76);
    t78 = *((unsigned int *)t66);
    t79 = (~(t78));
    t82 = *((unsigned int *)t39);
    t89 = (t82 & t79);
    t83 = (~(t85));
    t84 = (~(t89));
    t86 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t86 & t83);
    t87 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t87 & t84);
    goto LAB32;

}


extern void work_m_00000000003871992087_0017209728_init()
{
	static char *pe[] = {(void *)Always_13_0};
	xsi_register_didat("work_m_00000000003871992087_0017209728", "isim/D_FlipFlop_isim_beh.exe.sim/work/m_00000000003871992087_0017209728.didat");
	xsi_register_executes(pe);
}
