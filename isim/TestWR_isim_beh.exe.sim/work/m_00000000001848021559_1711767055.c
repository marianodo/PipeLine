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
static const char *ng0 = "C:/Users/Nano/Desktop/PipeLine/AluEX.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static int ng3[] = {2, 0};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {3U, 0U};
static unsigned int ng6[] = {6U, 0U};
static unsigned int ng7[] = {7U, 0U};
static unsigned int ng8[] = {33U, 0U};
static unsigned int ng9[] = {35U, 0U};
static unsigned int ng10[] = {36U, 0U};
static unsigned int ng11[] = {37U, 0U};
static unsigned int ng12[] = {38U, 0U};
static unsigned int ng13[] = {42U, 0U};
static int ng14[] = {1, 0};
static unsigned int ng15[] = {4294967295U, 0U};



static void Initial_29_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(30, ng0);

LAB2:    xsi_set_current_line(31, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1196);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(32, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1104);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);

LAB1:    return;
}

static void Always_35_1(char *t0)
{
    char t11[8];
    char t12[8];
    char t43[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    int t32;
    int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;

LAB0:    t1 = (t0 + 1864U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 2204);
    *((int *)t2) = 1;
    t3 = (t0 + 1892);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(36, ng0);

LAB5:    xsi_set_current_line(37, ng0);
    t4 = (t0 + 784U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t4, 6);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 6, t2, 6);
    if (t6 == 1)
        goto LAB27;

LAB28:
LAB30:
LAB29:    xsi_set_current_line(152, ng0);
    t2 = ((char*)((ng15)));
    t3 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);

LAB31:    goto LAB2;

LAB7:    xsi_set_current_line(44, ng0);
    t7 = (t0 + 692U);
    t8 = *((char **)t7);
    t7 = ((char*)((ng3)));
    t9 = (t0 + 876U);
    t10 = *((char **)t9);
    memset(t11, 0, 8);
    xsi_vlog_unsigned_power(t11, 32, t7, 32, t10, 5, 0);
    memset(t12, 0, 8);
    xsi_vlog_unsigned_multiply(t12, 32, t8, 32, t11, 32);
    t9 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t9, t12, 0, 0, 32, 0LL);
    goto LAB31;

LAB9:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 692U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng3)));
    t7 = (t0 + 876U);
    t8 = *((char **)t7);
    memset(t11, 0, 8);
    xsi_vlog_unsigned_power(t11, 32, t3, 32, t8, 5, 0);
    memset(t12, 0, 8);
    xsi_vlog_unsigned_divide(t12, 32, t4, 32, t11, 32);
    t7 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t7, t12, 0, 0, 32, 0LL);
    goto LAB31;

LAB11:    xsi_set_current_line(52, ng0);
    t3 = (t0 + 692U);
    t4 = *((char **)t3);
    t3 = (t0 + 876U);
    t7 = *((char **)t3);
    memset(t12, 0, 8);
    xsi_vlog_signed_arith_rshift(t12, 32, t4, 32, t7, 5);
    t3 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t3, t12, 0, 0, 32, 0LL);
    goto LAB31;

LAB13:    xsi_set_current_line(56, ng0);
    t3 = (t0 + 692U);
    t4 = *((char **)t3);
    t3 = (t0 + 600U);
    t7 = *((char **)t3);
    memset(t11, 0, 8);
    xsi_vlog_unsigned_rshift(t11, 32, t4, 32, t7, 32);
    t3 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t3, t11, 0, 0, 32, 0LL);
    goto LAB31;

LAB15:    xsi_set_current_line(60, ng0);
    t3 = (t0 + 692U);
    t4 = *((char **)t3);
    t3 = (t0 + 600U);
    t7 = *((char **)t3);
    memset(t12, 0, 8);
    xsi_vlog_signed_arith_rshift(t12, 32, t4, 32, t7, 32);
    t3 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t3, t12, 0, 0, 32, 0LL);
    goto LAB31;

LAB17:    xsi_set_current_line(64, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    t3 = (t0 + 692U);
    t7 = *((char **)t3);
    memset(t11, 0, 8);
    xsi_vlog_unsigned_add(t11, 32, t4, 32, t7, 32);
    t3 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t3, t11, 0, 0, 32, 0LL);
    goto LAB31;

LAB19:    xsi_set_current_line(68, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    t3 = (t0 + 692U);
    t7 = *((char **)t3);
    memset(t11, 0, 8);
    xsi_vlog_unsigned_minus(t11, 32, t4, 32, t7, 32);
    t3 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t3, t11, 0, 0, 32, 0LL);
    goto LAB31;

LAB21:    xsi_set_current_line(72, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    t3 = (t0 + 692U);
    t7 = *((char **)t3);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t7);
    t15 = (t13 & t14);
    *((unsigned int *)t11) = t15;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t9 = (t11 + 4);
    t16 = *((unsigned int *)t3);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    *((unsigned int *)t9) = t18;
    t19 = *((unsigned int *)t9);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB32;

LAB33:
LAB34:    t40 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t40, t11, 0, 0, 32, 0LL);
    goto LAB31;

LAB23:    xsi_set_current_line(76, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    t3 = (t0 + 692U);
    t7 = *((char **)t3);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t7);
    t15 = (t13 | t14);
    *((unsigned int *)t11) = t15;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t9 = (t11 + 4);
    t16 = *((unsigned int *)t3);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    *((unsigned int *)t9) = t18;
    t19 = *((unsigned int *)t9);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB35;

LAB36:
LAB37:    t40 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t40, t11, 0, 0, 32, 0LL);
    goto LAB31;

LAB25:    xsi_set_current_line(80, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    t3 = (t0 + 692U);
    t7 = *((char **)t3);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t7);
    t15 = (t13 ^ t14);
    *((unsigned int *)t11) = t15;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t9 = (t11 + 4);
    t16 = *((unsigned int *)t3);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    *((unsigned int *)t9) = t18;
    t19 = *((unsigned int *)t9);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB38;

LAB39:
LAB40:    t10 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t10, t11, 0, 0, 32, 0LL);
    goto LAB31;

LAB27:    xsi_set_current_line(84, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    t3 = (t0 + 692U);
    t7 = *((char **)t3);
    memset(t43, 0, 8);
    xsi_vlog_signed_less(t43, 32, t4, 32, t7, 32);
    memset(t12, 0, 8);
    t3 = (t43 + 4);
    t13 = *((unsigned int *)t3);
    t14 = (~(t13));
    t15 = *((unsigned int *)t43);
    t16 = (t15 & t14);
    t17 = (t16 & 1U);
    if (t17 != 0)
        goto LAB41;

LAB42:    if (*((unsigned int *)t3) != 0)
        goto LAB43;

LAB44:    t9 = (t12 + 4);
    t18 = *((unsigned int *)t12);
    t19 = *((unsigned int *)t9);
    t20 = (t18 || t19);
    if (t20 > 0)
        goto LAB45;

LAB46:    t21 = *((unsigned int *)t12);
    t22 = (~(t21));
    t24 = *((unsigned int *)t9);
    t25 = (t22 || t24);
    if (t25 > 0)
        goto LAB47;

LAB48:    if (*((unsigned int *)t9) > 0)
        goto LAB49;

LAB50:    if (*((unsigned int *)t12) > 0)
        goto LAB51;

LAB52:    memcpy(t11, t23, 8);

LAB53:    t40 = (t0 + 1196);
    xsi_vlogvar_wait_assign_value(t40, t11, 0, 0, 32, 0LL);
    goto LAB31;

LAB32:    t21 = *((unsigned int *)t11);
    t22 = *((unsigned int *)t9);
    *((unsigned int *)t11) = (t21 | t22);
    t10 = (t4 + 4);
    t23 = (t7 + 4);
    t24 = *((unsigned int *)t4);
    t25 = (~(t24));
    t26 = *((unsigned int *)t10);
    t27 = (~(t26));
    t28 = *((unsigned int *)t7);
    t29 = (~(t28));
    t30 = *((unsigned int *)t23);
    t31 = (~(t30));
    t32 = (t25 & t27);
    t33 = (t29 & t31);
    t34 = (~(t32));
    t35 = (~(t33));
    t36 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t36 & t34);
    t37 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t37 & t35);
    t38 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t38 & t34);
    t39 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t39 & t35);
    goto LAB34;

LAB35:    t21 = *((unsigned int *)t11);
    t22 = *((unsigned int *)t9);
    *((unsigned int *)t11) = (t21 | t22);
    t10 = (t4 + 4);
    t23 = (t7 + 4);
    t24 = *((unsigned int *)t10);
    t25 = (~(t24));
    t26 = *((unsigned int *)t4);
    t32 = (t26 & t25);
    t27 = *((unsigned int *)t23);
    t28 = (~(t27));
    t29 = *((unsigned int *)t7);
    t33 = (t29 & t28);
    t30 = (~(t32));
    t31 = (~(t33));
    t34 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t34 & t30);
    t35 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t35 & t31);
    goto LAB37;

LAB38:    t21 = *((unsigned int *)t11);
    t22 = *((unsigned int *)t9);
    *((unsigned int *)t11) = (t21 | t22);
    goto LAB40;

LAB41:    *((unsigned int *)t12) = 1;
    goto LAB44;

LAB43:    t8 = (t12 + 4);
    *((unsigned int *)t12) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB44;

LAB45:    t10 = ((char*)((ng14)));
    goto LAB46;

LAB47:    t23 = ((char*)((ng1)));
    goto LAB48;

LAB49:    xsi_vlog_unsigned_bit_combine(t11, 32, t10, 32, t23, 32);
    goto LAB53;

LAB51:    memcpy(t11, t10, 8);
    goto LAB53;

}

static void Always_156_2(char *t0)
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
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;

LAB0:    t1 = (t0 + 2008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(156, ng0);
    t2 = (t0 + 2212);
    *((int *)t2) = 1;
    t3 = (t0 + 2036);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(157, ng0);

LAB5:    xsi_set_current_line(158, ng0);
    t4 = (t0 + 1196);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    t9 = (t6 + 4);
    t10 = (t7 + 4);
    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t9);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t10);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB9;

LAB6:    if (t20 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t8) = 1;

LAB9:    t24 = (t8 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t8);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(161, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB12:    goto LAB2;

LAB8:    t23 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(159, ng0);
    t30 = ((char*)((ng14)));
    t31 = (t0 + 1104);
    xsi_vlogvar_assign_value(t31, t30, 0, 0, 1);
    goto LAB12;

}


extern void work_m_00000000001848021559_1711767055_init()
{
	static char *pe[] = {(void *)Initial_29_0,(void *)Always_35_1,(void *)Always_156_2};
	xsi_register_didat("work_m_00000000001848021559_1711767055", "isim/TestWR_isim_beh.exe.sim/work/m_00000000001848021559_1711767055.didat");
	xsi_register_executes(pe);
}
