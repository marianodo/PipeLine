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
static const char *ng0 = "C:/Users/Nano/Google Drive/PipeLine/AluEX.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {2U, 0U};
static unsigned int ng3[] = {0U, 0U};
static int ng4[] = {2, 0};
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
static unsigned int ng15[] = {8U, 0U};
static unsigned int ng16[] = {9U, 0U};
static unsigned int ng17[] = {12U, 0U};
static unsigned int ng18[] = {65535U, 0U};
static unsigned int ng19[] = {13U, 0U};
static unsigned int ng20[] = {14U, 0U};
static unsigned int ng21[] = {15U, 0U};
static int ng22[] = {16, 0};
static unsigned int ng23[] = {10U, 0U};
static unsigned int ng24[] = {11U, 0U};
static unsigned int ng25[] = {4294967295U, 0U};
static unsigned int ng26[] = {1U, 0U};



static void Initial_35_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(36, ng0);

LAB2:    xsi_set_current_line(37, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1380);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(38, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1288);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);

LAB1:    return;
}

static void Always_41_1(char *t0)
{
    char t6[8];
    char t35[8];
    char t36[8];
    char t47[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
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
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    int t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    unsigned int t37;
    int t38;
    int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    int t67;
    int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    char *t75;
    char *t76;

LAB0:    t1 = (t0 + 2048U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 2244);
    *((int *)t2) = 1;
    t3 = (t0 + 2076);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(42, ng0);

LAB5:    xsi_set_current_line(43, ng0);
    t4 = (t0 + 968U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 968U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB130;

LAB127:    if (t18 != 0)
        goto LAB129;

LAB128:    *((unsigned int *)t6) = 1;

LAB130:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB131;

LAB132:    xsi_set_current_line(135, ng0);
    t2 = (t0 + 968U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng26)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB138;

LAB135:    if (t18 != 0)
        goto LAB137;

LAB136:    *((unsigned int *)t6) = 1;

LAB138:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB139;

LAB140:
LAB141:
LAB133:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(44, ng0);

LAB13:    xsi_set_current_line(45, ng0);
    t28 = (t0 + 784U);
    t29 = *((char **)t28);

LAB14:    t28 = ((char*)((ng3)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 6, t28, 6);
    if (t30 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng2)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 6, t2, 6);
    if (t30 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng5)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 6, t2, 6);
    if (t30 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng6)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 6, t2, 6);
    if (t30 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng7)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 6, t2, 6);
    if (t30 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng8)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 6, t2, 6);
    if (t30 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng9)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 6, t2, 6);
    if (t30 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng10)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 6, t2, 6);
    if (t30 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng11)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 6, t2, 6);
    if (t30 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng12)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 6, t2, 6);
    if (t30 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng13)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 6, t2, 6);
    if (t30 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng15)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 6, t2, 6);
    if (t30 == 1)
        goto LAB37;

LAB38:    t2 = ((char*)((ng16)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 6, t2, 6);
    if (t30 == 1)
        goto LAB39;

LAB40:    t2 = ((char*)((ng17)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 6, t2, 6);
    if (t30 == 1)
        goto LAB41;

LAB42:    t2 = ((char*)((ng19)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 6, t2, 6);
    if (t30 == 1)
        goto LAB43;

LAB44:    t2 = ((char*)((ng20)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 6, t2, 6);
    if (t30 == 1)
        goto LAB45;

LAB46:    t2 = ((char*)((ng21)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 6, t2, 6);
    if (t30 == 1)
        goto LAB47;

LAB48:    t2 = ((char*)((ng23)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 6, t2, 6);
    if (t30 == 1)
        goto LAB49;

LAB50:    t2 = ((char*)((ng24)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 6, t2, 6);
    if (t30 == 1)
        goto LAB51;

LAB52:
LAB54:
LAB53:    xsi_set_current_line(126, ng0);
    t2 = ((char*)((ng25)));
    t3 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);

LAB55:    goto LAB12;

LAB15:    xsi_set_current_line(50, ng0);
    t31 = (t0 + 692U);
    t32 = *((char **)t31);
    t31 = ((char*)((ng4)));
    t33 = (t0 + 876U);
    t34 = *((char **)t33);
    memset(t35, 0, 8);
    xsi_vlog_unsigned_power(t35, 32, t31, 32, t34, 5, 0);
    memset(t36, 0, 8);
    xsi_vlog_unsigned_multiply(t36, 32, t32, 32, t35, 32);
    t33 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t33, t36, 0, 0, 32, 0LL);
    goto LAB55;

LAB17:    xsi_set_current_line(54, ng0);
    t3 = (t0 + 692U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 876U);
    t7 = *((char **)t5);
    memset(t6, 0, 8);
    xsi_vlog_unsigned_power(t6, 32, t3, 32, t7, 5, 0);
    memset(t35, 0, 8);
    xsi_vlog_unsigned_divide(t35, 32, t4, 32, t6, 32);
    t5 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t5, t35, 0, 0, 32, 0LL);
    goto LAB55;

LAB19:    xsi_set_current_line(58, ng0);
    t3 = (t0 + 692U);
    t4 = *((char **)t3);
    t3 = (t0 + 876U);
    t5 = *((char **)t3);
    memset(t35, 0, 8);
    xsi_vlog_signed_arith_rshift(t35, 32, t4, 32, t5, 5);
    t3 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t3, t35, 0, 0, 32, 0LL);
    goto LAB55;

LAB21:    xsi_set_current_line(62, ng0);
    t3 = (t0 + 692U);
    t4 = *((char **)t3);
    t3 = (t0 + 600U);
    t5 = *((char **)t3);
    memset(t6, 0, 8);
    xsi_vlog_unsigned_rshift(t6, 32, t4, 32, t5, 32);
    t3 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t3, t6, 0, 0, 32, 0LL);
    goto LAB55;

LAB23:    xsi_set_current_line(66, ng0);
    t3 = (t0 + 692U);
    t4 = *((char **)t3);
    t3 = (t0 + 600U);
    t5 = *((char **)t3);
    memset(t35, 0, 8);
    xsi_vlog_signed_arith_rshift(t35, 32, t4, 32, t5, 32);
    t3 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t3, t35, 0, 0, 32, 0LL);
    goto LAB55;

LAB25:    xsi_set_current_line(70, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    t3 = (t0 + 692U);
    t5 = *((char **)t3);
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t4, 32, t5, 32);
    t3 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t3, t6, 0, 0, 32, 0LL);
    goto LAB55;

LAB27:    xsi_set_current_line(74, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    t3 = (t0 + 692U);
    t5 = *((char **)t3);
    memset(t6, 0, 8);
    xsi_vlog_unsigned_minus(t6, 32, t4, 32, t5, 32);
    t3 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t3, t6, 0, 0, 32, 0LL);
    goto LAB55;

LAB29:    xsi_set_current_line(78, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    t3 = (t0 + 692U);
    t5 = *((char **)t3);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t11 = (t9 & t10);
    *((unsigned int *)t6) = t11;
    t3 = (t4 + 4);
    t7 = (t5 + 4);
    t8 = (t6 + 4);
    t12 = *((unsigned int *)t3);
    t13 = *((unsigned int *)t7);
    t14 = (t12 | t13);
    *((unsigned int *)t8) = t14;
    t15 = *((unsigned int *)t8);
    t16 = (t15 != 0);
    if (t16 == 1)
        goto LAB56;

LAB57:
LAB58:    t28 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t28, t6, 0, 0, 32, 0LL);
    goto LAB55;

LAB31:    xsi_set_current_line(82, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    t3 = (t0 + 692U);
    t5 = *((char **)t3);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t11 = (t9 | t10);
    *((unsigned int *)t6) = t11;
    t3 = (t4 + 4);
    t7 = (t5 + 4);
    t8 = (t6 + 4);
    t12 = *((unsigned int *)t3);
    t13 = *((unsigned int *)t7);
    t14 = (t12 | t13);
    *((unsigned int *)t8) = t14;
    t15 = *((unsigned int *)t8);
    t16 = (t15 != 0);
    if (t16 == 1)
        goto LAB59;

LAB60:
LAB61:    t28 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t28, t6, 0, 0, 32, 0LL);
    goto LAB55;

LAB33:    xsi_set_current_line(86, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    t3 = (t0 + 692U);
    t5 = *((char **)t3);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t11 = (t9 ^ t10);
    *((unsigned int *)t6) = t11;
    t3 = (t4 + 4);
    t7 = (t5 + 4);
    t8 = (t6 + 4);
    t12 = *((unsigned int *)t3);
    t13 = *((unsigned int *)t7);
    t14 = (t12 | t13);
    *((unsigned int *)t8) = t14;
    t15 = *((unsigned int *)t8);
    t16 = (t15 != 0);
    if (t16 == 1)
        goto LAB62;

LAB63:
LAB64:    t21 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t21, t6, 0, 0, 32, 0LL);
    goto LAB55;

LAB35:    xsi_set_current_line(90, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    t3 = (t0 + 692U);
    t5 = *((char **)t3);
    memset(t47, 0, 8);
    xsi_vlog_signed_less(t47, 32, t4, 32, t5, 32);
    memset(t35, 0, 8);
    t3 = (t47 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (~(t9));
    t11 = *((unsigned int *)t47);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB65;

LAB66:    if (*((unsigned int *)t3) != 0)
        goto LAB67;

LAB68:    t8 = (t35 + 4);
    t14 = *((unsigned int *)t35);
    t15 = *((unsigned int *)t8);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB69;

LAB70:    t17 = *((unsigned int *)t35);
    t18 = (~(t17));
    t19 = *((unsigned int *)t8);
    t20 = (t18 || t19);
    if (t20 > 0)
        goto LAB71;

LAB72:    if (*((unsigned int *)t8) > 0)
        goto LAB73;

LAB74:    if (*((unsigned int *)t35) > 0)
        goto LAB75;

LAB76:    memcpy(t6, t22, 8);

LAB77:    t28 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t28, t6, 0, 0, 32, 0LL);
    goto LAB55;

LAB37:    xsi_set_current_line(95, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    t3 = (t0 + 692U);
    t5 = *((char **)t3);
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t4, 32, t5, 32);
    t3 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t3, t6, 0, 0, 32, 0LL);
    goto LAB55;

LAB39:    xsi_set_current_line(99, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    t3 = (t0 + 692U);
    t5 = *((char **)t3);
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t4, 32, t5, 32);
    t3 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t3, t6, 0, 0, 32, 0LL);
    goto LAB55;

LAB41:    xsi_set_current_line(103, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    t3 = (t0 + 692U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng18)));
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t3);
    t11 = (t9 & t10);
    *((unsigned int *)t6) = t11;
    t7 = (t5 + 4);
    t8 = (t3 + 4);
    t21 = (t6 + 4);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 | t13);
    *((unsigned int *)t21) = t14;
    t15 = *((unsigned int *)t21);
    t16 = (t15 != 0);
    if (t16 == 1)
        goto LAB78;

LAB79:
LAB80:    t48 = *((unsigned int *)t4);
    t49 = *((unsigned int *)t6);
    t50 = (t48 & t49);
    *((unsigned int *)t35) = t50;
    t31 = (t4 + 4);
    t32 = (t6 + 4);
    t33 = (t35 + 4);
    t51 = *((unsigned int *)t31);
    t52 = *((unsigned int *)t32);
    t53 = (t51 | t52);
    *((unsigned int *)t33) = t53;
    t54 = *((unsigned int *)t33);
    t55 = (t54 != 0);
    if (t55 == 1)
        goto LAB81;

LAB82:
LAB83:    t75 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t75, t35, 0, 0, 32, 0LL);
    goto LAB55;

LAB43:    xsi_set_current_line(107, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    t3 = (t0 + 692U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng18)));
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t3);
    t11 = (t9 & t10);
    *((unsigned int *)t6) = t11;
    t7 = (t5 + 4);
    t8 = (t3 + 4);
    t21 = (t6 + 4);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 | t13);
    *((unsigned int *)t21) = t14;
    t15 = *((unsigned int *)t21);
    t16 = (t15 != 0);
    if (t16 == 1)
        goto LAB84;

LAB85:
LAB86:    t48 = *((unsigned int *)t4);
    t49 = *((unsigned int *)t6);
    t50 = (t48 | t49);
    *((unsigned int *)t35) = t50;
    t31 = (t4 + 4);
    t32 = (t6 + 4);
    t33 = (t35 + 4);
    t51 = *((unsigned int *)t31);
    t52 = *((unsigned int *)t32);
    t53 = (t51 | t52);
    *((unsigned int *)t33) = t53;
    t54 = *((unsigned int *)t33);
    t55 = (t54 != 0);
    if (t55 == 1)
        goto LAB87;

LAB88:
LAB89:    t75 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t75, t35, 0, 0, 32, 0LL);
    goto LAB55;

LAB45:    xsi_set_current_line(111, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    t3 = (t0 + 692U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng18)));
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t3);
    t11 = (t9 & t10);
    *((unsigned int *)t6) = t11;
    t7 = (t5 + 4);
    t8 = (t3 + 4);
    t21 = (t6 + 4);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 | t13);
    *((unsigned int *)t21) = t14;
    t15 = *((unsigned int *)t21);
    t16 = (t15 != 0);
    if (t16 == 1)
        goto LAB90;

LAB91:
LAB92:    t48 = *((unsigned int *)t4);
    t49 = *((unsigned int *)t6);
    t50 = (t48 ^ t49);
    *((unsigned int *)t35) = t50;
    t31 = (t4 + 4);
    t32 = (t6 + 4);
    t33 = (t35 + 4);
    t51 = *((unsigned int *)t31);
    t52 = *((unsigned int *)t32);
    t53 = (t51 | t52);
    *((unsigned int *)t33) = t53;
    t54 = *((unsigned int *)t33);
    t55 = (t54 != 0);
    if (t55 == 1)
        goto LAB93;

LAB94:
LAB95:    t34 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t34, t35, 0, 0, 32, 0LL);
    goto LAB55;

LAB47:    xsi_set_current_line(115, ng0);
    t3 = (t0 + 692U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng22)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_lshift(t6, 32, t4, 32, t3, 32);
    t5 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t5, t6, 0, 0, 32, 0LL);
    goto LAB55;

LAB49:    xsi_set_current_line(119, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    t3 = (t0 + 692U);
    t5 = *((char **)t3);
    memset(t47, 0, 8);
    xsi_vlog_signed_less(t47, 32, t4, 32, t5, 32);
    memset(t35, 0, 8);
    t3 = (t47 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (~(t9));
    t11 = *((unsigned int *)t47);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB96;

LAB97:    if (*((unsigned int *)t3) != 0)
        goto LAB98;

LAB99:    t8 = (t35 + 4);
    t14 = *((unsigned int *)t35);
    t15 = *((unsigned int *)t8);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB100;

LAB101:    t17 = *((unsigned int *)t35);
    t18 = (~(t17));
    t19 = *((unsigned int *)t8);
    t20 = (t18 || t19);
    if (t20 > 0)
        goto LAB102;

LAB103:    if (*((unsigned int *)t8) > 0)
        goto LAB104;

LAB105:    if (*((unsigned int *)t35) > 0)
        goto LAB106;

LAB107:    memcpy(t6, t22, 8);

LAB108:    t28 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t28, t6, 0, 0, 32, 0LL);
    goto LAB55;

LAB51:    xsi_set_current_line(123, ng0);
    t3 = (t0 + 600U);
    t4 = *((char **)t3);
    t3 = (t0 + 692U);
    t5 = *((char **)t3);
    memset(t47, 0, 8);
    t3 = (t4 + 4);
    if (*((unsigned int *)t3) != 0)
        goto LAB110;

LAB109:    t7 = (t5 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB110;

LAB113:    if (*((unsigned int *)t4) < *((unsigned int *)t5))
        goto LAB111;

LAB112:    memset(t35, 0, 8);
    t21 = (t47 + 4);
    t9 = *((unsigned int *)t21);
    t10 = (~(t9));
    t11 = *((unsigned int *)t47);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB114;

LAB115:    if (*((unsigned int *)t21) != 0)
        goto LAB116;

LAB117:    t28 = (t35 + 4);
    t14 = *((unsigned int *)t35);
    t15 = *((unsigned int *)t28);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB118;

LAB119:    t17 = *((unsigned int *)t35);
    t18 = (~(t17));
    t19 = *((unsigned int *)t28);
    t20 = (t18 || t19);
    if (t20 > 0)
        goto LAB120;

LAB121:    if (*((unsigned int *)t28) > 0)
        goto LAB122;

LAB123:    if (*((unsigned int *)t35) > 0)
        goto LAB124;

LAB125:    memcpy(t6, t32, 8);

LAB126:    t33 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t33, t6, 0, 0, 32, 0LL);
    goto LAB55;

LAB56:    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t8);
    *((unsigned int *)t6) = (t17 | t18);
    t21 = (t4 + 4);
    t22 = (t5 + 4);
    t19 = *((unsigned int *)t4);
    t20 = (~(t19));
    t23 = *((unsigned int *)t21);
    t24 = (~(t23));
    t25 = *((unsigned int *)t5);
    t26 = (~(t25));
    t27 = *((unsigned int *)t22);
    t37 = (~(t27));
    t38 = (t20 & t24);
    t39 = (t26 & t37);
    t40 = (~(t38));
    t41 = (~(t39));
    t42 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t42 & t40);
    t43 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t43 & t41);
    t44 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t44 & t40);
    t45 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t45 & t41);
    goto LAB58;

LAB59:    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t8);
    *((unsigned int *)t6) = (t17 | t18);
    t21 = (t4 + 4);
    t22 = (t5 + 4);
    t19 = *((unsigned int *)t21);
    t20 = (~(t19));
    t23 = *((unsigned int *)t4);
    t38 = (t23 & t20);
    t24 = *((unsigned int *)t22);
    t25 = (~(t24));
    t26 = *((unsigned int *)t5);
    t39 = (t26 & t25);
    t27 = (~(t38));
    t37 = (~(t39));
    t40 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t40 & t27);
    t41 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t41 & t37);
    goto LAB61;

LAB62:    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t8);
    *((unsigned int *)t6) = (t17 | t18);
    goto LAB64;

LAB65:    *((unsigned int *)t35) = 1;
    goto LAB68;

LAB67:    t7 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB68;

LAB69:    t21 = ((char*)((ng14)));
    goto LAB70;

LAB71:    t22 = ((char*)((ng1)));
    goto LAB72;

LAB73:    xsi_vlog_unsigned_bit_combine(t6, 32, t21, 32, t22, 32);
    goto LAB77;

LAB75:    memcpy(t6, t21, 8);
    goto LAB77;

LAB78:    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t21);
    *((unsigned int *)t6) = (t17 | t18);
    t22 = (t5 + 4);
    t28 = (t3 + 4);
    t19 = *((unsigned int *)t5);
    t20 = (~(t19));
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t3);
    t26 = (~(t25));
    t27 = *((unsigned int *)t28);
    t37 = (~(t27));
    t38 = (t20 & t24);
    t39 = (t26 & t37);
    t40 = (~(t38));
    t41 = (~(t39));
    t42 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t42 & t40);
    t43 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t43 & t41);
    t44 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t44 & t40);
    t45 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t45 & t41);
    goto LAB80;

LAB81:    t56 = *((unsigned int *)t35);
    t57 = *((unsigned int *)t33);
    *((unsigned int *)t35) = (t56 | t57);
    t34 = (t4 + 4);
    t58 = (t6 + 4);
    t59 = *((unsigned int *)t4);
    t60 = (~(t59));
    t61 = *((unsigned int *)t34);
    t62 = (~(t61));
    t63 = *((unsigned int *)t6);
    t64 = (~(t63));
    t65 = *((unsigned int *)t58);
    t66 = (~(t65));
    t67 = (t60 & t62);
    t68 = (t64 & t66);
    t69 = (~(t67));
    t70 = (~(t68));
    t71 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t71 & t69);
    t72 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t72 & t70);
    t73 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t73 & t69);
    t74 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t74 & t70);
    goto LAB83;

LAB84:    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t21);
    *((unsigned int *)t6) = (t17 | t18);
    t22 = (t5 + 4);
    t28 = (t3 + 4);
    t19 = *((unsigned int *)t5);
    t20 = (~(t19));
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t3);
    t26 = (~(t25));
    t27 = *((unsigned int *)t28);
    t37 = (~(t27));
    t38 = (t20 & t24);
    t39 = (t26 & t37);
    t40 = (~(t38));
    t41 = (~(t39));
    t42 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t42 & t40);
    t43 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t43 & t41);
    t44 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t44 & t40);
    t45 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t45 & t41);
    goto LAB86;

LAB87:    t56 = *((unsigned int *)t35);
    t57 = *((unsigned int *)t33);
    *((unsigned int *)t35) = (t56 | t57);
    t34 = (t4 + 4);
    t58 = (t6 + 4);
    t59 = *((unsigned int *)t34);
    t60 = (~(t59));
    t61 = *((unsigned int *)t4);
    t67 = (t61 & t60);
    t62 = *((unsigned int *)t58);
    t63 = (~(t62));
    t64 = *((unsigned int *)t6);
    t68 = (t64 & t63);
    t65 = (~(t67));
    t66 = (~(t68));
    t69 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t69 & t65);
    t70 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t70 & t66);
    goto LAB89;

LAB90:    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t21);
    *((unsigned int *)t6) = (t17 | t18);
    t22 = (t5 + 4);
    t28 = (t3 + 4);
    t19 = *((unsigned int *)t5);
    t20 = (~(t19));
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t3);
    t26 = (~(t25));
    t27 = *((unsigned int *)t28);
    t37 = (~(t27));
    t38 = (t20 & t24);
    t39 = (t26 & t37);
    t40 = (~(t38));
    t41 = (~(t39));
    t42 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t42 & t40);
    t43 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t43 & t41);
    t44 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t44 & t40);
    t45 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t45 & t41);
    goto LAB92;

LAB93:    t56 = *((unsigned int *)t35);
    t57 = *((unsigned int *)t33);
    *((unsigned int *)t35) = (t56 | t57);
    goto LAB95;

LAB96:    *((unsigned int *)t35) = 1;
    goto LAB99;

LAB98:    t7 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB99;

LAB100:    t21 = ((char*)((ng14)));
    goto LAB101;

LAB102:    t22 = ((char*)((ng1)));
    goto LAB103;

LAB104:    xsi_vlog_unsigned_bit_combine(t6, 32, t21, 32, t22, 32);
    goto LAB108;

LAB106:    memcpy(t6, t21, 8);
    goto LAB108;

LAB110:    t8 = (t47 + 4);
    *((unsigned int *)t47) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB112;

LAB111:    *((unsigned int *)t47) = 1;
    goto LAB112;

LAB114:    *((unsigned int *)t35) = 1;
    goto LAB117;

LAB116:    t22 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB117;

LAB118:    t31 = ((char*)((ng14)));
    goto LAB119;

LAB120:    t32 = ((char*)((ng1)));
    goto LAB121;

LAB122:    xsi_vlog_unsigned_bit_combine(t6, 32, t31, 32, t32, 32);
    goto LAB126;

LAB124:    memcpy(t6, t31, 8);
    goto LAB126;

LAB129:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB130;

LAB131:    xsi_set_current_line(132, ng0);

LAB134:    xsi_set_current_line(133, ng0);
    t21 = (t0 + 600U);
    t22 = *((char **)t21);
    t21 = (t0 + 692U);
    t28 = *((char **)t21);
    memset(t35, 0, 8);
    xsi_vlog_unsigned_add(t35, 32, t22, 32, t28, 32);
    t21 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t21, t35, 0, 0, 32, 0LL);
    goto LAB133;

LAB137:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB138;

LAB139:    xsi_set_current_line(136, ng0);

LAB142:    xsi_set_current_line(137, ng0);
    t21 = (t0 + 1060U);
    t22 = *((char **)t21);
    t21 = (t22 + 4);
    t37 = *((unsigned int *)t21);
    t40 = (~(t37));
    t41 = *((unsigned int *)t22);
    t42 = (t41 & t40);
    t43 = (t42 != 0);
    if (t43 > 0)
        goto LAB143;

LAB144:    xsi_set_current_line(149, ng0);

LAB156:    xsi_set_current_line(150, ng0);
    t2 = (t0 + 600U);
    t3 = *((char **)t2);
    t2 = (t0 + 692U);
    t4 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t2);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t2);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB158;

LAB157:    if (t18 != 0)
        goto LAB159;

LAB160:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB161;

LAB162:    xsi_set_current_line(155, ng0);

LAB165:    xsi_set_current_line(156, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB163:
LAB145:    goto LAB141;

LAB143:    xsi_set_current_line(138, ng0);

LAB146:    xsi_set_current_line(139, ng0);
    t28 = (t0 + 600U);
    t31 = *((char **)t28);
    t28 = (t0 + 692U);
    t32 = *((char **)t28);
    memset(t35, 0, 8);
    t28 = (t31 + 4);
    t33 = (t32 + 4);
    t44 = *((unsigned int *)t31);
    t45 = *((unsigned int *)t32);
    t48 = (t44 ^ t45);
    t49 = *((unsigned int *)t28);
    t50 = *((unsigned int *)t33);
    t51 = (t49 ^ t50);
    t52 = (t48 | t51);
    t53 = *((unsigned int *)t28);
    t54 = *((unsigned int *)t33);
    t55 = (t53 | t54);
    t56 = (~(t55));
    t57 = (t52 & t56);
    if (t57 != 0)
        goto LAB150;

LAB147:    if (t55 != 0)
        goto LAB149;

LAB148:    *((unsigned int *)t35) = 1;

LAB150:    t58 = (t35 + 4);
    t59 = *((unsigned int *)t58);
    t60 = (~(t59));
    t61 = *((unsigned int *)t35);
    t62 = (t61 & t60);
    t63 = (t62 != 0);
    if (t63 > 0)
        goto LAB151;

LAB152:    xsi_set_current_line(144, ng0);

LAB155:    xsi_set_current_line(145, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB153:    goto LAB145;

LAB149:    t34 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB150;

LAB151:    xsi_set_current_line(140, ng0);

LAB154:    xsi_set_current_line(141, ng0);
    t75 = ((char*)((ng14)));
    t76 = (t0 + 1288);
    xsi_vlogvar_assign_value(t76, t75, 0, 0, 1);
    goto LAB153;

LAB158:    *((unsigned int *)t6) = 1;
    goto LAB160;

LAB159:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB160;

LAB161:    xsi_set_current_line(151, ng0);

LAB164:    xsi_set_current_line(152, ng0);
    t21 = ((char*)((ng14)));
    t22 = (t0 + 1288);
    xsi_vlogvar_assign_value(t22, t21, 0, 0, 1);
    goto LAB163;

}


extern void work_m_00000000003223864061_1711767055_init()
{
	static char *pe[] = {(void *)Initial_35_0,(void *)Always_41_1};
	xsi_register_didat("work_m_00000000003223864061_1711767055", "isim/Test_isim_beh.exe.sim/work/m_00000000003223864061_1711767055.didat");
	xsi_register_executes(pe);
}
