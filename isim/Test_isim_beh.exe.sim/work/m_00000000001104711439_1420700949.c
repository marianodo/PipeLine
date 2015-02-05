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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Nano/Desktop/PipeLine/ShiftIF.v";
static int ng1[] = {1, 0};
static int ng2[] = {31, 0};
static int ng3[] = {28, 0};
static int ng4[] = {27, 0};
static int ng5[] = {2, 0};



static void Always_28_0(char *t0)
{
    char t6[8];
    char t14[8];
    char t15[8];
    char t16[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned int t22;
    int t23;
    char *t24;
    unsigned int t25;
    int t26;
    int t27;
    char *t28;
    unsigned int t29;
    int t30;
    int t31;
    unsigned int t32;
    int t33;
    unsigned int t34;
    unsigned int t35;
    int t36;
    int t37;

LAB0:    t1 = (t0 + 1628U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 1968);
    *((int *)t2) = 1;
    t3 = (t0 + 1656);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(29, ng0);

LAB5:    xsi_set_current_line(30, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_multiply(t6, 32, t5, 26, t4, 32);
    t7 = (t0 + 1104);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 26);
    xsi_set_current_line(31, ng0);
    t2 = (t0 + 692U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 28);
    *((unsigned int *)t6) = t9;
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 28);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t12 & 15U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 15U);
    t5 = (t0 + 1012);
    t7 = (t0 + 1012);
    t17 = (t7 + 44U);
    t18 = *((char **)t17);
    t19 = ((char*)((ng2)));
    t20 = ((char*)((ng3)));
    xsi_vlog_convert_partindices(t14, t15, t16, ((int*)(t18)), 2, t19, 32, 1, t20, 32, 1);
    t21 = (t14 + 4);
    t22 = *((unsigned int *)t21);
    t23 = (!(t22));
    t24 = (t15 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (!(t25));
    t27 = (t23 && t26);
    t28 = (t16 + 4);
    t29 = *((unsigned int *)t28);
    t30 = (!(t29));
    t31 = (t27 && t30);
    if (t31 == 1)
        goto LAB6;

LAB7:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 1012);
    t7 = (t0 + 1012);
    t17 = (t7 + 44U);
    t18 = *((char **)t17);
    t19 = ((char*)((ng4)));
    t20 = ((char*)((ng5)));
    xsi_vlog_convert_partindices(t6, t14, t15, ((int*)(t18)), 2, t19, 32, 1, t20, 32, 1);
    t21 = (t6 + 4);
    t8 = *((unsigned int *)t21);
    t23 = (!(t8));
    t24 = (t14 + 4);
    t9 = *((unsigned int *)t24);
    t26 = (!(t9));
    t27 = (t23 && t26);
    t28 = (t15 + 4);
    t10 = *((unsigned int *)t28);
    t30 = (!(t10));
    t31 = (t27 && t30);
    if (t31 == 1)
        goto LAB8;

LAB9:    goto LAB2;

LAB6:    t32 = *((unsigned int *)t16);
    t33 = (t32 + 0);
    t34 = *((unsigned int *)t14);
    t35 = *((unsigned int *)t15);
    t36 = (t34 - t35);
    t37 = (t36 + 1);
    xsi_vlogvar_assign_value(t5, t6, t33, *((unsigned int *)t15), t37);
    goto LAB7;

LAB8:    t11 = *((unsigned int *)t15);
    t33 = (t11 + 0);
    t12 = *((unsigned int *)t6);
    t13 = *((unsigned int *)t14);
    t36 = (t12 - t13);
    t37 = (t36 + 1);
    xsi_vlogvar_assign_value(t5, t4, t33, *((unsigned int *)t14), t37);
    goto LAB9;

}

static void Cont_35_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 1772U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1012);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2020);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 1976);
    *((int *)t10) = 1;

LAB1:    return;
}


extern void work_m_00000000001104711439_1420700949_init()
{
	static char *pe[] = {(void *)Always_28_0,(void *)Cont_35_1};
	xsi_register_didat("work_m_00000000001104711439_1420700949", "isim/Test_isim_beh.exe.sim/work/m_00000000001104711439_1420700949.didat");
	xsi_register_executes(pe);
}
