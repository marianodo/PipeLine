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
static const char *ng0 = "C:/Users/Nano/Google Drive/PipeLine/EqualBranch.v";
static int ng1[] = {1, 0};
static int ng2[] = {0, 0};



static void Always_27_0(char *t0)
{
    char t15[8];
    char t30[8];
    char t70[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t16;
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
    unsigned int t27;
    unsigned int t28;
    char *t29;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    char *t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    int t54;
    int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    char *t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    char *t68;
    char *t69;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;

LAB0:    t1 = (t0 + 1720U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 2060);
    *((int *)t2) = 1;
    t3 = (t0 + 1748);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(28, ng0);

LAB5:    xsi_set_current_line(29, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(47, ng0);

LAB37:    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(30, ng0);

LAB9:    xsi_set_current_line(31, ng0);
    t11 = (t0 + 692U);
    t12 = *((char **)t11);
    t11 = (t0 + 784U);
    t13 = *((char **)t11);
    t11 = (t0 + 876U);
    t14 = *((char **)t11);
    memset(t15, 0, 8);
    t11 = (t13 + 4);
    t16 = (t14 + 4);
    t17 = *((unsigned int *)t13);
    t18 = *((unsigned int *)t14);
    t19 = (t17 ^ t18);
    t20 = *((unsigned int *)t11);
    t21 = *((unsigned int *)t16);
    t22 = (t20 ^ t21);
    t23 = (t19 | t22);
    t24 = *((unsigned int *)t11);
    t25 = *((unsigned int *)t16);
    t26 = (t24 | t25);
    t27 = (~(t26));
    t28 = (t23 & t27);
    if (t28 != 0)
        goto LAB13;

LAB10:    if (t26 != 0)
        goto LAB12;

LAB11:    *((unsigned int *)t15) = 1;

LAB13:    t31 = *((unsigned int *)t12);
    t32 = *((unsigned int *)t15);
    t33 = (t31 & t32);
    *((unsigned int *)t30) = t33;
    t34 = (t12 + 4);
    t35 = (t15 + 4);
    t36 = (t30 + 4);
    t37 = *((unsigned int *)t34);
    t38 = *((unsigned int *)t35);
    t39 = (t37 | t38);
    *((unsigned int *)t36) = t39;
    t40 = *((unsigned int *)t36);
    t41 = (t40 != 0);
    if (t41 == 1)
        goto LAB14;

LAB15:
LAB16:    t62 = (t30 + 4);
    t63 = *((unsigned int *)t62);
    t64 = (~(t63));
    t65 = *((unsigned int *)t30);
    t66 = (t65 & t64);
    t67 = (t66 != 0);
    if (t67 > 0)
        goto LAB17;

LAB18:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 692U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t15, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t2);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t17 = (t9 ^ t10);
    t18 = (t8 | t17);
    t19 = *((unsigned int *)t4);
    t20 = *((unsigned int *)t5);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB24;

LAB21:    if (t21 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t15) = 1;

LAB24:    t12 = (t0 + 784U);
    t13 = *((char **)t12);
    t12 = (t0 + 876U);
    t14 = *((char **)t12);
    memset(t30, 0, 8);
    t12 = (t13 + 4);
    t16 = (t14 + 4);
    t24 = *((unsigned int *)t13);
    t25 = *((unsigned int *)t14);
    t26 = (t24 ^ t25);
    t27 = *((unsigned int *)t12);
    t28 = *((unsigned int *)t16);
    t31 = (t27 ^ t28);
    t32 = (t26 | t31);
    t33 = *((unsigned int *)t12);
    t37 = *((unsigned int *)t16);
    t38 = (t33 | t37);
    t39 = (~(t38));
    t40 = (t32 & t39);
    if (t40 != 0)
        goto LAB26;

LAB25:    if (t38 != 0)
        goto LAB27;

LAB28:    t41 = *((unsigned int *)t15);
    t42 = *((unsigned int *)t30);
    t43 = (t41 & t42);
    *((unsigned int *)t70) = t43;
    t34 = (t15 + 4);
    t35 = (t30 + 4);
    t36 = (t70 + 4);
    t46 = *((unsigned int *)t34);
    t47 = *((unsigned int *)t35);
    t48 = (t46 | t47);
    *((unsigned int *)t36) = t48;
    t49 = *((unsigned int *)t36);
    t50 = (t49 != 0);
    if (t50 == 1)
        goto LAB29;

LAB30:
LAB31:    t62 = (t70 + 4);
    t73 = *((unsigned int *)t62);
    t74 = (~(t73));
    t75 = *((unsigned int *)t70);
    t76 = (t75 & t74);
    t77 = (t76 != 0);
    if (t77 > 0)
        goto LAB32;

LAB33:    xsi_set_current_line(42, ng0);

LAB36:    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB34:
LAB19:    goto LAB8;

LAB12:    t29 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB13;

LAB14:    t42 = *((unsigned int *)t30);
    t43 = *((unsigned int *)t36);
    *((unsigned int *)t30) = (t42 | t43);
    t44 = (t12 + 4);
    t45 = (t15 + 4);
    t46 = *((unsigned int *)t12);
    t47 = (~(t46));
    t48 = *((unsigned int *)t44);
    t49 = (~(t48));
    t50 = *((unsigned int *)t15);
    t51 = (~(t50));
    t52 = *((unsigned int *)t45);
    t53 = (~(t52));
    t54 = (t47 & t49);
    t55 = (t51 & t53);
    t56 = (~(t54));
    t57 = (~(t55));
    t58 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t58 & t56);
    t59 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t59 & t57);
    t60 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t60 & t56);
    t61 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t61 & t57);
    goto LAB16;

LAB17:    xsi_set_current_line(33, ng0);

LAB20:    xsi_set_current_line(34, ng0);
    t68 = ((char*)((ng1)));
    t69 = (t0 + 1196);
    xsi_vlogvar_assign_value(t69, t68, 0, 0, 1);
    goto LAB19;

LAB23:    t11 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB24;

LAB26:    *((unsigned int *)t30) = 1;
    goto LAB28;

LAB27:    t29 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB28;

LAB29:    t51 = *((unsigned int *)t70);
    t52 = *((unsigned int *)t36);
    *((unsigned int *)t70) = (t51 | t52);
    t44 = (t15 + 4);
    t45 = (t30 + 4);
    t53 = *((unsigned int *)t15);
    t56 = (~(t53));
    t57 = *((unsigned int *)t44);
    t58 = (~(t57));
    t59 = *((unsigned int *)t30);
    t60 = (~(t59));
    t61 = *((unsigned int *)t45);
    t63 = (~(t61));
    t54 = (t56 & t58);
    t55 = (t60 & t63);
    t64 = (~(t54));
    t65 = (~(t55));
    t66 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t66 & t64);
    t67 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t67 & t65);
    t71 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t71 & t64);
    t72 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t72 & t65);
    goto LAB31;

LAB32:    xsi_set_current_line(38, ng0);

LAB35:    xsi_set_current_line(39, ng0);
    t68 = ((char*)((ng1)));
    t69 = (t0 + 1196);
    xsi_vlogvar_assign_value(t69, t68, 0, 0, 1);
    goto LAB34;

}

static void Cont_52_1(char *t0)
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

LAB0:    t1 = (t0 + 1864U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1196);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2112);
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
    t18 = (t0 + 2068);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000003093926286_2050909163_init()
{
	static char *pe[] = {(void *)Always_27_0,(void *)Cont_52_1};
	xsi_register_didat("work_m_00000000003093926286_2050909163", "isim/Test_isim_beh.exe.sim/work/m_00000000003093926286_2050909163.didat");
	xsi_register_executes(pe);
}
