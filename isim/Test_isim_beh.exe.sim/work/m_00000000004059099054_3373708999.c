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
static const char *ng0 = "C:/Users/Leo/Desktop/PipeLine/WordDividerMEM.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {2, 0};
static int ng4[] = {7, 0};
static unsigned int ng5[] = {255U, 0U};
static unsigned int ng6[] = {4294967040U, 0U};
static int ng7[] = {3, 0};
static int ng8[] = {4, 0};
static int ng9[] = {15, 0};
static unsigned int ng10[] = {65535U, 0U};
static unsigned int ng11[] = {4294901760U, 0U};
static int ng12[] = {5, 0};



static void Initial_35_0(char *t0)
{

LAB0:    xsi_set_current_line(36, ng0);

LAB2:
LAB1:    return;
}

static void Always_41_1(char *t0)
{
    char t9[8];
    char t12[8];
    char t36[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    char *t50;
    char *t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    int t60;
    int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    char *t68;

LAB0:    t1 = (t0 + 1680U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 2020);
    *((int *)t2) = 1;
    t3 = (t0 + 1708);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(42, ng0);

LAB5:    xsi_set_current_line(43, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t4, 32);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB17;

LAB18:
LAB20:
LAB19:    xsi_set_current_line(87, ng0);

LAB64:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 692U);
    t3 = *((char **)t2);
    t2 = (t0 + 1012);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);

LAB21:    goto LAB2;

LAB7:    xsi_set_current_line(45, ng0);

LAB22:    xsi_set_current_line(46, ng0);
    t7 = (t0 + 692U);
    t8 = *((char **)t7);
    t7 = (t0 + 1012);
    xsi_vlogvar_assign_value(t7, t8, 0, 0, 32);
    goto LAB21;

LAB9:    xsi_set_current_line(49, ng0);

LAB23:    xsi_set_current_line(50, ng0);
    t3 = (t0 + 692U);
    t4 = *((char **)t3);
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB21;

LAB11:    xsi_set_current_line(54, ng0);

LAB24:    xsi_set_current_line(55, ng0);
    t3 = (t0 + 692U);
    t4 = *((char **)t3);
    t3 = (t0 + 668U);
    t7 = (t3 + 44U);
    t8 = *((char **)t7);
    t10 = ((char*)((ng4)));
    xsi_vlog_generic_get_index_select_value(t9, 32, t4, t8, 2, t10, 32, 1);
    t11 = ((char*)((ng1)));
    memset(t12, 0, 8);
    t13 = (t9 + 4);
    t14 = (t11 + 4);
    t15 = *((unsigned int *)t9);
    t16 = *((unsigned int *)t11);
    t17 = (t15 ^ t16);
    t18 = *((unsigned int *)t13);
    t19 = *((unsigned int *)t14);
    t20 = (t18 ^ t19);
    t21 = (t17 | t20);
    t22 = *((unsigned int *)t13);
    t23 = *((unsigned int *)t14);
    t24 = (t22 | t23);
    t25 = (~(t24));
    t26 = (t21 & t25);
    if (t26 != 0)
        goto LAB28;

LAB25:    if (t24 != 0)
        goto LAB27;

LAB26:    *((unsigned int *)t12) = 1;

LAB28:    t28 = (t12 + 4);
    t29 = *((unsigned int *)t28);
    t30 = (~(t29));
    t31 = *((unsigned int *)t12);
    t32 = (t31 & t30);
    t33 = (t32 != 0);
    if (t33 > 0)
        goto LAB29;

LAB30:    xsi_set_current_line(60, ng0);

LAB36:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 692U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng6)));
    t15 = *((unsigned int *)t3);
    t16 = *((unsigned int *)t2);
    t17 = (t15 | t16);
    *((unsigned int *)t9) = t17;
    t4 = (t3 + 4);
    t7 = (t2 + 4);
    t8 = (t9 + 4);
    t18 = *((unsigned int *)t4);
    t19 = *((unsigned int *)t7);
    t20 = (t18 | t19);
    *((unsigned int *)t8) = t20;
    t21 = *((unsigned int *)t8);
    t22 = (t21 != 0);
    if (t22 == 1)
        goto LAB37;

LAB38:
LAB39:    t13 = (t0 + 1012);
    xsi_vlogvar_assign_value(t13, t9, 0, 0, 32);

LAB31:    goto LAB21;

LAB13:    xsi_set_current_line(66, ng0);

LAB40:    xsi_set_current_line(67, ng0);
    t3 = (t0 + 692U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng5)));
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t3);
    t17 = (t15 & t16);
    *((unsigned int *)t9) = t17;
    t7 = (t4 + 4);
    t8 = (t3 + 4);
    t10 = (t9 + 4);
    t18 = *((unsigned int *)t7);
    t19 = *((unsigned int *)t8);
    t20 = (t18 | t19);
    *((unsigned int *)t10) = t20;
    t21 = *((unsigned int *)t10);
    t22 = (t21 != 0);
    if (t22 == 1)
        goto LAB41;

LAB42:
LAB43:    t14 = (t0 + 1012);
    xsi_vlogvar_assign_value(t14, t9, 0, 0, 32);
    goto LAB21;

LAB15:    xsi_set_current_line(71, ng0);

LAB44:    xsi_set_current_line(72, ng0);
    t3 = (t0 + 692U);
    t4 = *((char **)t3);
    t3 = (t0 + 668U);
    t7 = (t3 + 44U);
    t8 = *((char **)t7);
    t10 = ((char*)((ng9)));
    xsi_vlog_generic_get_index_select_value(t9, 32, t4, t8, 2, t10, 32, 1);
    t11 = ((char*)((ng1)));
    memset(t12, 0, 8);
    t13 = (t9 + 4);
    t14 = (t11 + 4);
    t15 = *((unsigned int *)t9);
    t16 = *((unsigned int *)t11);
    t17 = (t15 ^ t16);
    t18 = *((unsigned int *)t13);
    t19 = *((unsigned int *)t14);
    t20 = (t18 ^ t19);
    t21 = (t17 | t20);
    t22 = *((unsigned int *)t13);
    t23 = *((unsigned int *)t14);
    t24 = (t22 | t23);
    t25 = (~(t24));
    t26 = (t21 & t25);
    if (t26 != 0)
        goto LAB48;

LAB45:    if (t24 != 0)
        goto LAB47;

LAB46:    *((unsigned int *)t12) = 1;

LAB48:    t28 = (t12 + 4);
    t29 = *((unsigned int *)t28);
    t30 = (~(t29));
    t31 = *((unsigned int *)t12);
    t32 = (t31 & t30);
    t33 = (t32 != 0);
    if (t33 > 0)
        goto LAB49;

LAB50:    xsi_set_current_line(77, ng0);

LAB56:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 692U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng11)));
    t15 = *((unsigned int *)t3);
    t16 = *((unsigned int *)t2);
    t17 = (t15 | t16);
    *((unsigned int *)t9) = t17;
    t4 = (t3 + 4);
    t7 = (t2 + 4);
    t8 = (t9 + 4);
    t18 = *((unsigned int *)t4);
    t19 = *((unsigned int *)t7);
    t20 = (t18 | t19);
    *((unsigned int *)t8) = t20;
    t21 = *((unsigned int *)t8);
    t22 = (t21 != 0);
    if (t22 == 1)
        goto LAB57;

LAB58:
LAB59:    t13 = (t0 + 1012);
    xsi_vlogvar_assign_value(t13, t9, 0, 0, 32);

LAB51:    goto LAB21;

LAB17:    xsi_set_current_line(82, ng0);

LAB60:    xsi_set_current_line(83, ng0);
    t3 = (t0 + 692U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng10)));
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t3);
    t17 = (t15 & t16);
    *((unsigned int *)t9) = t17;
    t7 = (t4 + 4);
    t8 = (t3 + 4);
    t10 = (t9 + 4);
    t18 = *((unsigned int *)t7);
    t19 = *((unsigned int *)t8);
    t20 = (t18 | t19);
    *((unsigned int *)t10) = t20;
    t21 = *((unsigned int *)t10);
    t22 = (t21 != 0);
    if (t22 == 1)
        goto LAB61;

LAB62:
LAB63:    t14 = (t0 + 1012);
    xsi_vlogvar_assign_value(t14, t9, 0, 0, 32);
    goto LAB21;

LAB27:    t27 = (t12 + 4);
    *((unsigned int *)t12) = 1;
    *((unsigned int *)t27) = 1;
    goto LAB28;

LAB29:    xsi_set_current_line(56, ng0);

LAB32:    xsi_set_current_line(57, ng0);
    t34 = (t0 + 692U);
    t35 = *((char **)t34);
    t34 = ((char*)((ng5)));
    t37 = *((unsigned int *)t35);
    t38 = *((unsigned int *)t34);
    t39 = (t37 & t38);
    *((unsigned int *)t36) = t39;
    t40 = (t35 + 4);
    t41 = (t34 + 4);
    t42 = (t36 + 4);
    t43 = *((unsigned int *)t40);
    t44 = *((unsigned int *)t41);
    t45 = (t43 | t44);
    *((unsigned int *)t42) = t45;
    t46 = *((unsigned int *)t42);
    t47 = (t46 != 0);
    if (t47 == 1)
        goto LAB33;

LAB34:
LAB35:    t68 = (t0 + 1012);
    xsi_vlogvar_assign_value(t68, t36, 0, 0, 32);
    goto LAB31;

LAB33:    t48 = *((unsigned int *)t36);
    t49 = *((unsigned int *)t42);
    *((unsigned int *)t36) = (t48 | t49);
    t50 = (t35 + 4);
    t51 = (t34 + 4);
    t52 = *((unsigned int *)t35);
    t53 = (~(t52));
    t54 = *((unsigned int *)t50);
    t55 = (~(t54));
    t56 = *((unsigned int *)t34);
    t57 = (~(t56));
    t58 = *((unsigned int *)t51);
    t59 = (~(t58));
    t60 = (t53 & t55);
    t61 = (t57 & t59);
    t62 = (~(t60));
    t63 = (~(t61));
    t64 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t64 & t62);
    t65 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t65 & t63);
    t66 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t66 & t62);
    t67 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t67 & t63);
    goto LAB35;

LAB37:    t23 = *((unsigned int *)t9);
    t24 = *((unsigned int *)t8);
    *((unsigned int *)t9) = (t23 | t24);
    t10 = (t3 + 4);
    t11 = (t2 + 4);
    t25 = *((unsigned int *)t10);
    t26 = (~(t25));
    t29 = *((unsigned int *)t3);
    t6 = (t29 & t26);
    t30 = *((unsigned int *)t11);
    t31 = (~(t30));
    t32 = *((unsigned int *)t2);
    t60 = (t32 & t31);
    t33 = (~(t6));
    t37 = (~(t60));
    t38 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t38 & t33);
    t39 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t39 & t37);
    goto LAB39;

LAB41:    t23 = *((unsigned int *)t9);
    t24 = *((unsigned int *)t10);
    *((unsigned int *)t9) = (t23 | t24);
    t11 = (t4 + 4);
    t13 = (t3 + 4);
    t25 = *((unsigned int *)t4);
    t26 = (~(t25));
    t29 = *((unsigned int *)t11);
    t30 = (~(t29));
    t31 = *((unsigned int *)t3);
    t32 = (~(t31));
    t33 = *((unsigned int *)t13);
    t37 = (~(t33));
    t60 = (t26 & t30);
    t61 = (t32 & t37);
    t38 = (~(t60));
    t39 = (~(t61));
    t43 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t43 & t38);
    t44 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t44 & t39);
    t45 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t45 & t38);
    t46 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t46 & t39);
    goto LAB43;

LAB47:    t27 = (t12 + 4);
    *((unsigned int *)t12) = 1;
    *((unsigned int *)t27) = 1;
    goto LAB48;

LAB49:    xsi_set_current_line(73, ng0);

LAB52:    xsi_set_current_line(74, ng0);
    t34 = (t0 + 692U);
    t35 = *((char **)t34);
    t34 = ((char*)((ng10)));
    t37 = *((unsigned int *)t35);
    t38 = *((unsigned int *)t34);
    t39 = (t37 & t38);
    *((unsigned int *)t36) = t39;
    t40 = (t35 + 4);
    t41 = (t34 + 4);
    t42 = (t36 + 4);
    t43 = *((unsigned int *)t40);
    t44 = *((unsigned int *)t41);
    t45 = (t43 | t44);
    *((unsigned int *)t42) = t45;
    t46 = *((unsigned int *)t42);
    t47 = (t46 != 0);
    if (t47 == 1)
        goto LAB53;

LAB54:
LAB55:    t68 = (t0 + 1012);
    xsi_vlogvar_assign_value(t68, t36, 0, 0, 32);
    goto LAB51;

LAB53:    t48 = *((unsigned int *)t36);
    t49 = *((unsigned int *)t42);
    *((unsigned int *)t36) = (t48 | t49);
    t50 = (t35 + 4);
    t51 = (t34 + 4);
    t52 = *((unsigned int *)t35);
    t53 = (~(t52));
    t54 = *((unsigned int *)t50);
    t55 = (~(t54));
    t56 = *((unsigned int *)t34);
    t57 = (~(t56));
    t58 = *((unsigned int *)t51);
    t59 = (~(t58));
    t60 = (t53 & t55);
    t61 = (t57 & t59);
    t62 = (~(t60));
    t63 = (~(t61));
    t64 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t64 & t62);
    t65 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t65 & t63);
    t66 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t66 & t62);
    t67 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t67 & t63);
    goto LAB55;

LAB57:    t23 = *((unsigned int *)t9);
    t24 = *((unsigned int *)t8);
    *((unsigned int *)t9) = (t23 | t24);
    t10 = (t3 + 4);
    t11 = (t2 + 4);
    t25 = *((unsigned int *)t10);
    t26 = (~(t25));
    t29 = *((unsigned int *)t3);
    t6 = (t29 & t26);
    t30 = *((unsigned int *)t11);
    t31 = (~(t30));
    t32 = *((unsigned int *)t2);
    t60 = (t32 & t31);
    t33 = (~(t6));
    t37 = (~(t60));
    t38 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t38 & t33);
    t39 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t39 & t37);
    goto LAB59;

LAB61:    t23 = *((unsigned int *)t9);
    t24 = *((unsigned int *)t10);
    *((unsigned int *)t9) = (t23 | t24);
    t11 = (t4 + 4);
    t13 = (t3 + 4);
    t25 = *((unsigned int *)t4);
    t26 = (~(t25));
    t29 = *((unsigned int *)t11);
    t30 = (~(t29));
    t31 = *((unsigned int *)t3);
    t32 = (~(t31));
    t33 = *((unsigned int *)t13);
    t37 = (~(t33));
    t60 = (t26 & t30);
    t61 = (t32 & t37);
    t38 = (~(t60));
    t39 = (~(t61));
    t43 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t43 & t38);
    t44 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t44 & t39);
    t45 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t45 & t38);
    t46 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t46 & t39);
    goto LAB63;

}

static void Cont_95_2(char *t0)
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

LAB0:    t1 = (t0 + 1824U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 1012);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2072);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 2028);
    *((int *)t10) = 1;

LAB1:    return;
}


extern void work_m_00000000004059099054_3373708999_init()
{
	static char *pe[] = {(void *)Initial_35_0,(void *)Always_41_1,(void *)Cont_95_2};
	xsi_register_didat("work_m_00000000004059099054_3373708999", "isim/Test_isim_beh.exe.sim/work/m_00000000004059099054_3373708999.didat");
	xsi_register_executes(pe);
}
