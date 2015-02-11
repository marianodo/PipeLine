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
static const char *ng0 = "C:/Users/Leo/Desktop/PipeLine/UartTx.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static int ng3[] = {0, 0};
static int ng4[] = {15, 0};
static unsigned int ng5[] = {2U, 0U};
static int ng6[] = {1, 0};
static unsigned int ng7[] = {3U, 0U};



static void Always_32_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 3304U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 3788);
    *((int *)t2) = 1;
    t3 = (t0 + 3332);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(33, ng0);

LAB5:    xsi_set_current_line(34, ng0);
    t4 = (t0 + 1860);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);
    t7 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 2, 0LL);
    xsi_set_current_line(35, ng0);
    t2 = (t0 + 2044);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 1952);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(36, ng0);
    t2 = (t0 + 2228);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2136);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 3, 0LL);
    xsi_set_current_line(37, ng0);
    t2 = (t0 + 2412);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2320);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 8, 0LL);
    xsi_set_current_line(38, ng0);
    t2 = (t0 + 2596);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2504);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);
    goto LAB2;

}

static void Always_42_1(char *t0)
{
    char t15[8];
    char t39[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
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
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    char *t40;

LAB0:    t1 = (t0 + 3448U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 3796);
    *((int *)t2) = 1;
    t3 = (t0 + 3476);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(43, ng0);

LAB5:    xsi_set_current_line(44, ng0);
    t4 = (t0 + 1768);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);
    t7 = (t0 + 1860);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 2);
    xsi_set_current_line(45, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1676);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1952);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2044);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 4);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 2136);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2228);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 3);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 2320);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2412);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 2504);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2596);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);

LAB6:    t5 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 2, t5, 2);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng7)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t8 == 1)
        goto LAB13;

LAB14:
LAB15:    goto LAB2;

LAB7:    xsi_set_current_line(53, ng0);

LAB16:    xsi_set_current_line(54, ng0);
    t6 = ((char*)((ng2)));
    t7 = (t0 + 2596);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 1);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1172U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB17;

LAB18:
LAB19:    goto LAB15;

LAB9:    xsi_set_current_line(64, ng0);

LAB21:    xsi_set_current_line(65, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 2596);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1264U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB22;

LAB23:
LAB24:    goto LAB15;

LAB11:    xsi_set_current_line(82, ng0);

LAB34:    xsi_set_current_line(83, ng0);
    t3 = (t0 + 2320);
    t5 = (t3 + 36U);
    t6 = *((char **)t5);
    memset(t15, 0, 8);
    t7 = (t15 + 4);
    t14 = (t6 + 4);
    t9 = *((unsigned int *)t6);
    t10 = (t9 >> 0);
    t11 = (t10 & 1);
    *((unsigned int *)t15) = t11;
    t12 = *((unsigned int *)t14);
    t13 = (t12 >> 0);
    t18 = (t13 & 1);
    *((unsigned int *)t7) = t18;
    t16 = (t0 + 2596);
    xsi_vlogvar_assign_value(t16, t15, 0, 0, 1);
    xsi_set_current_line(84, ng0);
    t2 = (t0 + 1264U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB35;

LAB36:
LAB37:    goto LAB15;

LAB13:    xsi_set_current_line(106, ng0);

LAB55:    xsi_set_current_line(107, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 2596);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 1264U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB56;

LAB57:
LAB58:    goto LAB15;

LAB17:    xsi_set_current_line(56, ng0);

LAB20:    xsi_set_current_line(57, ng0);
    t5 = ((char*)((ng2)));
    t6 = (t0 + 1860);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 2);
    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2044);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1356U);
    t3 = *((char **)t2);
    t2 = (t0 + 2412);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 8);
    goto LAB19;

LAB22:    xsi_set_current_line(67, ng0);
    t5 = (t0 + 1952);
    t6 = (t5 + 36U);
    t7 = *((char **)t6);
    t14 = ((char*)((ng4)));
    memset(t15, 0, 8);
    t16 = (t7 + 4);
    t17 = (t14 + 4);
    t18 = *((unsigned int *)t7);
    t19 = *((unsigned int *)t14);
    t20 = (t18 ^ t19);
    t21 = *((unsigned int *)t16);
    t22 = *((unsigned int *)t17);
    t23 = (t21 ^ t22);
    t24 = (t20 | t23);
    t25 = *((unsigned int *)t16);
    t26 = *((unsigned int *)t17);
    t27 = (t25 | t26);
    t28 = (~(t27));
    t29 = (t24 & t28);
    if (t29 != 0)
        goto LAB28;

LAB25:    if (t27 != 0)
        goto LAB27;

LAB26:    *((unsigned int *)t15) = 1;

LAB28:    t31 = (t15 + 4);
    t32 = *((unsigned int *)t31);
    t33 = (~(t32));
    t34 = *((unsigned int *)t15);
    t35 = (t34 & t33);
    t36 = (t35 != 0);
    if (t36 > 0)
        goto LAB29;

LAB30:    xsi_set_current_line(75, ng0);

LAB33:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 1952);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng6)));
    memset(t15, 0, 8);
    xsi_vlog_unsigned_add(t15, 32, t5, 4, t6, 32);
    t7 = (t0 + 2688);
    xsi_vlogvar_assign_value(t7, t15, 0, 0, 5);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 2688);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    memset(t15, 0, 8);
    t6 = (t15 + 4);
    t7 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 0);
    *((unsigned int *)t15) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 0);
    *((unsigned int *)t6) = t12;
    t13 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t13 & 15U);
    t18 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t18 & 15U);
    t14 = (t0 + 2044);
    xsi_vlogvar_assign_value(t14, t15, 0, 0, 4);

LAB31:    goto LAB24;

LAB27:    t30 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB28;

LAB29:    xsi_set_current_line(68, ng0);

LAB32:    xsi_set_current_line(69, ng0);
    t37 = ((char*)((ng5)));
    t38 = (t0 + 1860);
    xsi_vlogvar_assign_value(t38, t37, 0, 0, 2);
    xsi_set_current_line(70, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2044);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2228);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    goto LAB31;

LAB35:    xsi_set_current_line(85, ng0);
    t5 = (t0 + 1952);
    t6 = (t5 + 36U);
    t7 = *((char **)t6);
    t14 = ((char*)((ng4)));
    memset(t15, 0, 8);
    t16 = (t7 + 4);
    t17 = (t14 + 4);
    t18 = *((unsigned int *)t7);
    t19 = *((unsigned int *)t14);
    t20 = (t18 ^ t19);
    t21 = *((unsigned int *)t16);
    t22 = *((unsigned int *)t17);
    t23 = (t21 ^ t22);
    t24 = (t20 | t23);
    t25 = *((unsigned int *)t16);
    t26 = *((unsigned int *)t17);
    t27 = (t25 | t26);
    t28 = (~(t27));
    t29 = (t24 & t28);
    if (t29 != 0)
        goto LAB41;

LAB38:    if (t27 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t15) = 1;

LAB41:    t31 = (t15 + 4);
    t32 = *((unsigned int *)t31);
    t33 = (~(t32));
    t34 = *((unsigned int *)t15);
    t35 = (t34 & t33);
    t36 = (t35 != 0);
    if (t36 > 0)
        goto LAB42;

LAB43:    xsi_set_current_line(99, ng0);

LAB54:    xsi_set_current_line(100, ng0);
    t2 = (t0 + 1952);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng6)));
    memset(t15, 0, 8);
    xsi_vlog_unsigned_add(t15, 32, t5, 4, t6, 32);
    t7 = (t0 + 2688);
    xsi_vlogvar_assign_value(t7, t15, 0, 0, 5);
    xsi_set_current_line(101, ng0);
    t2 = (t0 + 2688);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    memset(t15, 0, 8);
    t6 = (t15 + 4);
    t7 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 0);
    *((unsigned int *)t15) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 0);
    *((unsigned int *)t6) = t12;
    t13 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t13 & 15U);
    t18 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t18 & 15U);
    t14 = (t0 + 2044);
    xsi_vlogvar_assign_value(t14, t15, 0, 0, 4);

LAB44:    goto LAB37;

LAB40:    t30 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB41;

LAB42:    xsi_set_current_line(86, ng0);

LAB45:    xsi_set_current_line(87, ng0);
    t37 = ((char*)((ng3)));
    t38 = (t0 + 2044);
    xsi_vlogvar_assign_value(t38, t37, 0, 0, 4);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 2320);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng6)));
    memset(t15, 0, 8);
    xsi_vlog_unsigned_rshift(t15, 8, t5, 8, t6, 32);
    t7 = (t0 + 2412);
    xsi_vlogvar_assign_value(t7, t15, 0, 0, 8);
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 2136);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 264);
    t7 = *((char **)t6);
    t6 = ((char*)((ng6)));
    memset(t15, 0, 8);
    xsi_vlog_unsigned_minus(t15, 32, t7, 32, t6, 32);
    memset(t39, 0, 8);
    t14 = (t5 + 4);
    t16 = (t15 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t15);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t14);
    t13 = *((unsigned int *)t16);
    t18 = (t12 ^ t13);
    t19 = (t11 | t18);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t16);
    t22 = (t20 | t21);
    t23 = (~(t22));
    t24 = (t19 & t23);
    if (t24 != 0)
        goto LAB49;

LAB46:    if (t22 != 0)
        goto LAB48;

LAB47:    *((unsigned int *)t39) = 1;

LAB49:    t30 = (t39 + 4);
    t25 = *((unsigned int *)t30);
    t26 = (~(t25));
    t27 = *((unsigned int *)t39);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB50;

LAB51:    xsi_set_current_line(92, ng0);

LAB53:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 2136);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng6)));
    memset(t15, 0, 8);
    xsi_vlog_unsigned_add(t15, 32, t5, 3, t6, 32);
    t7 = (t0 + 2780);
    xsi_vlogvar_assign_value(t7, t15, 0, 0, 4);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 2780);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    memset(t15, 0, 8);
    t6 = (t15 + 4);
    t7 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 0);
    *((unsigned int *)t15) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 0);
    *((unsigned int *)t6) = t12;
    t13 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t13 & 7U);
    t18 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t18 & 7U);
    t14 = (t0 + 2228);
    xsi_vlogvar_assign_value(t14, t15, 0, 0, 3);

LAB52:    goto LAB44;

LAB48:    t17 = (t39 + 4);
    *((unsigned int *)t39) = 1;
    *((unsigned int *)t17) = 1;
    goto LAB49;

LAB50:    xsi_set_current_line(90, ng0);
    t31 = ((char*)((ng7)));
    t37 = (t0 + 1860);
    xsi_vlogvar_assign_value(t37, t31, 0, 0, 2);
    goto LAB52;

LAB56:    xsi_set_current_line(109, ng0);
    t5 = (t0 + 1952);
    t6 = (t5 + 36U);
    t7 = *((char **)t6);
    t14 = (t0 + 344);
    t16 = *((char **)t14);
    t14 = ((char*)((ng6)));
    memset(t15, 0, 8);
    xsi_vlog_unsigned_minus(t15, 32, t16, 32, t14, 32);
    memset(t39, 0, 8);
    t17 = (t7 + 4);
    t30 = (t15 + 4);
    t18 = *((unsigned int *)t7);
    t19 = *((unsigned int *)t15);
    t20 = (t18 ^ t19);
    t21 = *((unsigned int *)t17);
    t22 = *((unsigned int *)t30);
    t23 = (t21 ^ t22);
    t24 = (t20 | t23);
    t25 = *((unsigned int *)t17);
    t26 = *((unsigned int *)t30);
    t27 = (t25 | t26);
    t28 = (~(t27));
    t29 = (t24 & t28);
    if (t29 != 0)
        goto LAB62;

LAB59:    if (t27 != 0)
        goto LAB61;

LAB60:    *((unsigned int *)t39) = 1;

LAB62:    t37 = (t39 + 4);
    t32 = *((unsigned int *)t37);
    t33 = (~(t32));
    t34 = *((unsigned int *)t39);
    t35 = (t34 & t33);
    t36 = (t35 != 0);
    if (t36 > 0)
        goto LAB63;

LAB64:    xsi_set_current_line(116, ng0);

LAB67:    xsi_set_current_line(117, ng0);
    t2 = (t0 + 1952);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng6)));
    memset(t15, 0, 8);
    xsi_vlog_unsigned_add(t15, 32, t5, 4, t6, 32);
    t7 = (t0 + 2688);
    xsi_vlogvar_assign_value(t7, t15, 0, 0, 5);
    xsi_set_current_line(118, ng0);
    t2 = (t0 + 2688);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    memset(t15, 0, 8);
    t6 = (t15 + 4);
    t7 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 0);
    *((unsigned int *)t15) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 0);
    *((unsigned int *)t6) = t12;
    t13 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t13 & 15U);
    t18 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t18 & 15U);
    t14 = (t0 + 2044);
    xsi_vlogvar_assign_value(t14, t15, 0, 0, 4);

LAB65:    goto LAB58;

LAB61:    t31 = (t39 + 4);
    *((unsigned int *)t39) = 1;
    *((unsigned int *)t31) = 1;
    goto LAB62;

LAB63:    xsi_set_current_line(110, ng0);

LAB66:    xsi_set_current_line(111, ng0);
    t38 = ((char*)((ng1)));
    t40 = (t0 + 1860);
    xsi_vlogvar_assign_value(t40, t38, 0, 0, 2);
    xsi_set_current_line(112, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1676);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB65;

}

static void Cont_126_2(char *t0)
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

LAB0:    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(126, ng0);
    t2 = (t0 + 2504);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3848);
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
    t18 = (t0 + 3804);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000002378878092_3057949069_init()
{
	static char *pe[] = {(void *)Always_32_0,(void *)Always_42_1,(void *)Cont_126_2};
	xsi_register_didat("work_m_00000000002378878092_3057949069", "isim/Test_isim_beh.exe.sim/work/m_00000000002378878092_3057949069.didat");
	xsi_register_executes(pe);
}
