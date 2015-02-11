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
static const char *ng0 = "C:/Users/Leo/Desktop/PipeLine/Fifo.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {2U, 0U};
static int ng5[] = {1, 0};
static unsigned int ng6[] = {3U, 0U};



static void Always_28_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 2396U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 3168);
    *((int *)t2) = 1;
    t3 = (t0 + 2424);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(30, ng0);
    t4 = (t0 + 1688);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);
    t7 = (t0 + 1596);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 3, 0LL);
    goto LAB2;

}

static void Always_34_1(char *t0)
{
    char t11[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;

LAB0:    t1 = (t0 + 2540U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 3176);
    *((int *)t2) = 1;
    t3 = (t0 + 2568);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(35, ng0);

LAB5:    xsi_set_current_line(36, ng0);
    t4 = (t0 + 1596);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t7, 2);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 2);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 2);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 2);
    if (t8 == 1)
        goto LAB13;

LAB14:
LAB16:
LAB15:    xsi_set_current_line(58, ng0);

LAB22:    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1780);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1872);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);

LAB17:    goto LAB2;

LAB7:    xsi_set_current_line(38, ng0);

LAB18:    xsi_set_current_line(39, ng0);
    t9 = ((char*)((ng2)));
    t10 = (t0 + 1780);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 1);
    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1872);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    goto LAB17;

LAB9:    xsi_set_current_line(43, ng0);

LAB19:    xsi_set_current_line(44, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 1780);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1184U);
    t3 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t11 + 4);
    t4 = (t3 + 4);
    t12 = *((unsigned int *)t3);
    t13 = (t12 >> 0);
    *((unsigned int *)t11) = t13;
    t14 = *((unsigned int *)t4);
    t15 = (t14 >> 0);
    *((unsigned int *)t2) = t15;
    t16 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t16 & 255U);
    t17 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t17 & 255U);
    t5 = (t0 + 1872);
    xsi_vlogvar_assign_value(t5, t11, 0, 0, 8);
    goto LAB17;

LAB11:    xsi_set_current_line(48, ng0);

LAB20:    xsi_set_current_line(49, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 1780);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1184U);
    t3 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t11 + 4);
    t4 = (t3 + 4);
    t12 = *((unsigned int *)t3);
    t13 = (t12 >> 0);
    *((unsigned int *)t11) = t13;
    t14 = *((unsigned int *)t4);
    t15 = (t14 >> 0);
    *((unsigned int *)t2) = t15;
    t16 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t16 & 255U);
    t17 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t17 & 255U);
    t5 = (t0 + 1872);
    xsi_vlogvar_assign_value(t5, t11, 0, 0, 8);
    goto LAB17;

LAB13:    xsi_set_current_line(53, ng0);

LAB21:    xsi_set_current_line(54, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 1780);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1872);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    goto LAB17;

}

static void Always_67_2(char *t0)
{
    char t17[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t18;

LAB0:    t1 = (t0 + 2684U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 3184);
    *((int *)t2) = 1;
    t3 = (t0 + 2712);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(68, ng0);

LAB5:    xsi_set_current_line(69, ng0);
    t4 = (t0 + 1596);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t7, 2);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 2);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 2);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 2);
    if (t8 == 1)
        goto LAB13;

LAB14:
LAB16:
LAB15:    xsi_set_current_line(96, ng0);

LAB25:    xsi_set_current_line(97, ng0);
    t2 = ((char*)((ng1)));
    memcpy(t17, t2, 8);
    t3 = (t0 + 1688);
    xsi_vlogvar_assign_value(t3, t17, 0, 0, 3);

LAB17:    goto LAB2;

LAB7:    xsi_set_current_line(71, ng0);

LAB18:    xsi_set_current_line(72, ng0);
    t9 = (t0 + 1092U);
    t10 = *((char **)t9);
    t9 = (t10 + 4);
    t11 = *((unsigned int *)t9);
    t12 = (~(t11));
    t13 = *((unsigned int *)t10);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB19;

LAB20:    xsi_set_current_line(75, ng0);
    t2 = ((char*)((ng1)));
    memcpy(t17, t2, 8);
    t3 = (t0 + 1688);
    xsi_vlogvar_assign_value(t3, t17, 0, 0, 3);

LAB21:    goto LAB17;

LAB9:    xsi_set_current_line(78, ng0);

LAB22:    xsi_set_current_line(80, ng0);
    t3 = ((char*)((ng4)));
    memcpy(t17, t3, 8);
    t4 = (t0 + 1688);
    xsi_vlogvar_assign_value(t4, t17, 0, 0, 3);
    goto LAB17;

LAB11:    xsi_set_current_line(84, ng0);

LAB23:    xsi_set_current_line(86, ng0);
    t3 = ((char*)((ng6)));
    memcpy(t17, t3, 8);
    t4 = (t0 + 1688);
    xsi_vlogvar_assign_value(t4, t17, 0, 0, 3);
    goto LAB17;

LAB13:    xsi_set_current_line(90, ng0);

LAB24:    xsi_set_current_line(92, ng0);
    t3 = ((char*)((ng1)));
    memcpy(t17, t3, 8);
    t4 = (t0 + 1688);
    xsi_vlogvar_assign_value(t4, t17, 0, 0, 3);
    goto LAB17;

LAB19:    xsi_set_current_line(73, ng0);
    t16 = ((char*)((ng3)));
    memcpy(t17, t16, 8);
    t18 = (t0 + 1688);
    xsi_vlogvar_assign_value(t18, t17, 0, 0, 3);
    goto LAB21;

}

static void Cont_102_3(char *t0)
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

LAB0:    t1 = (t0 + 2828U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 1872);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3244);
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
    t18 = (t0 + 3192);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_103_4(char *t0)
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

LAB0:    t1 = (t0 + 2972U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 1780);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3280);
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
    t18 = (t0 + 3200);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000000112603871_1719211313_init()
{
	static char *pe[] = {(void *)Always_28_0,(void *)Always_34_1,(void *)Always_67_2,(void *)Cont_102_3,(void *)Cont_103_4};
	xsi_register_didat("work_m_00000000000112603871_1719211313", "isim/Test_isim_beh.exe.sim/work/m_00000000000112603871_1719211313.didat");
	xsi_register_executes(pe);
}
