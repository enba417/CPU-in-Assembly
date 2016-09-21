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
static const char *ng0 = "C:/Users/012877915/Desktop/Lab2.3/Lab2.3/ALU_TestPlus.v";
static int ng1[] = {0, 0};
static const char *ng2 = "Zero Flag is being tested";
static const char *ng3 = "Output = %h\tZero = %b";
static unsigned int ng4[] = {365664U, 0U};
static int ng5[] = {2, 0};
static unsigned int ng6[] = {36U, 0U};
static unsigned int ng7[] = {2U, 0U};
static const char *ng8 = "Testing the AND operation";
static const char *ng9 = "Check if equal to %h";
static unsigned int ng10[] = {37U, 0U};
static const char *ng11 = "Testing the OR operation";
static unsigned int ng12[] = {32U, 0U};
static const char *ng13 = "Testing the ADD operation";
static unsigned int ng14[] = {34U, 0U};
static const char *ng15 = "Testing the Subtract operation";
static unsigned int ng16[] = {42U, 0U};
static const char *ng17 = "Testing the Set on Less then operation";
static unsigned int ng18[] = {39U, 0U};
static const char *ng19 = "Testing the NOR operation";
static unsigned int ng20[] = {0U, 0U};
static const char *ng21 = "Testing the default operation";



static void Initial_30_0(char *t0)
{
    char t5[8];
    char t40[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    int t32;
    int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;

LAB0:    t1 = (t0 + 1904U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);

LAB4:    xsi_set_current_line(32, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(33, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(34, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 6);
    xsi_set_current_line(35, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1380);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(36, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1804);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(39, ng0);
    xsi_vlogfile_write(1, 0, 0, ng2, 1, t0);
    xsi_set_current_line(40, ng0);
    t2 = (t0 + 692U);
    t3 = *((char **)t2);
    t2 = (t0 + 600U);
    t4 = *((char **)t2);
    xsi_vlogfile_write(1, 0, 0, ng3, 3, t0, (char)118, t3, 32, (char)118, t4, 1);
    xsi_set_current_line(41, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(42, ng0);
    t2 = ((char*)((ng5)));
    t3 = ((char*)((ng4)));
    memset(t5, 0, 8);
    xsi_vlog_unsigned_multiply(t5, 32, t2, 32, t3, 32);
    t4 = (t0 + 1104);
    xsi_vlogvar_assign_value(t4, t5, 0, 0, 32);
    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 6);
    xsi_set_current_line(44, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 1380);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1804);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(46, ng0);
    t3 = (t0 + 784U);
    t4 = *((char **)t3);
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 4);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1804);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(48, ng0);
    xsi_vlogfile_write(1, 0, 0, ng8, 1, t0);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 692U);
    t3 = *((char **)t2);
    t2 = (t0 + 600U);
    t4 = *((char **)t2);
    xsi_vlogfile_write(1, 0, 0, ng3, 3, t0, (char)118, t3, 32, (char)118, t4, 1);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1012);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t6 = (t0 + 1104);
    t7 = (t6 + 36U);
    t8 = *((char **)t7);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t8);
    t11 = (t9 & t10);
    *((unsigned int *)t5) = t11;
    t12 = (t4 + 4);
    t13 = (t8 + 4);
    t14 = (t5 + 4);
    t15 = *((unsigned int *)t12);
    t16 = *((unsigned int *)t13);
    t17 = (t15 | t16);
    *((unsigned int *)t14) = t17;
    t18 = *((unsigned int *)t14);
    t19 = (t18 != 0);
    if (t19 == 1)
        goto LAB8;

LAB9:
LAB10:    xsi_vlogfile_write(1, 0, 0, ng9, 2, t0, (char)118, t5, 32);
    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 6);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1804);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB8:    t20 = *((unsigned int *)t5);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t5) = (t20 | t21);
    t22 = (t4 + 4);
    t23 = (t8 + 4);
    t24 = *((unsigned int *)t4);
    t25 = (~(t24));
    t26 = *((unsigned int *)t22);
    t27 = (~(t26));
    t28 = *((unsigned int *)t8);
    t29 = (~(t28));
    t30 = *((unsigned int *)t23);
    t31 = (~(t30));
    t32 = (t25 & t27);
    t33 = (t29 & t31);
    t34 = (~(t32));
    t35 = (~(t33));
    t36 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t36 & t34);
    t37 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t37 & t35);
    t38 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t38 & t34);
    t39 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t39 & t35);
    goto LAB10;

LAB11:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = (t0 + 1196);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 4);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1804);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB12;
    goto LAB1;

LAB12:    xsi_set_current_line(55, ng0);
    xsi_vlogfile_write(1, 0, 0, ng11, 1, t0);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 692U);
    t3 = *((char **)t2);
    t2 = (t0 + 600U);
    t4 = *((char **)t2);
    xsi_vlogfile_write(1, 0, 0, ng3, 3, t0, (char)118, t3, 32, (char)118, t4, 1);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1012);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t6 = (t0 + 1104);
    t7 = (t6 + 36U);
    t8 = *((char **)t7);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t8);
    t11 = (t9 | t10);
    *((unsigned int *)t5) = t11;
    t12 = (t4 + 4);
    t13 = (t8 + 4);
    t14 = (t5 + 4);
    t15 = *((unsigned int *)t12);
    t16 = *((unsigned int *)t13);
    t17 = (t15 | t16);
    *((unsigned int *)t14) = t17;
    t18 = *((unsigned int *)t14);
    t19 = (t18 != 0);
    if (t19 == 1)
        goto LAB13;

LAB14:
LAB15:    xsi_vlogfile_write(1, 0, 0, ng9, 2, t0, (char)118, t5, 32);
    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 1288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 6);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1804);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB16;
    goto LAB1;

LAB13:    t20 = *((unsigned int *)t5);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t5) = (t20 | t21);
    t22 = (t4 + 4);
    t23 = (t8 + 4);
    t24 = *((unsigned int *)t22);
    t25 = (~(t24));
    t26 = *((unsigned int *)t4);
    t32 = (t26 & t25);
    t27 = *((unsigned int *)t23);
    t28 = (~(t27));
    t29 = *((unsigned int *)t8);
    t33 = (t29 & t28);
    t30 = (~(t32));
    t31 = (~(t33));
    t34 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t34 & t30);
    t35 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t35 & t31);
    goto LAB15;

LAB16:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = (t0 + 1196);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 4);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1804);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB17;
    goto LAB1;

LAB17:    xsi_set_current_line(62, ng0);
    xsi_vlogfile_write(1, 0, 0, ng13, 1, t0);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 692U);
    t3 = *((char **)t2);
    t2 = (t0 + 600U);
    t4 = *((char **)t2);
    xsi_vlogfile_write(1, 0, 0, ng3, 3, t0, (char)118, t3, 32, (char)118, t4, 1);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1012);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t6 = (t0 + 1104);
    t7 = (t6 + 36U);
    t8 = *((char **)t7);
    memset(t5, 0, 8);
    xsi_vlog_unsigned_add(t5, 32, t4, 32, t8, 32);
    xsi_vlogfile_write(1, 0, 0, ng9, 2, t0, (char)118, t5, 32);
    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng14)));
    t3 = (t0 + 1288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 6);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1804);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB18;
    goto LAB1;

LAB18:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = (t0 + 1196);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 4);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 1804);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB19:    xsi_set_current_line(69, ng0);
    xsi_vlogfile_write(1, 0, 0, ng15, 1, t0);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 692U);
    t3 = *((char **)t2);
    t2 = (t0 + 600U);
    t4 = *((char **)t2);
    xsi_vlogfile_write(1, 0, 0, ng3, 3, t0, (char)118, t3, 32, (char)118, t4, 1);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 1012);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t6 = (t0 + 1104);
    t7 = (t6 + 36U);
    t8 = *((char **)t7);
    memset(t5, 0, 8);
    xsi_vlog_unsigned_minus(t5, 32, t4, 32, t8, 32);
    xsi_vlogfile_write(1, 0, 0, ng9, 2, t0, (char)118, t5, 32);
    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng16)));
    t3 = (t0 + 1288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 6);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 1804);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB20;
    goto LAB1;

LAB20:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = (t0 + 1196);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 4);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 1804);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB21;
    goto LAB1;

LAB21:    xsi_set_current_line(76, ng0);
    xsi_vlogfile_write(1, 0, 0, ng17, 1, t0);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 692U);
    t3 = *((char **)t2);
    t2 = (t0 + 600U);
    t4 = *((char **)t2);
    xsi_vlogfile_write(1, 0, 0, ng3, 3, t0, (char)118, t3, 32, (char)118, t4, 1);
    xsi_set_current_line(78, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 1288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 6);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 1804);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB22;
    goto LAB1;

LAB22:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = (t0 + 1196);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 4);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 1804);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB23:    xsi_set_current_line(82, ng0);
    xsi_vlogfile_write(1, 0, 0, ng19, 1, t0);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 692U);
    t3 = *((char **)t2);
    t2 = (t0 + 600U);
    t4 = *((char **)t2);
    xsi_vlogfile_write(1, 0, 0, ng3, 3, t0, (char)118, t3, 32, (char)118, t4, 1);
    xsi_set_current_line(84, ng0);
    t2 = (t0 + 1012);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t6 = (t0 + 1104);
    t7 = (t6 + 36U);
    t8 = *((char **)t7);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t8);
    t11 = (t9 | t10);
    *((unsigned int *)t40) = t11;
    t12 = (t4 + 4);
    t13 = (t8 + 4);
    t14 = (t40 + 4);
    t15 = *((unsigned int *)t12);
    t16 = *((unsigned int *)t13);
    t17 = (t15 | t16);
    *((unsigned int *)t14) = t17;
    t18 = *((unsigned int *)t14);
    t19 = (t18 != 0);
    if (t19 == 1)
        goto LAB24;

LAB25:
LAB26:    memset(t5, 0, 8);
    t41 = (t5 + 4);
    t42 = (t40 + 4);
    t36 = *((unsigned int *)t40);
    t37 = (~(t36));
    *((unsigned int *)t5) = t37;
    *((unsigned int *)t41) = 0;
    if (*((unsigned int *)t42) != 0)
        goto LAB28;

LAB27:    t45 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t45 & 4294967295U);
    t46 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t46 & 4294967295U);
    xsi_vlogfile_write(1, 0, 0, ng9, 2, t0, (char)118, t5, 32);
    xsi_set_current_line(85, ng0);
    t2 = ((char*)((ng20)));
    t3 = (t0 + 1288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 6);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 1804);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB29;
    goto LAB1;

LAB24:    t20 = *((unsigned int *)t40);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t40) = (t20 | t21);
    t22 = (t4 + 4);
    t23 = (t8 + 4);
    t24 = *((unsigned int *)t22);
    t25 = (~(t24));
    t26 = *((unsigned int *)t4);
    t32 = (t26 & t25);
    t27 = *((unsigned int *)t23);
    t28 = (~(t27));
    t29 = *((unsigned int *)t8);
    t33 = (t29 & t28);
    t30 = (~(t32));
    t31 = (~(t33));
    t34 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t34 & t30);
    t35 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t35 & t31);
    goto LAB26;

LAB28:    t38 = *((unsigned int *)t5);
    t39 = *((unsigned int *)t42);
    *((unsigned int *)t5) = (t38 | t39);
    t43 = *((unsigned int *)t41);
    t44 = *((unsigned int *)t42);
    *((unsigned int *)t41) = (t43 | t44);
    goto LAB27;

LAB29:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = (t0 + 1196);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 4);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 1804);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB30;
    goto LAB1;

LAB30:    xsi_set_current_line(89, ng0);
    xsi_vlogfile_write(1, 0, 0, ng21, 1, t0);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 692U);
    t3 = *((char **)t2);
    t2 = (t0 + 600U);
    t4 = *((char **)t2);
    xsi_vlogfile_write(1, 0, 0, ng3, 3, t0, (char)118, t3, 32, (char)118, t4, 1);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 1804);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB31:    xsi_set_current_line(93, ng0);
    xsi_vlog_stop(1);
    goto LAB1;

}


extern void work_m_00000000003923358074_0415942992_init()
{
	static char *pe[] = {(void *)Initial_30_0};
	xsi_register_didat("work_m_00000000003923358074_0415942992", "isim/ALU_TestPlus_isim_beh.exe.sim/work/m_00000000003923358074_0415942992.didat");
	xsi_register_executes(pe);
}
