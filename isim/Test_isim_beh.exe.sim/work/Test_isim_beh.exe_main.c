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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003048135580_1547046708_init();
    work_m_00000000003621365888_4180197267_init();
    work_m_00000000000858412841_2133777247_init();
    work_m_00000000001104711439_1420700949_init();
    work_m_00000000000433882869_3242276988_init();
    work_m_00000000001356389796_3557113662_init();
    work_m_00000000003203613188_2348638028_init();
    work_m_00000000001125242809_3046246934_init();
    work_m_00000000001322375758_1938225339_init();
    work_m_00000000001963167497_1218370333_init();
    work_m_00000000002123381022_1173698083_init();
    work_m_00000000002893474305_0039144691_init();
    work_m_00000000003093926286_2050909163_init();
    work_m_00000000000847166204_0967961054_init();
    work_m_00000000003373169502_3131067449_init();
    work_m_00000000002354460658_0115576036_init();
    work_m_00000000003383467909_2027515012_init();
    work_m_00000000004149679594_1536977722_init();
    work_m_00000000002994743635_1037888862_init();
    work_m_00000000000479091559_2765470948_init();
    work_m_00000000000967357344_2191032441_init();
    work_m_00000000000249963056_1711767055_init();
    work_m_00000000003742017629_4057259563_init();
    work_m_00000000001772927943_3811080313_init();
    work_m_00000000001322498018_3184096980_init();
    work_m_00000000004245906854_0593118768_init();
    xilinxcorelib_ver_m_00000000001358910285_0488586231_init();
    xilinxcorelib_ver_m_00000000001687936702_3463246476_init();
    xilinxcorelib_ver_m_00000000000277421008_3543862741_init();
    xilinxcorelib_ver_m_00000000003435484244_1122132952_init();
    work_m_00000000000403262735_2461264495_init();
    work_m_00000000004059099054_3373708999_init();
    work_m_00000000003909282116_4211170436_init();
    work_m_00000000002936732700_0151581637_init();
    work_m_00000000002865132558_0061379041_init();
    work_m_00000000001065661393_1723789776_init();
    work_m_00000000003507181100_2866095323_init();
    work_m_00000000001146297672_1668905219_init();
    work_m_00000000001833778824_3409648901_init();
    work_m_00000000001185352899_3597375865_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001185352899_3597375865");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
