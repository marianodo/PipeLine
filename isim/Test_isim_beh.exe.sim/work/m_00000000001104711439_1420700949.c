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
static unsigned int ng6[] = {0U, 0U};
static int ng7[] = {0, 0};



static void Always_28_0(char *t0)
{
    char t6[8];
    char t8[8];
    char t9[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    int t14;
    char *t15;
    unsigned int t16;
    int t17;
    int t18;
    char *t19;
    unsigned int t20;
    int t21;
    int t22;
    unsigned int t23;
    int t24;
    unsigned int t25;
    unsigned int t26;
    int t27;
    int t28;
    char *t29;
    char *t30;

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
    t2 = (t0 + 1012);
    t4 = (t0 + 1012);
    t5 = (t4 + 44U);
    t7 = *((char **)t5);
    t10 = ((char*)((ng2)));
    t11 = ((char*)((ng3)));
    xsi_vlog_convert_partindices(t6, t8, t9, ((int*)(t7)), 2, t10, 32, 1, t11, 32, 1);
    t12 = (t6 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t8 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    t19 = (t9 + 4);
    t20 = *((unsigned int *)t19);
    t21 = (!(t20));
    t22 = (t18 && t21);
    if (t22 == 1)
        goto LAB6;

LAB7:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 1012);
    t7 = (t0 + 1012);
    t10 = (t7 + 44U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng4)));
    t15 = ((char*)((ng5)));
    xsi_vlog_convert_partindices(t6, t8, t9, ((int*)(t11)), 2, t12, 32, 1, t15, 32, 1);
    t19 = (t6 + 4);
    t13 = *((unsigned int *)t19);
    t14 = (!(t13));
    t29 = (t8 + 4);
    t16 = *((unsigned int *)t29);
    t17 = (!(t16));
    t18 = (t14 && t17);
    t30 = (t9 + 4);
    t20 = *((unsigned int *)t30);
    t21 = (!(t20));
    t22 = (t18 && t21);
    if (t22 == 1)
        goto LAB8;

LAB9:    xsi_set_current_line(33, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1012);
    t4 = (t0 + 1012);
    t5 = (t4 + 44U);
    t7 = *((char **)t5);
    t10 = ((char*)((ng1)));
    t11 = ((char*)((ng7)));
    xsi_vlog_convert_partindices(t6, t8, t9, ((int*)(t7)), 2, t10, 32, 1, t11, 32, 1);
    t12 = (t6 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (!(t13));
    t15 = (t8 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t14 && t17);
    t19 = (t9 + 4);
    t20 = *((unsigned int *)t19);
    t21 = (!(t20));
    t22 = (t18 && t21);
    if (t22 == 1)
        goto LAB10;

LAB11:    goto LAB2;

LAB6:    t23 = *((unsigned int *)t9);
    t24 = (t23 + 0);
    t25 = *((unsigned int *)t6);
    t26 = *((unsigned int *)t8);
    t27 = (t25 - t26);
    t28 = (t27 + 1);
    xsi_vlogvar_assign_value(t2, t3, t24, *((unsigned int *)t8), t28);
    goto LAB7;

LAB8:    t23 = *((unsigned int *)t9);
    t24 = (t23 + 0);
    t25 = *((unsigned int *)t6);
    t26 = *((unsigned int *)t8);
    t27 = (t25 - t26);
    t28 = (t27 + 1);
    xsi_vlogvar_assign_value(t5, t4, t24, *((unsigned int *)t8), t28);
    goto LAB9;

LAB10:    t23 = *((unsigned int *)t9);
    t24 = (t23 + 0);
    t25 = *((unsigned int *)t6);
    t26 = *((unsigned int *)t8);
    t27 = (t25 - t26);
    t28 = (t27 + 1);
    xsi_vlogvar_assign_value(t3, t2, t24, *((unsigned int *)t8), t28);
    goto LAB11;

}

static void Cont_36_1(char *t0)
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

LAB2:    xsi_set_current_line(36, ng0);
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
	static char *pe[] = {(void *)Always_28_0,(void *)Cont_36_1};
	xsi_register_didat("work_m_00000000001104711439_1420700949", "isim/Test_isim_beh.exe.sim/work/m_00000000001104711439_1420700949.didat");
	xsi_register_executes(pe);
}
