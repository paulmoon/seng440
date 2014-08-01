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

/* This file is designed for use with ISim build 0x2f00eba5 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Documents and Settings/paulmoon/Desktop/SENG440/huffman/huffman_decoder.vhd";
extern char *IEEE_P_2592010699;
extern char *STD_STANDARD;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0485247873_3212880686_p_0(char *t0)
{
    char t11[16];
    char t18[16];
    char t20[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    int t7;
    int t8;
    unsigned char t9;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    int t15;
    char *t16;
    char *t17;
    char *t19;
    char *t21;
    char *t22;
    int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned char t30;
    int t31;
    unsigned int t32;

LAB0:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 568U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 1996);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(53, ng0);
    t3 = (t0 + 1108U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t3 = (t0 + 1040U);
    t6 = *((char **)t3);
    t7 = *((int *)t6);
    t8 = (t7 + 1);
    t9 = (t5 <= t8);
    if (t9 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(54, ng0);
    t3 = (t0 + 3992);
    t12 = ((STD_STANDARD) + 240);
    t13 = (t0 + 1108U);
    t14 = *((char **)t13);
    t15 = *((int *)t14);
    t13 = xsi_int_to_mem(t15);
    t16 = xsi_string_variable_get_image(t11, t12, t13);
    t19 = ((STD_STANDARD) + 664);
    t21 = (t20 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 1;
    t22 = (t21 + 4U);
    *((int *)t22) = 3;
    t22 = (t21 + 8U);
    *((int *)t22) = 1;
    t23 = (3 - 1);
    t24 = (t23 * 1);
    t24 = (t24 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t24;
    t17 = xsi_base_array_concat(t17, t18, t19, (char)97, t3, t20, (char)97, t16, t11, (char)101);
    t22 = (t11 + 12U);
    t24 = *((unsigned int *)t22);
    t25 = (3U + t24);
    xsi_report(t17, t25, 0);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 684U);
    t3 = *((char **)t1);
    t1 = (t0 + 1108U);
    t4 = *((char **)t1);
    t5 = *((int *)t4);
    t7 = (t5 - 1);
    t8 = (t7 - 0);
    t24 = (t8 * 1);
    xsi_vhdl_check_range_of_index(0, 43, 1, t7);
    t25 = (1U * t24);
    t26 = (0 + t25);
    t1 = (t3 + t26);
    t2 = *((unsigned char *)t1);
    t9 = (t2 == (unsigned char)2);
    if (t9 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1244U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t7 = (t5 + 1);
    t1 = (t0 + 1244U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t7;

LAB9:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1108U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t7 = (t5 + 1);
    t1 = (t0 + 1108U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t7;
    goto LAB6;

LAB8:    xsi_set_current_line(56, ng0);
    t6 = (t0 + 3995);
    t12 = (t0 + 776U);
    t13 = *((char **)t12);
    t12 = (t0 + 1244U);
    t14 = *((char **)t12);
    t15 = *((int *)t14);
    t23 = (t15 - 1);
    t27 = (t23 * 1);
    xsi_vhdl_check_range_of_index(1, 6, 1, t15);
    t28 = (1U * t27);
    t29 = (0 + t28);
    t12 = (t13 + t29);
    t30 = *((unsigned char *)t12);
    t17 = ((STD_STANDARD) + 664);
    t19 = (t18 + 0U);
    t21 = (t19 + 0U);
    *((int *)t21) = 1;
    t21 = (t19 + 4U);
    *((int *)t21) = 9;
    t21 = (t19 + 8U);
    *((int *)t21) = 1;
    t31 = (9 - 1);
    t32 = (t31 * 1);
    t32 = (t32 + 1);
    t21 = (t19 + 12U);
    *((unsigned int *)t21) = t32;
    t16 = xsi_base_array_concat(t16, t11, t17, (char)97, t6, t18, (char)99, t30, (char)101);
    t32 = (9U + 1U);
    xsi_report(t16, t32, 0);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 776U);
    t3 = *((char **)t1);
    t1 = (t0 + 1244U);
    t4 = *((char **)t1);
    t5 = *((int *)t4);
    t7 = (t5 - 1);
    t24 = (t7 * 1);
    xsi_vhdl_check_range_of_index(1, 6, 1, t5);
    t25 = (1U * t24);
    t26 = (0 + t25);
    t1 = (t3 + t26);
    t2 = *((unsigned char *)t1);
    t6 = (t0 + 1176U);
    t10 = *((char **)t6);
    t8 = *((int *)t10);
    t15 = (32 - t8);
    t23 = (t15 + 1);
    t31 = (t23 - 32);
    t27 = (t31 * -1);
    t28 = (1 * t27);
    t29 = (0U + t28);
    t6 = (t0 + 2040);
    t12 = (t6 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t16 = *((char **)t14);
    *((unsigned char *)t16) = t2;
    xsi_driver_first_trans_delta(t6, t29, 1, 0LL);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1176U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t7 = (t5 + 1);
    t1 = (t0 + 1176U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t7;
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1244U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = 1;
    goto LAB9;

}


extern void work_a_0485247873_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0485247873_3212880686_p_0};
	xsi_register_didat("work_a_0485247873_3212880686", "isim/huffman_testbench_isim_beh.exe.sim/work/a_0485247873_3212880686.didat");
	xsi_register_executes(pe);
}
