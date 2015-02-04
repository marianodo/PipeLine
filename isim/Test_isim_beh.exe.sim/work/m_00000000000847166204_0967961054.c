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
static const char *ng0 = "C:/Users/Leo/Desktop/PipeLine/SignExtend.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {65535U, 0U};
static unsigned int ng4[] = {4294901760U, 0U};



static void Initial_25_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(26, ng0);

LAB2:    xsi_set_current_line(27, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 828);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB1:    return;
}

static void Always_30_1(char *t0)
{
    char t6[8];
    char t15[8];
    char t39[8];
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
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    char *t44;
    char *t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    char *t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    int t63;
    int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    char *t71;

LAB0:    t1 = (t0 + 1496U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1692);
    *((int *)t2) = 1;
    t3 = (t0 + 1524);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(31, ng0);

LAB5:    xsi_set_current_line(32, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t4 = (t6 + 4);
    t7 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 15);
    t10 = (t9 & 1);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 15);
    t13 = (t12 & 1);
    *((unsigned int *)t4) = t13;
    t14 = ((char*)((ng2)));
    memset(t15, 0, 8);
    t16 = (t6 + 4);
    t17 = (t14 + 4);
    t18 = *((unsigned int *)t6);
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
        goto LAB9;

LAB6:    if (t27 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t15) = 1;

LAB9:    t31 = (t15 + 4);
    t32 = *((unsigned int *)t31);
    t33 = (~(t32));
    t34 = *((unsigned int *)t15);
    t35 = (t34 & t33);
    t36 = (t35 != 0);
    if (t36 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 600U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 | t9);
    *((unsigned int *)t6) = t10;
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t7 = (t6 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t5);
    t13 = (t11 | t12);
    *((unsigned int *)t7) = t13;
    t18 = *((unsigned int *)t7);
    t19 = (t18 != 0);
    if (t19 == 1)
        goto LAB16;

LAB17:
LAB18:    t17 = (t0 + 828);
    xsi_vlogvar_assign_value(t17, t6, 0, 0, 32);

LAB12:    goto LAB2;

LAB8:    t30 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(33, ng0);
    t37 = (t0 + 600U);
    t38 = *((char **)t37);
    t37 = ((char*)((ng3)));
    t40 = *((unsigned int *)t38);
    t41 = *((unsigned int *)t37);
    t42 = (t40 & t41);
    *((unsigned int *)t39) = t42;
    t43 = (t38 + 4);
    t44 = (t37 + 4);
    t45 = (t39 + 4);
    t46 = *((unsigned int *)t43);
    t47 = *((unsigned int *)t44);
    t48 = (t46 | t47);
    *((unsigned int *)t45) = t48;
    t49 = *((unsigned int *)t45);
    t50 = (t49 != 0);
    if (t50 == 1)
        goto LAB13;

LAB14:
LAB15:    t71 = (t0 + 828);
    xsi_vlogvar_assign_value(t71, t39, 0, 0, 32);
    goto LAB12;

LAB13:    t51 = *((unsigned int *)t39);
    t52 = *((unsigned int *)t45);
    *((unsigned int *)t39) = (t51 | t52);
    t53 = (t38 + 4);
    t54 = (t37 + 4);
    t55 = *((unsigned int *)t38);
    t56 = (~(t55));
    t57 = *((unsigned int *)t53);
    t58 = (~(t57));
    t59 = *((unsigned int *)t37);
    t60 = (~(t59));
    t61 = *((unsigned int *)t54);
    t62 = (~(t61));
    t63 = (t56 & t58);
    t64 = (t60 & t62);
    t65 = (~(t63));
    t66 = (~(t64));
    t67 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t67 & t65);
    t68 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t68 & t66);
    t69 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t69 & t65);
    t70 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t70 & t66);
    goto LAB15;

LAB16:    t20 = *((unsigned int *)t6);
    t21 = *((unsigned int *)t7);
    *((unsigned int *)t6) = (t20 | t21);
    t14 = (t3 + 4);
    t16 = (t2 + 4);
    t22 = *((unsigned int *)t14);
    t23 = (~(t22));
    t24 = *((unsigned int *)t3);
    t63 = (t24 & t23);
    t25 = *((unsigned int *)t16);
    t26 = (~(t25));
    t27 = *((unsigned int *)t2);
    t64 = (t27 & t26);
    t28 = (~(t63));
    t29 = (~(t64));
    t32 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t32 & t28);
    t33 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t33 & t29);
    goto LAB18;

}


extern void work_m_00000000000847166204_0967961054_init()
{
	static char *pe[] = {(void *)Initial_25_0,(void *)Always_30_1};
	xsi_register_didat("work_m_00000000000847166204_0967961054", "isim/Test_isim_beh.exe.sim/work/m_00000000000847166204_0967961054.didat");
	xsi_register_executes(pe);
}
