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
static const char *ng0 = "C:/Users/Nano/Desktop/PipeLine/Fifo.v";
static int ng1[] = {0, 0};
static int ng2[] = {4, 0};
static int ng3[] = {1, 0};
static int ng4[] = {2, 0};
static int ng5[] = {3, 0};



static void Initial_31_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(32, ng0);

LAB2:    xsi_set_current_line(33, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1288);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 3);
    xsi_set_current_line(34, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1196);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);

LAB1:    return;
}

static void Always_37_1(char *t0)
{
    char t8[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    int t20;
    unsigned int t21;

LAB0:    t1 = (t0 + 1956U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 2440);
    *((int *)t2) = 1;
    t3 = (t0 + 1984);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(38, ng0);

LAB5:    xsi_set_current_line(39, ng0);
    t4 = (t0 + 1288);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng2)));
    memset(t8, 0, 8);
    t9 = (t6 + 4);
    if (*((unsigned int *)t9) != 0)
        goto LAB7;

LAB6:    t10 = (t7 + 4);
    if (*((unsigned int *)t10) != 0)
        goto LAB7;

LAB10:    if (*((unsigned int *)t6) < *((unsigned int *)t7))
        goto LAB8;

LAB9:    t12 = (t8 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (~(t13));
    t15 = *((unsigned int *)t8);
    t16 = (t15 & t14);
    t17 = (t16 != 0);
    if (t17 > 0)
        goto LAB11;

LAB12:    xsi_set_current_line(56, ng0);

LAB25:    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB13:    goto LAB2;

LAB7:    t11 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB9;

LAB8:    *((unsigned int *)t8) = 1;
    goto LAB9;

LAB11:    xsi_set_current_line(40, ng0);

LAB14:    xsi_set_current_line(41, ng0);
    t18 = ((char*)((ng3)));
    t19 = (t0 + 1196);
    xsi_vlogvar_assign_value(t19, t18, 0, 0, 1);
    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1288);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);

LAB15:    t5 = ((char*)((ng1)));
    t20 = xsi_vlog_unsigned_case_compare(t4, 3, t5, 32);
    if (t20 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng3)));
    t20 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 32);
    if (t20 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng4)));
    t20 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 32);
    if (t20 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng5)));
    t20 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 32);
    if (t20 == 1)
        goto LAB22;

LAB23:
LAB24:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1288);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng3)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t5, 3, t6, 32);
    t7 = (t0 + 1288);
    xsi_vlogvar_assign_value(t7, t8, 0, 0, 3);
    goto LAB13;

LAB16:    xsi_set_current_line(45, ng0);
    t6 = (t0 + 600U);
    t7 = *((char **)t6);
    memset(t8, 0, 8);
    t6 = (t8 + 4);
    t9 = (t7 + 4);
    t13 = *((unsigned int *)t7);
    t14 = (t13 >> 24);
    *((unsigned int *)t8) = t14;
    t15 = *((unsigned int *)t9);
    t16 = (t15 >> 24);
    *((unsigned int *)t6) = t16;
    t17 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t17 & 255U);
    t21 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t21 & 255U);
    t10 = (t0 + 1104);
    xsi_vlogvar_assign_value(t10, t8, 0, 0, 8);
    goto LAB24;

LAB18:    xsi_set_current_line(47, ng0);
    t3 = (t0 + 600U);
    t5 = *((char **)t3);
    memset(t8, 0, 8);
    t3 = (t8 + 4);
    t6 = (t5 + 4);
    t13 = *((unsigned int *)t5);
    t14 = (t13 >> 16);
    *((unsigned int *)t8) = t14;
    t15 = *((unsigned int *)t6);
    t16 = (t15 >> 16);
    *((unsigned int *)t3) = t16;
    t17 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t17 & 255U);
    t21 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t21 & 255U);
    t7 = (t0 + 1104);
    xsi_vlogvar_assign_value(t7, t8, 0, 0, 8);
    goto LAB24;

LAB20:    xsi_set_current_line(49, ng0);
    t3 = (t0 + 600U);
    t5 = *((char **)t3);
    memset(t8, 0, 8);
    t3 = (t8 + 4);
    t6 = (t5 + 4);
    t13 = *((unsigned int *)t5);
    t14 = (t13 >> 8);
    *((unsigned int *)t8) = t14;
    t15 = *((unsigned int *)t6);
    t16 = (t15 >> 8);
    *((unsigned int *)t3) = t16;
    t17 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t17 & 255U);
    t21 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t21 & 255U);
    t7 = (t0 + 1104);
    xsi_vlogvar_assign_value(t7, t8, 0, 0, 8);
    goto LAB24;

LAB22:    xsi_set_current_line(51, ng0);
    t3 = (t0 + 600U);
    t5 = *((char **)t3);
    memset(t8, 0, 8);
    t3 = (t8 + 4);
    t6 = (t5 + 4);
    t13 = *((unsigned int *)t5);
    t14 = (t13 >> 0);
    *((unsigned int *)t8) = t14;
    t15 = *((unsigned int *)t6);
    t16 = (t15 >> 0);
    *((unsigned int *)t3) = t16;
    t17 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t17 & 255U);
    t21 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t21 & 255U);
    t7 = (t0 + 1104);
    xsi_vlogvar_assign_value(t7, t8, 0, 0, 8);
    goto LAB24;

}

static void Cont_64_2(char *t0)
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
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 2100U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2500);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 255U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 7);
    t18 = (t0 + 2448);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_65_3(char *t0)
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
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 2244U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 1196);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2536);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 0);
    t18 = (t0 + 2456);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000003008683432_2561790193_init()
{
	static char *pe[] = {(void *)Initial_31_0,(void *)Always_37_1,(void *)Cont_64_2,(void *)Cont_65_3};
	xsi_register_didat("work_m_00000000003008683432_2561790193", "isim/Test_isim_beh.exe.sim/work/m_00000000003008683432_2561790193.didat");
	xsi_register_executes(pe);
}
