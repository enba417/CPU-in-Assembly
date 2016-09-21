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
    work_m_00000000001825082455_2795095106_init();
    work_m_00000000002936228718_1752074898_init();
    work_m_00000000000679804045_1733863084_init();
    work_m_00000000000376008265_3148384703_init();
    work_m_00000000000855558892_3681523451_init();
    work_m_00000000002660629029_0886308060_init();
    work_m_00000000001157482844_1790630962_init();
    work_m_00000000002013452923_2073120511_init();


    xsi_register_tops("work_m_00000000001157482844_1790630962");
    xsi_register_tops("work_m_00000000002013452923_2073120511");


    return xsi_run_simulation(argc, argv);

}
