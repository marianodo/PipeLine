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
    work_m_00000000003344887075_3594978696_init();
    work_m_00000000002161154416_1081711691_init();
    work_m_00000000003524406565_0644334354_init();
    work_m_00000000000112603871_1719211313_init();
    work_m_00000000002378878092_3057949069_init();
    work_m_00000000002613436621_2261736477_init();
    work_m_00000000003269830788_3214053506_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003269830788_3214053506");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
