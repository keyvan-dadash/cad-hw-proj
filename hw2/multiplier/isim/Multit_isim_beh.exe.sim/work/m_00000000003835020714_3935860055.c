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
static const char *ng0 = "T:/fucking uni/CAD/hw2/multiplier/Multi88.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static int ng3[] = {1, 0};
static int ng4[] = {2, 0};
static int ng5[] = {3, 0};



static void Cont_29_0(char *t0)
{
    char t3[8];
    char t5[8];
    char t13[8];
    char t17[8];
    char t25[8];
    char t26[8];
    char t30[8];
    char t38[8];
    char t39[8];
    char t43[8];
    char t50[8];
    char *t1;
    char *t2;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t14;
    char *t15;
    char *t16;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t27;
    char *t28;
    char *t29;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t40;
    char *t41;
    char *t42;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;

LAB0:    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 1528U);
    t4 = *((char **)t2);
    t2 = (t0 + 1488U);
    t6 = (t2 + 72U);
    t7 = *((char **)t6);
    t8 = (t0 + 1488U);
    t9 = (t8 + 48U);
    t10 = *((char **)t9);
    t11 = ((char*)((ng1)));
    xsi_vlog_generic_get_array_select_value(t5, 8, t4, t7, t10, 2, 1, t11, 32, 1);
    t12 = ((char*)((ng2)));
    xsi_vlogtype_concat(t3, 16, 16, 2U, t12, 8, t5, 8);
    t14 = ((char*)((ng2)));
    t15 = (t0 + 1528U);
    t16 = *((char **)t15);
    t15 = (t0 + 1488U);
    t18 = (t15 + 72U);
    t19 = *((char **)t18);
    t20 = (t0 + 1488U);
    t21 = (t20 + 48U);
    t22 = *((char **)t21);
    t23 = ((char*)((ng3)));
    xsi_vlog_generic_get_array_select_value(t17, 8, t16, t19, t22, 2, 1, t23, 32, 1);
    t24 = ((char*)((ng2)));
    xsi_vlogtype_concat(t13, 16, 16, 3U, t24, 4, t17, 8, t14, 4);
    memset(t25, 0, 8);
    xsi_vlog_unsigned_add(t25, 16, t3, 16, t13, 16);
    t27 = ((char*)((ng2)));
    t28 = (t0 + 1528U);
    t29 = *((char **)t28);
    t28 = (t0 + 1488U);
    t31 = (t28 + 72U);
    t32 = *((char **)t31);
    t33 = (t0 + 1488U);
    t34 = (t33 + 48U);
    t35 = *((char **)t34);
    t36 = ((char*)((ng4)));
    xsi_vlog_generic_get_array_select_value(t30, 8, t29, t32, t35, 2, 1, t36, 32, 1);
    t37 = ((char*)((ng2)));
    xsi_vlogtype_concat(t26, 16, 16, 3U, t37, 4, t30, 8, t27, 4);
    memset(t38, 0, 8);
    xsi_vlog_unsigned_add(t38, 16, t25, 16, t26, 16);
    t40 = ((char*)((ng2)));
    t41 = (t0 + 1528U);
    t42 = *((char **)t41);
    t41 = (t0 + 1488U);
    t44 = (t41 + 72U);
    t45 = *((char **)t44);
    t46 = (t0 + 1488U);
    t47 = (t46 + 48U);
    t48 = *((char **)t47);
    t49 = ((char*)((ng5)));
    xsi_vlog_generic_get_array_select_value(t43, 8, t42, t45, t48, 2, 1, t49, 32, 1);
    xsi_vlogtype_concat(t39, 16, 16, 2U, t43, 8, t40, 8);
    memset(t50, 0, 8);
    xsi_vlog_unsigned_add(t50, 16, t38, 16, t39, 16);
    t51 = (t0 + 3088);
    t52 = (t51 + 56U);
    t53 = *((char **)t52);
    t54 = (t53 + 56U);
    t55 = *((char **)t54);
    memset(t55, 0, 8);
    t56 = 65535U;
    t57 = t56;
    t58 = (t50 + 4);
    t59 = *((unsigned int *)t50);
    t56 = (t56 & t59);
    t60 = *((unsigned int *)t58);
    t57 = (t57 & t60);
    t61 = (t55 + 4);
    t62 = *((unsigned int *)t55);
    *((unsigned int *)t55) = (t62 | t56);
    t63 = *((unsigned int *)t61);
    *((unsigned int *)t61) = (t63 | t57);
    xsi_driver_vfirst_trans(t51, 0, 15);
    t64 = (t0 + 3008);
    *((int *)t64) = 1;

LAB1:    return;
}


extern void work_m_00000000003835020714_3935860055_init()
{
	static char *pe[] = {(void *)Cont_29_0};
	xsi_register_didat("work_m_00000000003835020714_3935860055", "isim/Multit_isim_beh.exe.sim/work/m_00000000003835020714_3935860055.didat");
	xsi_register_executes(pe);
}
