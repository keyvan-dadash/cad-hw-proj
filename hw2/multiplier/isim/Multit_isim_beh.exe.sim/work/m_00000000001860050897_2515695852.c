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
static const char *ng0 = "T:/fucking uni/CAD/hw2/multiplier/Multit.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};



static void Initial_47_0(char *t0)
{
    char t8[8];
    char t9[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;

LAB0:    t1 = (t0 + 2984U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(47, ng0);

LAB4:    xsi_set_current_line(48, ng0);
    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1904);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB5:    t2 = (t0 + 1904);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    t6 = (t0 + 472);
    t7 = *((char **)t6);
    memset(t8, 0, 8);
    xsi_vlog_signed_lshift(t8, 32, t5, 32, t7, 32);
    memset(t9, 0, 8);
    xsi_vlog_signed_less(t9, 32, t4, 32, t8, 32);
    t6 = (t9 + 4);
    t10 = *((unsigned int *)t6);
    t11 = (~(t10));
    t12 = *((unsigned int *)t9);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2792);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB14;

LAB1:    return;
LAB6:    xsi_set_current_line(48, ng0);

LAB8:    xsi_set_current_line(49, ng0);
    xsi_set_current_line(49, ng0);
    t15 = ((char*)((ng1)));
    t16 = (t0 + 2064);
    xsi_vlogvar_assign_value(t16, t15, 0, 0, 32);

LAB9:    t2 = (t0 + 2064);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    t6 = (t0 + 472);
    t7 = *((char **)t6);
    memset(t8, 0, 8);
    xsi_vlog_signed_lshift(t8, 32, t5, 32, t7, 32);
    memset(t9, 0, 8);
    xsi_vlog_signed_less(t9, 32, t4, 32, t8, 32);
    t6 = (t9 + 4);
    t10 = *((unsigned int *)t6);
    t11 = (~(t10));
    t12 = *((unsigned int *)t9);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1904);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t8, 0, 8);
    xsi_vlog_signed_add(t8, 32, t4, 32, t5, 32);
    t6 = (t0 + 1904);
    xsi_vlogvar_assign_value(t6, t8, 0, 0, 32);
    goto LAB5;

LAB10:    xsi_set_current_line(49, ng0);

LAB12:    xsi_set_current_line(50, ng0);
    t15 = (t0 + 2792);
    xsi_process_wait(t15, 1000LL);
    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB13:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1904);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1584);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2064);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1744);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 2064);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t8, 0, 8);
    xsi_vlog_signed_add(t8, 32, t4, 32, t5, 32);
    t6 = (t0 + 2064);
    xsi_vlogvar_assign_value(t6, t8, 0, 0, 32);
    goto LAB9;

LAB14:    xsi_set_current_line(59, ng0);
    xsi_vlog_stop(1);
    goto LAB1;

}


extern void work_m_00000000001860050897_2515695852_init()
{
	static char *pe[] = {(void *)Initial_47_0};
	xsi_register_didat("work_m_00000000001860050897_2515695852", "isim/Multit_isim_beh.exe.sim/work/m_00000000001860050897_2515695852.didat");
	xsi_register_executes(pe);
}
