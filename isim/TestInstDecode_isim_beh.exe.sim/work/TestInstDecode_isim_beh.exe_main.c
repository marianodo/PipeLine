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
    work_m_00000000001341368767_1547046708_init();
    work_m_00000000001721158875_4180197267_init();
    work_m_00000000003435732689_2133777247_init();
    work_m_00000000003371207339_3242276988_init();
    work_m_00000000001791363264_3046246934_init();
    work_m_00000000002476894966_1218370333_init();
    work_m_00000000001202156855_3409648901_init();
    work_m_00000000002163536232_2759016938_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002163536232_2759016938");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
