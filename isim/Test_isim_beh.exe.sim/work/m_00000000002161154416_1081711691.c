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
static const char *ng0 = "C:/Users/Nano/Desktop/PipeLine/UartRx.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static int ng3[] = {0, 0};
static int ng4[] = {7, 0};
static unsigned int ng5[] = {2U, 0U};
static int ng6[] = {1, 0};
static int ng7[] = {15, 0};
static unsigned int ng8[] = {3U, 0U};



static void Always_31_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 3028U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 3512);
    *((int *)t2) = 1;
    t3 = (t0 + 3056);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(32, ng0);

LAB5:    xsi_set_current_line(33, ng0);
    t4 = (t0 + 1768);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);
    t7 = (t0 + 1676);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 2, 0LL);
    xsi_set_current_line(34, ng0);
    t2 = (t0 + 1952);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 1860);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(35, ng0);
    t2 = (t0 + 2136);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2044);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 3, 0LL);
    xsi_set_current_line(36, ng0);
    t2 = (t0 + 2320);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2228);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 8, 0LL);
    goto LAB2;

}

static void Always_40_1(char *t0)
{
    char t9[8];
    char t40[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
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
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t39;
    char *t41;

LAB0:    t1 = (t0 + 3172U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 3520);
    *((int *)t2) = 1;
    t3 = (t0 + 3200);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(41, ng0);

LAB5:    xsi_set_current_line(42, ng0);
    t4 = (t0 + 1676);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);
    t7 = (t0 + 1768);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 2);
    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1584);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1860);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 1952);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 4);
    xsi_set_current_line(45, ng0);
    t2 = (t0 + 2044);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2136);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 3);
    xsi_set_current_line(46, ng0);
    t2 = (t0 + 2228);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2320);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1676);
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

LAB12:    t2 = ((char*)((ng8)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t8 == 1)
        goto LAB13;

LAB14:
LAB15:    goto LAB2;

LAB7:    xsi_set_current_line(50, ng0);
    t6 = (t0 + 1172U);
    t7 = *((char **)t6);
    memset(t9, 0, 8);
    t6 = (t7 + 4);
    t10 = *((unsigned int *)t6);
    t11 = (~(t10));
    t12 = *((unsigned int *)t7);
    t13 = (t12 & t11);
    t14 = (t13 & 1U);
    if (t14 != 0)
        goto LAB19;

LAB17:    if (*((unsigned int *)t6) == 0)
        goto LAB16;

LAB18:    t15 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t15) = 1;

LAB19:    t16 = (t9 + 4);
    t17 = (t7 + 4);
    t18 = *((unsigned int *)t7);
    t19 = (~(t18));
    *((unsigned int *)t9) = t19;
    *((unsigned int *)t16) = 0;
    if (*((unsigned int *)t17) != 0)
        goto LAB21;

LAB20:    t24 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t24 & 1U);
    t25 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t25 & 1U);
    t26 = (t9 + 4);
    t27 = *((unsigned int *)t26);
    t28 = (~(t27));
    t29 = *((unsigned int *)t9);
    t30 = (t29 & t28);
    t31 = (t30 != 0);
    if (t31 > 0)
        goto LAB22;

LAB23:
LAB24:    goto LAB15;

LAB9:    xsi_set_current_line(57, ng0);
    t3 = (t0 + 1264U);
    t5 = *((char **)t3);
    t3 = (t5 + 4);
    t10 = *((unsigned int *)t3);
    t11 = (~(t10));
    t12 = *((unsigned int *)t5);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB26;

LAB27:
LAB28:    goto LAB15;

LAB11:    xsi_set_current_line(72, ng0);
    t3 = (t0 + 1264U);
    t5 = *((char **)t3);
    t3 = (t5 + 4);
    t10 = *((unsigned int *)t3);
    t11 = (~(t10));
    t12 = *((unsigned int *)t5);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB38;

LAB39:
LAB40:    goto LAB15;

LAB13:    xsi_set_current_line(93, ng0);
    t3 = (t0 + 1264U);
    t5 = *((char **)t3);
    t3 = (t5 + 4);
    t10 = *((unsigned int *)t3);
    t11 = (~(t10));
    t12 = *((unsigned int *)t5);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB58;

LAB59:
LAB60:    goto LAB15;

LAB16:    *((unsigned int *)t9) = 1;
    goto LAB19;

LAB21:    t20 = *((unsigned int *)t9);
    t21 = *((unsigned int *)t17);
    *((unsigned int *)t9) = (t20 | t21);
    t22 = *((unsigned int *)t16);
    t23 = *((unsigned int *)t17);
    *((unsigned int *)t16) = (t22 | t23);
    goto LAB20;

LAB22:    xsi_set_current_line(51, ng0);

LAB25:    xsi_set_current_line(52, ng0);
    t32 = ((char*)((ng2)));
    t33 = (t0 + 1768);
    xsi_vlogvar_assign_value(t33, t32, 0, 0, 2);
    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1952);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    goto LAB24;

LAB26:    xsi_set_current_line(58, ng0);
    t6 = (t0 + 1860);
    t7 = (t6 + 36U);
    t15 = *((char **)t7);
    t16 = ((char*)((ng4)));
    memset(t9, 0, 8);
    t17 = (t15 + 4);
    t26 = (t16 + 4);
    t18 = *((unsigned int *)t15);
    t19 = *((unsigned int *)t16);
    t20 = (t18 ^ t19);
    t21 = *((unsigned int *)t17);
    t22 = *((unsigned int *)t26);
    t23 = (t21 ^ t22);
    t24 = (t20 | t23);
    t25 = *((unsigned int *)t17);
    t27 = *((unsigned int *)t26);
    t28 = (t25 | t27);
    t29 = (~(t28));
    t30 = (t24 & t29);
    if (t30 != 0)
        goto LAB32;

LAB29:    if (t28 != 0)
        goto LAB31;

LAB30:    *((unsigned int *)t9) = 1;

LAB32:    t33 = (t9 + 4);
    t31 = *((unsigned int *)t33);
    t34 = (~(t31));
    t35 = *((unsigned int *)t9);
    t36 = (t35 & t34);
    t37 = (t36 != 0);
    if (t37 > 0)
        goto LAB33;

LAB34:    xsi_set_current_line(66, ng0);

LAB37:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 1860);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng6)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t5, 4, t6, 32);
    t7 = (t0 + 2412);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 5);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 2412);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    memset(t9, 0, 8);
    t6 = (t9 + 4);
    t7 = (t5 + 4);
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 0);
    *((unsigned int *)t9) = t11;
    t12 = *((unsigned int *)t7);
    t13 = (t12 >> 0);
    *((unsigned int *)t6) = t13;
    t14 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t14 & 15U);
    t18 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t18 & 15U);
    t15 = (t0 + 1952);
    xsi_vlogvar_assign_value(t15, t9, 0, 0, 4);

LAB35:    goto LAB28;

LAB31:    t32 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB32;

LAB33:    xsi_set_current_line(59, ng0);

LAB36:    xsi_set_current_line(60, ng0);
    t38 = ((char*)((ng5)));
    t39 = (t0 + 1768);
    xsi_vlogvar_assign_value(t39, t38, 0, 0, 2);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1952);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2136);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    goto LAB35;

LAB38:    xsi_set_current_line(73, ng0);
    t6 = (t0 + 1860);
    t7 = (t6 + 36U);
    t15 = *((char **)t7);
    t16 = ((char*)((ng7)));
    memset(t9, 0, 8);
    t17 = (t15 + 4);
    t26 = (t16 + 4);
    t18 = *((unsigned int *)t15);
    t19 = *((unsigned int *)t16);
    t20 = (t18 ^ t19);
    t21 = *((unsigned int *)t17);
    t22 = *((unsigned int *)t26);
    t23 = (t21 ^ t22);
    t24 = (t20 | t23);
    t25 = *((unsigned int *)t17);
    t27 = *((unsigned int *)t26);
    t28 = (t25 | t27);
    t29 = (~(t28));
    t30 = (t24 & t29);
    if (t30 != 0)
        goto LAB44;

LAB41:    if (t28 != 0)
        goto LAB43;

LAB42:    *((unsigned int *)t9) = 1;

LAB44:    t33 = (t9 + 4);
    t31 = *((unsigned int *)t33);
    t34 = (~(t31));
    t35 = *((unsigned int *)t9);
    t36 = (t35 & t34);
    t37 = (t36 != 0);
    if (t37 > 0)
        goto LAB45;

LAB46:    xsi_set_current_line(87, ng0);

LAB57:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 1860);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng6)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t5, 4, t6, 32);
    t7 = (t0 + 2412);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 5);
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 2412);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    memset(t9, 0, 8);
    t6 = (t9 + 4);
    t7 = (t5 + 4);
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 0);
    *((unsigned int *)t9) = t11;
    t12 = *((unsigned int *)t7);
    t13 = (t12 >> 0);
    *((unsigned int *)t6) = t13;
    t14 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t14 & 15U);
    t18 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t18 & 15U);
    t15 = (t0 + 1952);
    xsi_vlogvar_assign_value(t15, t9, 0, 0, 4);

LAB47:    goto LAB40;

LAB43:    t32 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB44;

LAB45:    xsi_set_current_line(74, ng0);

LAB48:    xsi_set_current_line(75, ng0);
    t38 = ((char*)((ng3)));
    t39 = (t0 + 1952);
    xsi_vlogvar_assign_value(t39, t38, 0, 0, 4);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 2228);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    memset(t40, 0, 8);
    t6 = (t40 + 4);
    t7 = (t5 + 4);
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 1);
    *((unsigned int *)t40) = t11;
    t12 = *((unsigned int *)t7);
    t13 = (t12 >> 1);
    *((unsigned int *)t6) = t13;
    t14 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t14 & 127U);
    t18 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t18 & 127U);
    t15 = (t0 + 1172U);
    t16 = *((char **)t15);
    xsi_vlogtype_concat(t9, 8, 8, 2U, t16, 1, t40, 7);
    t15 = (t0 + 2320);
    xsi_vlogvar_assign_value(t15, t9, 0, 0, 8);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 2044);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 264);
    t7 = *((char **)t6);
    t6 = ((char*)((ng6)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_minus(t9, 32, t7, 32, t6, 32);
    memset(t40, 0, 8);
    t15 = (t5 + 4);
    t16 = (t9 + 4);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t9);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t15);
    t14 = *((unsigned int *)t16);
    t18 = (t13 ^ t14);
    t19 = (t12 | t18);
    t20 = *((unsigned int *)t15);
    t21 = *((unsigned int *)t16);
    t22 = (t20 | t21);
    t23 = (~(t22));
    t24 = (t19 & t23);
    if (t24 != 0)
        goto LAB52;

LAB49:    if (t22 != 0)
        goto LAB51;

LAB50:    *((unsigned int *)t40) = 1;

LAB52:    t26 = (t40 + 4);
    t25 = *((unsigned int *)t26);
    t27 = (~(t25));
    t28 = *((unsigned int *)t40);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB53;

LAB54:    xsi_set_current_line(80, ng0);

LAB56:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 2044);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng6)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t5, 3, t6, 32);
    t7 = (t0 + 2504);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 4);
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 2504);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    memset(t9, 0, 8);
    t6 = (t9 + 4);
    t7 = (t5 + 4);
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 0);
    *((unsigned int *)t9) = t11;
    t12 = *((unsigned int *)t7);
    t13 = (t12 >> 0);
    *((unsigned int *)t6) = t13;
    t14 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t14 & 7U);
    t18 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t18 & 7U);
    t15 = (t0 + 2136);
    xsi_vlogvar_assign_value(t15, t9, 0, 0, 3);

LAB55:    goto LAB47;

LAB51:    t17 = (t40 + 4);
    *((unsigned int *)t40) = 1;
    *((unsigned int *)t17) = 1;
    goto LAB52;

LAB53:    xsi_set_current_line(78, ng0);
    t32 = ((char*)((ng8)));
    t33 = (t0 + 1768);
    xsi_vlogvar_assign_value(t33, t32, 0, 0, 2);
    goto LAB55;

LAB58:    xsi_set_current_line(94, ng0);
    t6 = (t0 + 1860);
    t7 = (t6 + 36U);
    t15 = *((char **)t7);
    t16 = (t0 + 344);
    t17 = *((char **)t16);
    t16 = ((char*)((ng6)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_minus(t9, 32, t17, 32, t16, 32);
    memset(t40, 0, 8);
    t26 = (t15 + 4);
    t32 = (t9 + 4);
    t18 = *((unsigned int *)t15);
    t19 = *((unsigned int *)t9);
    t20 = (t18 ^ t19);
    t21 = *((unsigned int *)t26);
    t22 = *((unsigned int *)t32);
    t23 = (t21 ^ t22);
    t24 = (t20 | t23);
    t25 = *((unsigned int *)t26);
    t27 = *((unsigned int *)t32);
    t28 = (t25 | t27);
    t29 = (~(t28));
    t30 = (t24 & t29);
    if (t30 != 0)
        goto LAB64;

LAB61:    if (t28 != 0)
        goto LAB63;

LAB62:    *((unsigned int *)t40) = 1;

LAB64:    t38 = (t40 + 4);
    t31 = *((unsigned int *)t38);
    t34 = (~(t31));
    t35 = *((unsigned int *)t40);
    t36 = (t35 & t34);
    t37 = (t36 != 0);
    if (t37 > 0)
        goto LAB65;

LAB66:    xsi_set_current_line(101, ng0);

LAB69:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 1860);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng6)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t5, 4, t6, 32);
    t7 = (t0 + 2412);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 5);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 2412);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    memset(t9, 0, 8);
    t6 = (t9 + 4);
    t7 = (t5 + 4);
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 0);
    *((unsigned int *)t9) = t11;
    t12 = *((unsigned int *)t7);
    t13 = (t12 >> 0);
    *((unsigned int *)t6) = t13;
    t14 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t14 & 15U);
    t18 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t18 & 15U);
    t15 = (t0 + 1952);
    xsi_vlogvar_assign_value(t15, t9, 0, 0, 4);

LAB67:    goto LAB60;

LAB63:    t33 = (t40 + 4);
    *((unsigned int *)t40) = 1;
    *((unsigned int *)t33) = 1;
    goto LAB64;

LAB65:    xsi_set_current_line(95, ng0);

LAB68:    xsi_set_current_line(96, ng0);
    t39 = ((char*)((ng1)));
    t41 = (t0 + 1768);
    xsi_vlogvar_assign_value(t41, t39, 0, 0, 2);
    xsi_set_current_line(97, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1584);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB67;

}

static void Cont_109_2(char *t0)
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

LAB0:    t1 = (t0 + 3316U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(109, ng0);
    t2 = (t0 + 2228);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3572);
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
    t18 = (t0 + 3528);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000002161154416_1081711691_init()
{
	static char *pe[] = {(void *)Always_31_0,(void *)Always_40_1,(void *)Cont_109_2};
	xsi_register_didat("work_m_00000000002161154416_1081711691", "isim/Test_isim_beh.exe.sim/work/m_00000000002161154416_1081711691.didat");
	xsi_register_executes(pe);
}
