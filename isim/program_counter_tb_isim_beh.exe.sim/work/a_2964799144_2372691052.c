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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ise/computer/tasnim/cpu_design/program_counter_tb.vhd";
extern char *IEEE_P_1242562249;
extern char *STD_STANDARD;

char *ieee_p_1242562249_sub_10420449594411817395_1035706684(char *, char *, int , int );


static void work_a_2964799144_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 2624U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 3256);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(26, ng0);
    t2 = (t0 + 1648U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2432);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 3256);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(27, ng0);
    t2 = (t0 + 1648U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2432);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_2964799144_2372691052_p_1(char *t0)
{
    char t14[16];
    char t18[16];
    char t24[16];
    char t26[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    unsigned char t8;
    unsigned int t9;
    char *t10;
    char *t11;
    int t12;
    int t13;
    int t15;
    unsigned int t16;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t25;
    char *t27;
    char *t28;
    int t29;
    unsigned int t30;
    unsigned int t31;

LAB0:    t1 = (t0 + 2872U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 3320);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1648U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 2680);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(33, ng0);
    t7 = (1 * 1000LL);
    t2 = (t0 + 2680);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5336);
    t8 = 1;
    if (4U == 4U)
        goto LAB14;

LAB15:    t8 = 0;

LAB16:    if (t8 == 0)
        goto LAB12;

LAB13:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 3320);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(37, ng0);
    t2 = (t0 + 5360);
    *((int *)t2) = 1;
    t3 = (t0 + 5364);
    *((int *)t3) = 16;
    t12 = 1;
    t13 = 16;

LAB20:    if (t12 <= t13)
        goto LAB21;

LAB23:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1648U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 2680);
    xsi_process_wait(t2, t7);

LAB39:    *((char **)t1) = &&LAB40;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    t10 = (t0 + 5340);
    xsi_report(t10, 20U, (unsigned char)2);
    goto LAB13;

LAB14:    t9 = 0;

LAB17:    if (t9 < 4U)
        goto LAB18;
    else
        goto LAB16;

LAB18:    t5 = (t3 + t9);
    t6 = (t2 + t9);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB15;

LAB19:    t9 = (t9 + 1);
    goto LAB17;

LAB21:    xsi_set_current_line(38, ng0);
    t4 = (t0 + 1648U);
    t5 = *((char **)t4);
    t7 = *((int64 *)t5);
    t4 = (t0 + 2680);
    xsi_process_wait(t4, t7);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB22:    t2 = (t0 + 5360);
    t12 = *((int *)t2);
    t3 = (t0 + 5364);
    t13 = *((int *)t3);
    if (t12 == t13)
        goto LAB23;

LAB36:    t15 = (t12 + 1);
    t12 = t15;
    t4 = (t0 + 5360);
    *((int *)t4) = t12;
    goto LAB20;

LAB24:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5360);
    t15 = xsi_vhdl_mod(*((int *)t2), 16);
    t4 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t14, t15, 4);
    t5 = (t14 + 12U);
    t9 = *((unsigned int *)t5);
    t9 = (t9 * 1U);
    t8 = 1;
    if (4U == t9)
        goto LAB30;

LAB31:    t8 = 0;

LAB32:    if (t8 == 0)
        goto LAB28;

LAB29:    goto LAB22;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB28:    t11 = (t0 + 5368);
    t19 = ((STD_STANDARD) + 384);
    t20 = (t0 + 5360);
    t21 = xsi_int_to_mem(*((int *)t20));
    t22 = xsi_string_variable_get_image(t18, t19, t21);
    t25 = ((STD_STANDARD) + 984);
    t27 = (t26 + 0U);
    t28 = (t27 + 0U);
    *((int *)t28) = 1;
    t28 = (t27 + 4U);
    *((int *)t28) = 23;
    t28 = (t27 + 8U);
    *((int *)t28) = 1;
    t29 = (23 - 1);
    t30 = (t29 * 1);
    t30 = (t30 + 1);
    t28 = (t27 + 12U);
    *((unsigned int *)t28) = t30;
    t23 = xsi_base_array_concat(t23, t24, t25, (char)97, t11, t26, (char)97, t22, t18, (char)101);
    t28 = (t18 + 12U);
    t30 = *((unsigned int *)t28);
    t31 = (23U + t30);
    xsi_report(t23, t31, (unsigned char)2);
    goto LAB29;

LAB30:    t16 = 0;

LAB33:    if (t16 < 4U)
        goto LAB34;
    else
        goto LAB32;

LAB34:    t6 = (t3 + t16);
    t10 = (t4 + t16);
    if (*((unsigned char *)t6) != *((unsigned char *)t10))
        goto LAB31;

LAB35:    t16 = (t16 + 1);
    goto LAB33;

LAB37:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1648U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 2680);
    xsi_process_wait(t2, t7);

LAB43:    *((char **)t1) = &&LAB44;
    goto LAB1;

LAB38:    goto LAB37;

LAB40:    goto LAB38;

LAB41:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1648U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 2680);
    xsi_process_wait(t2, t7);

LAB47:    *((char **)t1) = &&LAB48;
    goto LAB1;

LAB42:    goto LAB41;

LAB44:    goto LAB42;

LAB45:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5391);
    t8 = 1;
    if (4U == 4U)
        goto LAB51;

LAB52:    t8 = 0;

LAB53:    if (t8 == 0)
        goto LAB49;

LAB50:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 3320);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1648U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 2680);
    xsi_process_wait(t2, t7);

LAB59:    *((char **)t1) = &&LAB60;
    goto LAB1;

LAB46:    goto LAB45;

LAB48:    goto LAB46;

LAB49:    t10 = (t0 + 5395);
    xsi_report(t10, 41U, (unsigned char)2);
    goto LAB50;

LAB51:    t9 = 0;

LAB54:    if (t9 < 4U)
        goto LAB55;
    else
        goto LAB53;

LAB55:    t5 = (t3 + t9);
    t6 = (t2 + t9);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB52;

LAB56:    t9 = (t9 + 1);
    goto LAB54;

LAB57:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5436);
    t8 = 1;
    if (4U == 4U)
        goto LAB63;

LAB64:    t8 = 0;

LAB65:    if (t8 == 0)
        goto LAB61;

LAB62:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1648U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 2680);
    xsi_process_wait(t2, t7);

LAB71:    *((char **)t1) = &&LAB72;
    goto LAB1;

LAB58:    goto LAB57;

LAB60:    goto LAB58;

LAB61:    t10 = (t0 + 5440);
    xsi_report(t10, 28U, (unsigned char)2);
    goto LAB62;

LAB63:    t9 = 0;

LAB66:    if (t9 < 4U)
        goto LAB67;
    else
        goto LAB65;

LAB67:    t5 = (t3 + t9);
    t6 = (t2 + t9);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB64;

LAB68:    t9 = (t9 + 1);
    goto LAB66;

LAB69:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5468);
    t8 = 1;
    if (4U == 4U)
        goto LAB75;

LAB76:    t8 = 0;

LAB77:    if (t8 == 0)
        goto LAB73;

LAB74:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 3320);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1648U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 2680);
    xsi_process_wait(t2, t7);

LAB83:    *((char **)t1) = &&LAB84;
    goto LAB1;

LAB70:    goto LAB69;

LAB72:    goto LAB70;

LAB73:    t10 = (t0 + 5472);
    xsi_report(t10, 36U, (unsigned char)2);
    goto LAB74;

LAB75:    t9 = 0;

LAB78:    if (t9 < 4U)
        goto LAB79;
    else
        goto LAB77;

LAB79:    t5 = (t3 + t9);
    t6 = (t2 + t9);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB76;

LAB80:    t9 = (t9 + 1);
    goto LAB78;

LAB81:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5508);
    t8 = 1;
    if (4U == 4U)
        goto LAB87;

LAB88:    t8 = 0;

LAB89:    if (t8 == 0)
        goto LAB85;

LAB86:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 5540);
    xsi_report(t2, 36U, (unsigned char)0);
    xsi_set_current_line(60, ng0);

LAB95:    *((char **)t1) = &&LAB96;
    goto LAB1;

LAB82:    goto LAB81;

LAB84:    goto LAB82;

LAB85:    t10 = (t0 + 5512);
    xsi_report(t10, 28U, (unsigned char)2);
    goto LAB86;

LAB87:    t9 = 0;

LAB90:    if (t9 < 4U)
        goto LAB91;
    else
        goto LAB89;

LAB91:    t5 = (t3 + t9);
    t6 = (t2 + t9);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB88;

LAB92:    t9 = (t9 + 1);
    goto LAB90;

LAB93:    goto LAB2;

LAB94:    goto LAB93;

LAB96:    goto LAB94;

}


extern void work_a_2964799144_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2964799144_2372691052_p_0,(void *)work_a_2964799144_2372691052_p_1};
	xsi_register_didat("work_a_2964799144_2372691052", "isim/program_counter_tb_isim_beh.exe.sim/work/a_2964799144_2372691052.didat");
	xsi_register_executes(pe);
}
