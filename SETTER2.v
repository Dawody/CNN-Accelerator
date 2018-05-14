//
// Verilog description for cell SETTER, 
// Fri May 11 07:44:47 2018
//
// LeonardoSpectrum Level 3, 2017a.2 
//


module SETTER ( RST, CLK, FILTER, STRIDE, ENB, ADRS, ENDD, ACK ) ;

    input RST ;
    input CLK ;
    input FILTER ;
    input STRIDE ;
    input ENB ;
    output [16:0]ADRS ;
    output ENDD ;
    output ACK ;

    wire nx2832, ROW_INC_16, FLAG, COL_INC_16, ROW_CNT_1, ROW_CNT_0, nx2842, 
         nx32, nx46, nx62, W_1, nx70, nx76, W_0, nx90, nx100, nx102, nx110, 
         nx116, nx136, ROW_CNT_4, nx142, nx160, nx164, ROW_CNT_7, ROW_CNT_6, 
         ROW_CNT_5, nx168, nx2845, nx196, W_7, NOT_nx70, nx230, nx238, nx246, 
         ROW_CNT_8, nx254, nx260, ROW_CNT_9, nx270, nx290, nx2846, COL_INC_15, 
         COL_INC_14, nx2848, COL_INC_13, COL_INC_12, nx2850, COL_INC_11, 
         COL_INC_10, nx2852, COL_INC_9, COL_INC_8, nx2854, COL_INC_7, COL_INC_6, 
         nx2856, COL_INC_5, COL_INC_4, nx2858, COL_INC_3, COL_INC_2, COL_INC_1, 
         nx2861, COL_INC_0, nx298, nx302, nx312, nx316, nx328, nx332, nx342, 
         nx352, nx372, nx392, nx416, nx440, nx464, ROW_INC_15, ROW_INC_14, 
         ROW_INC_13, ROW_INC_12, ROW_INC_11, ROW_INC_10, ROW_INC_9, ROW_INC_8, 
         ROW_INC_7, ROW_INC_6, ROW_INC_5, ROW_INC_4, ROW_INC_3, ROW_INC_2, 
         ROW_INC_1, ROW_INC_0, nx522, nx532, nx2863, nx544, nx564, nx578, nx2865, 
         nx580, nx584, nx600, nx604, nx618, nx2867, nx624, nx640, nx644, nx658, 
         nx2869, nx664, nx680, nx2870, nx684, nx712, nx720, nx2872, nx724, nx752, 
         nx760, nx2874, nx764, nx792, nx800, nx2876, nx804, nx832, nx840, nx844, 
         nx854, nx858, nx862, nx866, nx870, nx874, nx878, COL_CNT_7, COL_CNT_6, 
         nx2878, COL_CNT_5, COL_CNT_4, nx2880, COL_CNT_3, COL_CNT_2, COL_CNT_1, 
         COL_CNT_0, nx996, nx1008, nx1020, nx1044, COL_CNT_8, nx2884, nx1068, 
         nx1090, nx2889, nx2901, nx2911, nx2921, nx2931, nx2941, nx2951, nx2961, 
         nx2971, nx2981, nx2991, nx3001, nx3011, nx3021, nx3031, nx3041, nx3051, 
         nx3061, nx3071, nx3081, nx3091, nx3101, nx3111, nx3121, nx3131, nx3141, 
         nx3151, nx3161, nx3171, nx3181, nx3191, nx3201, nx3211, nx3221, nx3231, 
         nx3241, nx3251, nx3261, nx3271, nx3281, nx3291, nx3301, nx3311, nx3321, 
         nx3331, nx3341, nx3351, nx3361, nx3371, nx3381, nx3391, nx3401, nx3411, 
         nx3421, nx3431, nx3441, nx3451, nx3468, nx3472, nx3476, nx3478, nx3482, 
         nx3487, nx3490, nx3495, nx3499, nx3504, nx3508, nx3511, nx3514, nx3518, 
         nx3520, nx3524, nx3527, nx3530, nx3534, nx3536, nx3539, nx3543, nx3545, 
         nx3548, nx3552, nx3554, nx3557, nx3560, nx3563, nx3565, nx3578, nx3582, 
         nx3584, nx3587, nx3590, nx3592, nx3594, nx3597, nx3601, nx3603, nx3607, 
         nx3612, nx3619, nx3627, nx3631, nx3635, nx3640, nx3642, nx3647, nx3650, 
         nx3654, nx3658, nx3661, nx3666, nx3671, nx3676, nx3680, nx3685, nx3689, 
         nx3692, nx3694, nx3698, nx3701, nx3706, nx3713, nx3717, nx3721, nx3723, 
         nx3725, nx3727, nx3734, nx3739, nx3742, nx3745, nx3747, nx3749, nx3752, 
         nx3754, nx3755, nx3758, nx3769, nx3771, nx3781, nx3782, nx3785, nx3788, 
         nx3790, nx3792, nx3794, nx3799, nx3804, nx3806, nx3808, nx3811, nx3821, 
         nx3823, nx3826, nx3828, nx3833, nx3838, nx3840, nx3842, nx3845, nx3847, 
         nx3848, nx3853, nx3855, nx3860, nx3862, nx3871, nx3873, nx3878, nx3880, 
         nx3882, nx3884, nx3889, nx3891, nx3897, nx3899, nx3904, nx3909, nx3911, 
         nx3916, nx3918, nx3920, nx3922, nx3927, nx3929, nx3935, nx3937, nx3942, 
         nx3947, nx3949, nx3954, nx3956, nx3958, nx3960, nx3965, nx3967, nx3973, 
         nx3975, nx3980, nx3988, nx3990, nx3992, nx3994, nx3998, nx4001, nx4002, 
         nx4012, nx4022, nx4024, nx4026, nx4028, nx4034, nx4036, nx4038, nx4040, 
         nx4042, nx4044, nx4046, nx4048, nx4050, nx4052, nx4054, nx4056, nx4066, 
         nx4068, nx4070, nx4078, nx4084, nx4090, nx4096, nx4102, nx4108, nx4110, 
         nx5, nx4112, nx4115, nx4118, nx4120, nx4122, nx4124, nx4126, nx4128, 
         nx4130, nx4132, nx4134, nx4136, nx4138, nx4140, nx4142, nx4144, nx4146, 
         nx4148, nx4150, nx4156, nx4158;
    wire [11:0] \$dummy ;




    fake_gnd ix2833 (.Y (nx2832)) ;
    dffr reg_ROW_INC_0 (.Q (ROW_INC_0), .QB (ADRS[0]), .D (nx3181), .CLK (CLK), 
         .R (RST)) ;
    oai21 ix533 (.Y (nx532), .A0 (COL_INC_0), .A1 (nx4036), .B0 (nx3635)) ;
    dffsr_ni reg_COL_INC_0 (.Q (COL_INC_0), .QB (\$dummy [0]), .D (nx3021), .CLK (
             CLK), .S (nx298), .R (nx302)) ;
    dffr reg_FLAG (.Q (FLAG), .QB (nx3472), .D (nx2901), .CLK (CLK), .R (RST)) ;
    oai21 ix3477 (.Y (nx3476), .A0 (FLAG), .A1 (ENB), .B0 (nx3478)) ;
    dffr reg_FLAG2 (.Q (ACK), .QB (nx3478), .D (nx2889), .CLK (CLK), .R (RST)) ;
    xnor2 ix3483 (.Y (nx3482), .A0 (ROW_CNT_9), .A1 (nx3565)) ;
    dffr reg_ROW_CNT_9 (.Q (ROW_CNT_9), .QB (\$dummy [1]), .D (nx3001), .CLK (
         CLK), .R (RST)) ;
    xnor2 ix3488 (.Y (nx3487), .A0 (ROW_CNT_9), .A1 (nx254)) ;
    dffr reg_ROW_CNT_8 (.Q (ROW_CNT_8), .QB (nx3490), .D (nx2991), .CLK (CLK), .R (
         RST)) ;
    aoi21 ix261 (.Y (nx260), .A0 (nx3495), .A1 (nx3490), .B0 (nx3627)) ;
    nand02 ix3496 (.Y (nx3495), .A0 (ROW_CNT_7), .A1 (nx2845)) ;
    oai21 ix2982 (.Y (nx2981), .A0 (nx3499), .A1 (nx4146), .B0 (nx3504)) ;
    dffr reg_ROW_CNT_7 (.Q (ROW_CNT_7), .QB (nx3499), .D (nx2981), .CLK (CLK), .R (
         RST)) ;
    nand04 ix3505 (.Y (nx3504), .A0 (nx196), .A1 (nx4036), .A2 (nx3495), .A3 (
           nx4028)) ;
    or02 ix197 (.Y (nx196), .A0 (nx2845), .A1 (ROW_CNT_7)) ;
    oai21 ix2972 (.Y (nx2971), .A0 (nx3508), .A1 (nx4146), .B0 (nx3511)) ;
    nand02 ix3515 (.Y (nx3514), .A0 (ROW_CNT_5), .A1 (nx142)) ;
    oai21 ix2962 (.Y (nx2961), .A0 (nx3518), .A1 (nx4146), .B0 (nx3520)) ;
    dffr reg_ROW_CNT_5 (.Q (ROW_CNT_5), .QB (nx3518), .D (nx2961), .CLK (CLK), .R (
         RST)) ;
    nand04 ix3521 (.Y (nx3520), .A0 (nx168), .A1 (nx4034), .A2 (nx3514), .A3 (
           nx4026)) ;
    or02 ix169 (.Y (nx168), .A0 (nx142), .A1 (ROW_CNT_5)) ;
    oai21 ix2952 (.Y (nx2951), .A0 (nx3524), .A1 (nx4146), .B0 (nx3527)) ;
    oai21 ix2942 (.Y (nx2941), .A0 (nx3534), .A1 (nx4146), .B0 (nx3536)) ;
    dffr ROW_CNT_3 (.Q (\$dummy [2]), .QB (nx3534), .D (nx2941), .CLK (CLK), .R (
         RST)) ;
    nand04 ix3537 (.Y (nx3536), .A0 (nx116), .A1 (nx4034), .A2 (nx3530), .A3 (
           nx4026)) ;
    nand02 ix117 (.Y (nx116), .A0 (nx3539), .A1 (nx3534)) ;
    oai21 ix2932 (.Y (nx2931), .A0 (nx3543), .A1 (nx4146), .B0 (nx3545)) ;
    dffr ROW_CNT_2 (.Q (\$dummy [3]), .QB (nx3543), .D (nx2931), .CLK (CLK), .R (
         RST)) ;
    nand04 ix3546 (.Y (nx3545), .A0 (nx46), .A1 (nx4034), .A2 (nx3539), .A3 (
           nx4026)) ;
    nand02 ix47 (.Y (nx46), .A0 (nx3548), .A1 (nx3543)) ;
    oai21 ix2922 (.Y (nx2921), .A0 (nx3552), .A1 (nx4146), .B0 (nx3554)) ;
    dffr reg_ROW_CNT_1 (.Q (ROW_CNT_1), .QB (nx3552), .D (nx2921), .CLK (CLK), .R (
         RST)) ;
    nand04 ix3555 (.Y (nx3554), .A0 (nx32), .A1 (nx4034), .A2 (nx3548), .A3 (
           nx4026)) ;
    oai21 ix2912 (.Y (nx2911), .A0 (nx3557), .A1 (nx4026), .B0 (nx3560)) ;
    nand04 ix283 (.Y (nx2842), .A0 (nx3482), .A1 (nx3563), .A2 (nx3578), .A3 (
           nx3594)) ;
    nor04 ix3566 (.Y (nx3565), .A0 (nx4052), .A1 (nx4046), .A2 (nx4042), .A3 (
          W_7)) ;
    oai21 ix77 (.Y (nx76), .A0 (FILTER), .A1 (STRIDE), .B0 (nx4056)) ;
    nand02_2x ix3572 (.Y (NOT_nx70), .A0 (FILTER), .A1 (STRIDE)) ;
    nor03_2x ix3579 (.Y (nx3578), .A0 (nx246), .A1 (nx238), .A2 (nx230)) ;
    dffr reg_ROW_CNT_6 (.Q (ROW_CNT_6), .QB (nx3508), .D (nx2971), .CLK (CLK), .R (
         RST)) ;
    nor02_2x ix3585 (.Y (nx3584), .A0 (nx4052), .A1 (nx4046)) ;
    xnor2 ix3591 (.Y (nx3590), .A0 (W_7), .A1 (nx3592)) ;
    nor03_2x ix3593 (.Y (nx3592), .A0 (nx4052), .A1 (nx4046), .A2 (nx4042)) ;
    nor04 ix3595 (.Y (nx3594), .A0 (nx164), .A1 (nx110), .A2 (nx102), .A3 (nx100
          )) ;
    nand02 ix165 (.Y (nx164), .A0 (nx3597), .A1 (nx3603)) ;
    dffr reg_ROW_CNT_4 (.Q (ROW_CNT_4), .QB (nx3524), .D (nx2951), .CLK (CLK), .R (
         RST)) ;
    oai21 ix161 (.Y (nx160), .A0 (nx4052), .A1 (nx4046), .B0 (nx4132)) ;
    oai21 ix137 (.Y (nx136), .A0 (nx4052), .A1 (nx4046), .B0 (nx4132)) ;
    aoi21 ix3608 (.Y (nx3607), .A0 (nx4046), .A1 (nx4052), .B0 (nx3584)) ;
    dffr reg_ROW_CNT_0 (.Q (ROW_CNT_0), .QB (nx3557), .D (nx2911), .CLK (CLK), .R (
         RST)) ;
    aoi21 ix3613 (.Y (nx3612), .A0 (nx4042), .A1 (nx90), .B0 (nx3619)) ;
    nor03_2x ix3620 (.Y (nx3619), .A0 (nx4054), .A1 (nx4046), .A2 (nx4042)) ;
    oai21 ix3628 (.Y (nx3627), .A0 (nx3490), .A1 (nx3495), .B0 (nx4036)) ;
    inv01 ix3632 (.Y (nx3631), .A (RST)) ;
    aoi21 ix303 (.Y (nx302), .A0 (FILTER), .A1 (STRIDE), .B0 (nx3631)) ;
    oai21 ix3636 (.Y (nx3635), .A0 (nx4054), .A1 (ROW_INC_0), .B0 (nx522)) ;
    aoi21 ix523 (.Y (nx522), .A0 (ROW_INC_0), .A1 (nx4054), .B0 (nx4066)) ;
    nand02 ix3452 (.Y (nx3451), .A0 (nx3640), .A1 (nx3642)) ;
    dffr reg_ENDD (.Q (ENDD), .QB (nx3640), .D (nx3451), .CLK (CLK), .R (RST)) ;
    nand03 ix3643 (.Y (nx3642), .A0 (nx1090), .A1 (nx4122), .A2 (nx2878)) ;
    oai21 ix3648 (.Y (nx3647), .A0 (nx2878), .A1 (COL_CNT_7), .B0 (nx3692)) ;
    aoi21 ix1045 (.Y (nx1044), .A0 (nx3654), .A1 (nx3650), .B0 (nx2878)) ;
    nand02 ix3655 (.Y (nx3654), .A0 (COL_CNT_5), .A1 (nx2880)) ;
    oai21 ix3659 (.Y (nx3658), .A0 (nx2880), .A1 (COL_CNT_5), .B0 (nx3654)) ;
    dffr reg_COL_CNT_4 (.Q (COL_CNT_4), .QB (nx3661), .D (nx3391), .CLK (CLK), .R (
         RST)) ;
    nand04 ix3667 (.Y (nx3666), .A0 (COL_CNT_3), .A1 (COL_CNT_2), .A2 (COL_CNT_1
           ), .A3 (COL_CNT_0)) ;
    dffr reg_COL_CNT_3 (.Q (COL_CNT_3), .QB (\$dummy [4]), .D (nx3381), .CLK (
         CLK), .R (RST)) ;
    xnor2 ix1009 (.Y (nx1008), .A0 (COL_CNT_3), .A1 (nx3671)) ;
    nand03 ix3672 (.Y (nx3671), .A0 (COL_CNT_2), .A1 (COL_CNT_1), .A2 (COL_CNT_0
           )) ;
    dffr reg_COL_CNT_2 (.Q (COL_CNT_2), .QB (\$dummy [5]), .D (nx3371), .CLK (
         CLK), .R (RST)) ;
    xnor2 ix997 (.Y (nx996), .A0 (COL_CNT_2), .A1 (nx3676)) ;
    nand02 ix3677 (.Y (nx3676), .A0 (COL_CNT_1), .A1 (COL_CNT_0)) ;
    oai21 ix3681 (.Y (nx3680), .A0 (COL_CNT_0), .A1 (COL_CNT_1), .B0 (nx3676)) ;
    dffr reg_COL_CNT_0 (.Q (COL_CNT_0), .QB (\$dummy [6]), .D (nx3351), .CLK (
         CLK), .R (RST)) ;
    dffr reg_COL_CNT_1 (.Q (COL_CNT_1), .QB (nx3685), .D (nx3361), .CLK (CLK), .R (
         RST)) ;
    dffr reg_COL_CNT_5 (.Q (COL_CNT_5), .QB (nx3689), .D (nx3401), .CLK (CLK), .R (
         RST)) ;
    dffr reg_COL_CNT_6 (.Q (COL_CNT_6), .QB (nx3650), .D (nx3411), .CLK (CLK), .R (
         RST)) ;
    nand02 ix3693 (.Y (nx3692), .A0 (COL_CNT_7), .A1 (nx2878)) ;
    dffr reg_COL_CNT_7 (.Q (COL_CNT_7), .QB (nx3694), .D (nx3421), .CLK (CLK), .R (
         RST)) ;
    dffr reg_COL_CNT_8 (.Q (COL_CNT_8), .QB (nx3701), .D (nx3431), .CLK (CLK), .R (
         RST)) ;
    dffr COL_CNT_9 (.Q (\$dummy [7]), .QB (nx3706), .D (nx3441), .CLK (CLK), .R (
         RST)) ;
    dffr reg_ROW_INC_1 (.Q (ROW_INC_1), .QB (\$dummy [8]), .D (nx3191), .CLK (
         CLK), .R (RST)) ;
    oai21 ix3714 (.Y (nx3713), .A0 (COL_INC_0), .A1 (COL_INC_1), .B0 (nx3721)) ;
    dffsr_ni reg_COL_INC_1 (.Q (COL_INC_1), .QB (nx3717), .D (nx3031), .CLK (CLK
             ), .S (nx312), .R (nx316)) ;
    nand02 ix3722 (.Y (nx3721), .A0 (COL_INC_1), .A1 (COL_INC_0)) ;
    xnor2 ix3724 (.Y (nx3723), .A0 (nx3725), .A1 (nx3727)) ;
    nand02 ix3726 (.Y (nx3725), .A0 (ROW_INC_0), .A1 (nx4054)) ;
    xnor2 ix3728 (.Y (nx3727), .A0 (ROW_INC_1), .A1 (nx4048)) ;
    dffr reg_ROW_INC_2 (.Q (ROW_INC_2), .QB (nx3754), .D (nx3201), .CLK (CLK), .R (
         RST)) ;
    oai21 ix3735 (.Y (nx3734), .A0 (nx2861), .A1 (COL_INC_2), .B0 (nx3745)) ;
    dffsr_ni reg_COL_INC_2 (.Q (COL_INC_2), .QB (nx3739), .D (nx3041), .CLK (CLK
             ), .S (nx328), .R (nx4130)) ;
    nor02ii ix3743 (.Y (nx3742), .A0 (FILTER), .A1 (STRIDE)) ;
    nand03 ix3746 (.Y (nx3745), .A0 (COL_INC_2), .A1 (COL_INC_1), .A2 (COL_INC_0
           )) ;
    xnor2 ix3748 (.Y (nx3747), .A0 (nx3749), .A1 (nx3752)) ;
    aoi32 ix3750 (.Y (nx3749), .A0 (ROW_INC_0), .A1 (nx4054), .A2 (nx2863), .B0 (
          nx4048), .B1 (ROW_INC_1)) ;
    nand02 ix3756 (.Y (nx3755), .A0 (ROW_INC_1), .A1 (ROW_INC_0)) ;
    oai21 ix959 (.Y (ADRS[3]), .A0 (nx3758), .A1 (nx3771), .B0 (nx854)) ;
    dffr reg_ROW_INC_3 (.Q (ROW_INC_3), .QB (nx3758), .D (nx3211), .CLK (CLK), .R (
         RST)) ;
    xnor2 ix343 (.Y (nx342), .A0 (COL_INC_3), .A1 (nx3745)) ;
    dffsr_ni reg_COL_INC_3 (.Q (COL_INC_3), .QB (\$dummy [9]), .D (nx3051), .CLK (
             CLK), .S (nx328), .R (nx4130)) ;
    xnor2 ix581 (.Y (nx580), .A0 (nx578), .A1 (nx3769)) ;
    oai22 ix579 (.Y (nx578), .A0 (nx3749), .A1 (nx3752), .B0 (nx4132), .B1 (
          nx3754)) ;
    nand03 ix3772 (.Y (nx3771), .A0 (ROW_INC_2), .A1 (ROW_INC_1), .A2 (ROW_INC_0
           )) ;
    nand02 ix855 (.Y (nx854), .A0 (nx3771), .A1 (nx3758)) ;
    dffr reg_ROW_INC_4 (.Q (ROW_INC_4), .QB (nx3790), .D (nx3221), .CLK (CLK), .R (
         RST)) ;
    dffsr_ni reg_COL_INC_4 (.Q (COL_INC_4), .QB (nx3781), .D (nx3061), .CLK (CLK
             ), .S (nx328), .R (nx4130)) ;
    nand04 ix3783 (.Y (nx3782), .A0 (COL_INC_3), .A1 (COL_INC_2), .A2 (COL_INC_1
           ), .A3 (COL_INC_0)) ;
    xor2 ix601 (.Y (nx600), .A0 (nx3785), .A1 (nx3788)) ;
    aoi22 ix3786 (.Y (nx3785), .A0 (nx4044), .A1 (ROW_INC_3), .B0 (nx578), .B1 (
          nx2865)) ;
    aoi21 ix947 (.Y (ADRS[5]), .A0 (nx3792), .A1 (nx3794), .B0 (nx858)) ;
    dffr reg_ROW_INC_5 (.Q (ROW_INC_5), .QB (nx3794), .D (nx3231), .CLK (CLK), .R (
         RST)) ;
    oai21 ix3800 (.Y (nx3799), .A0 (nx2858), .A1 (COL_INC_5), .B0 (nx3806)) ;
    dffsr_ni reg_COL_INC_5 (.Q (COL_INC_5), .QB (nx3804), .D (nx3071), .CLK (CLK
             ), .S (nx328), .R (nx4130)) ;
    nand02 ix3807 (.Y (nx3806), .A0 (COL_INC_5), .A1 (nx2858)) ;
    xor2 ix3809 (.Y (nx3808), .A0 (nx618), .A1 (nx3811)) ;
    oai22 ix619 (.Y (nx618), .A0 (nx3785), .A1 (nx3788), .B0 (nx4132), .B1 (
          nx3790)) ;
    dffr reg_ROW_INC_6 (.Q (ROW_INC_6), .QB (nx3828), .D (nx3241), .CLK (CLK), .R (
         RST)) ;
    dffsr_ni reg_COL_INC_6 (.Q (COL_INC_6), .QB (nx3821), .D (nx3081), .CLK (CLK
             ), .S (nx328), .R (nx4130)) ;
    xor2 ix641 (.Y (nx640), .A0 (nx3823), .A1 (nx3826)) ;
    aoi22 ix3824 (.Y (nx3823), .A0 (nx4044), .A1 (ROW_INC_5), .B0 (nx618), .B1 (
          nx2867)) ;
    dffr reg_ROW_INC_7 (.Q (ROW_INC_7), .QB (nx3847), .D (nx3251), .CLK (CLK), .R (
         RST)) ;
    oai21 ix3834 (.Y (nx3833), .A0 (nx2856), .A1 (COL_INC_7), .B0 (nx3840)) ;
    dffsr_ni reg_COL_INC_7 (.Q (COL_INC_7), .QB (nx3838), .D (nx3091), .CLK (CLK
             ), .S (nx302), .R (nx298)) ;
    nand02 ix3841 (.Y (nx3840), .A0 (COL_INC_7), .A1 (nx2856)) ;
    xor2 ix3843 (.Y (nx3842), .A0 (nx658), .A1 (nx3845)) ;
    oai22 ix659 (.Y (nx658), .A0 (nx3823), .A1 (nx3826), .B0 (nx4132), .B1 (
          nx3828)) ;
    nand02 ix3849 (.Y (nx3848), .A0 (ROW_INC_6), .A1 (nx858)) ;
    dffr reg_ROW_INC_8 (.Q (ROW_INC_8), .QB (nx3853), .D (nx3261), .CLK (CLK), .R (
         RST)) ;
    aoi22 ix3856 (.Y (nx3855), .A0 (nx4066), .A1 (nx392), .B0 (nx680), .B1 (
          nx684)) ;
    dffr reg_COL_INC_8 (.Q (COL_INC_8), .QB (nx3860), .D (nx3101), .CLK (CLK), .R (
         RST)) ;
    nand02 ix681 (.Y (nx680), .A0 (nx3862), .A1 (nx3853)) ;
    aoi22 ix3863 (.Y (nx3862), .A0 (W_7), .A1 (ROW_INC_7), .B0 (nx658), .B1 (
          nx2869)) ;
    aoi21 ix923 (.Y (ADRS[9]), .A0 (nx3871), .A1 (nx3873), .B0 (nx866)) ;
    nand02 ix3872 (.Y (nx3871), .A0 (ROW_INC_8), .A1 (nx862)) ;
    dffr reg_ROW_INC_9 (.Q (ROW_INC_9), .QB (nx3873), .D (nx3271), .CLK (CLK), .R (
         RST)) ;
    oai22 ix713 (.Y (nx712), .A0 (nx3878), .A1 (nx3880), .B0 (nx4038), .B1 (
          nx3884)) ;
    nand02 ix3881 (.Y (nx3880), .A0 (nx4038), .A1 (nx3882)) ;
    nand02 ix3883 (.Y (nx3882), .A0 (ROW_INC_9), .A1 (nx2870)) ;
    oai21 ix3885 (.Y (nx3884), .A0 (nx2854), .A1 (COL_INC_9), .B0 (nx3891)) ;
    dffr reg_COL_INC_9 (.Q (COL_INC_9), .QB (nx3889), .D (nx3111), .CLK (CLK), .R (
         RST)) ;
    nand02 ix3892 (.Y (nx3891), .A0 (COL_INC_9), .A1 (nx2854)) ;
    dffr reg_ROW_INC_10 (.Q (ROW_INC_10), .QB (nx3897), .D (nx3281), .CLK (CLK)
         , .R (RST)) ;
    aoi22 ix3900 (.Y (nx3899), .A0 (nx4066), .A1 (nx416), .B0 (nx720), .B1 (
          nx724)) ;
    dffr reg_COL_INC_10 (.Q (COL_INC_10), .QB (nx3904), .D (nx3121), .CLK (CLK)
         , .R (RST)) ;
    nand02 ix721 (.Y (nx720), .A0 (nx3882), .A1 (nx3897)) ;
    aoi21 ix911 (.Y (ADRS[11]), .A0 (nx3909), .A1 (nx3911), .B0 (nx870)) ;
    nand02 ix3910 (.Y (nx3909), .A0 (ROW_INC_10), .A1 (nx866)) ;
    dffr reg_ROW_INC_11 (.Q (ROW_INC_11), .QB (nx3911), .D (nx3291), .CLK (CLK)
         , .R (RST)) ;
    oai22 ix753 (.Y (nx752), .A0 (nx3916), .A1 (nx3918), .B0 (nx4038), .B1 (
          nx3922)) ;
    nand02 ix3919 (.Y (nx3918), .A0 (nx4038), .A1 (nx3920)) ;
    nand02 ix3921 (.Y (nx3920), .A0 (ROW_INC_11), .A1 (nx2872)) ;
    oai21 ix3923 (.Y (nx3922), .A0 (nx2852), .A1 (COL_INC_11), .B0 (nx3929)) ;
    dffr reg_COL_INC_11 (.Q (COL_INC_11), .QB (nx3927), .D (nx3131), .CLK (CLK)
         , .R (RST)) ;
    nand02 ix3930 (.Y (nx3929), .A0 (COL_INC_11), .A1 (nx2852)) ;
    dffr reg_ROW_INC_12 (.Q (ROW_INC_12), .QB (nx3935), .D (nx3301), .CLK (CLK)
         , .R (RST)) ;
    aoi22 ix3938 (.Y (nx3937), .A0 (nx4148), .A1 (nx440), .B0 (nx760), .B1 (
          nx764)) ;
    dffr reg_COL_INC_12 (.Q (COL_INC_12), .QB (nx3942), .D (nx3141), .CLK (CLK)
         , .R (RST)) ;
    nand02 ix761 (.Y (nx760), .A0 (nx3920), .A1 (nx3935)) ;
    aoi21 ix899 (.Y (ADRS[13]), .A0 (nx3947), .A1 (nx3949), .B0 (nx874)) ;
    nand02 ix3948 (.Y (nx3947), .A0 (ROW_INC_12), .A1 (nx870)) ;
    dffr reg_ROW_INC_13 (.Q (ROW_INC_13), .QB (nx3949), .D (nx3311), .CLK (CLK)
         , .R (RST)) ;
    oai22 ix793 (.Y (nx792), .A0 (nx3954), .A1 (nx3956), .B0 (nx4040), .B1 (
          nx3960)) ;
    nand02 ix3957 (.Y (nx3956), .A0 (nx4040), .A1 (nx3958)) ;
    nand02 ix3959 (.Y (nx3958), .A0 (ROW_INC_13), .A1 (nx2874)) ;
    oai21 ix3961 (.Y (nx3960), .A0 (nx2850), .A1 (COL_INC_13), .B0 (nx3967)) ;
    dffr reg_COL_INC_13 (.Q (COL_INC_13), .QB (nx3965), .D (nx3151), .CLK (CLK)
         , .R (RST)) ;
    nand02 ix3968 (.Y (nx3967), .A0 (COL_INC_13), .A1 (nx2850)) ;
    dffr reg_ROW_INC_14 (.Q (ROW_INC_14), .QB (nx3973), .D (nx3321), .CLK (CLK)
         , .R (RST)) ;
    aoi22 ix3976 (.Y (nx3975), .A0 (nx4148), .A1 (nx464), .B0 (nx800), .B1 (
          nx804)) ;
    dffr reg_COL_INC_14 (.Q (COL_INC_14), .QB (nx3980), .D (nx3161), .CLK (CLK)
         , .R (RST)) ;
    nand02 ix801 (.Y (nx800), .A0 (nx3958), .A1 (nx3973)) ;
    dffr reg_ROW_INC_15 (.Q (ROW_INC_15), .QB (nx4001), .D (nx3331), .CLK (CLK)
         , .R (RST)) ;
    oai22 ix833 (.Y (nx832), .A0 (nx3988), .A1 (nx3990), .B0 (nx4040), .B1 (
          nx3994)) ;
    nand02 ix3991 (.Y (nx3990), .A0 (nx4040), .A1 (nx3992)) ;
    nand02 ix3993 (.Y (nx3992), .A0 (ROW_INC_15), .A1 (nx2876)) ;
    dffr reg_COL_INC_15 (.Q (COL_INC_15), .QB (nx3998), .D (nx3171), .CLK (CLK)
         , .R (RST)) ;
    nand02 ix4003 (.Y (nx4002), .A0 (ROW_INC_14), .A1 (nx874)) ;
    xnor2 ix881 (.Y (ADRS[16]), .A0 (ROW_INC_16), .A1 (nx878)) ;
    dffr reg_ROW_INC_16 (.Q (ROW_INC_16), .QB (\$dummy [10]), .D (nx3341), .CLK (
         CLK), .R (RST)) ;
    xnor2 ix485 (.Y (nx2846), .A0 (COL_INC_16), .A1 (nx4012)) ;
    dffr reg_COL_INC_16 (.Q (COL_INC_16), .QB (\$dummy [11]), .D (nx3011), .CLK (
         CLK), .R (RST)) ;
    nand02 ix4013 (.Y (nx4012), .A0 (COL_INC_15), .A1 (nx2848)) ;
    xnor2 ix841 (.Y (nx840), .A0 (nx3992), .A1 (ROW_INC_16)) ;
    inv01 ix671 (.Y (nx2869), .A (nx3845)) ;
    inv01 ix631 (.Y (nx2867), .A (nx3811)) ;
    inv01 ix591 (.Y (nx2865), .A (nx3769)) ;
    inv01 ix551 (.Y (nx2863), .A (nx3727)) ;
    inv01 ix321 (.Y (nx2861), .A (nx3721)) ;
    inv01 ix91 (.Y (nx90), .A (nx3584)) ;
    inv16 ix71 (.Y (nx70), .A (NOT_nx70)) ;
    inv16 ix63 (.Y (nx62), .A (nx3742)) ;
    inv02 ix4023 (.Y (nx4024), .A (nx4022)) ;
    inv02 ix4025 (.Y (nx4026), .A (nx4138)) ;
    inv02 ix4027 (.Y (nx4028), .A (nx4138)) ;
    inv02 ix4033 (.Y (nx4034), .A (nx4148)) ;
    inv02 ix4035 (.Y (nx4036), .A (nx4148)) ;
    inv02 ix4037 (.Y (nx4038), .A (nx4148)) ;
    inv02 ix4039 (.Y (nx4040), .A (nx4070)) ;
    inv02 ix4041 (.Y (nx4042), .A (nx3601)) ;
    inv02 ix4043 (.Y (nx4044), .A (nx4132)) ;
    buf02 ix4045 (.Y (nx4046), .A (W_1)) ;
    buf02 ix4047 (.Y (nx4048), .A (W_1)) ;
    buf02 ix4049 (.Y (nx4050), .A (nx4078)) ;
    buf02 ix4051 (.Y (nx4052), .A (W_0)) ;
    buf02 ix4053 (.Y (nx4054), .A (W_0)) ;
    inv02 ix4055 (.Y (nx4056), .A (nx70)) ;
    inv02 ix4065 (.Y (nx4066), .A (nx2842)) ;
    inv02 ix4067 (.Y (nx4068), .A (nx4156)) ;
    inv02 ix4069 (.Y (nx4070), .A (nx4156)) ;
    buf02 ix4077 (.Y (nx4078), .A (nx4084)) ;
    buf02 ix4083 (.Y (nx4084), .A (nx4090)) ;
    buf02 ix4089 (.Y (nx4090), .A (nx4096)) ;
    buf02 ix4095 (.Y (nx4096), .A (nx4102)) ;
    buf02 ix4101 (.Y (nx4102), .A (nx76)) ;
    mux21_ni ix3182 (.Y (nx3181), .A0 (nx532), .A1 (ROW_INC_0), .S0 (nx4138)) ;
    xor2 ix3022 (.Y (nx3021), .A0 (COL_INC_0), .A1 (nx4122)) ;
    and03 ix3467 (.Y (nx290), .A0 (nx3468), .A1 (ENB), .A2 (nx4066)) ;
    and02 ix3469 (.Y (nx3468), .A0 (nx3478), .A1 (nx3472)) ;
    and02 ix2890 (.Y (nx2889), .A0 (nx3478), .A1 (FLAG)) ;
    xor2 ix2902 (.Y (nx2901), .A0 (nx3472), .A1 (nx3476)) ;
    mux21_ni ix3002 (.Y (nx3001), .A0 (nx270), .A1 (ROW_CNT_9), .S0 (nx4138)) ;
    nor02ii ix271 (.Y (nx270), .A0 (nx3487), .A1 (nx4156)) ;
    nor02ii ix255 (.Y (nx254), .A0 (nx3495), .A1 (ROW_CNT_8)) ;
    mux21_ni ix2992 (.Y (nx2991), .A0 (nx260), .A1 (ROW_CNT_8), .S0 (nx4138)) ;
    nand03 ix23 (.Y (nx4022), .A0 (nx3478), .A1 (nx3472), .A2 (ENB)) ;
    nor02ii ix195 (.Y (nx2845), .A0 (nx3514), .A1 (ROW_CNT_6)) ;
    or04 ix3512 (.Y (nx3511), .A0 (nx4108), .A1 (nx4148), .A2 (nx2845), .A3 (
         nx4138)) ;
    nor02ii ix183 (.Y (nx4108), .A0 (ROW_CNT_6), .A1 (nx3514)) ;
    nor02ii ix143 (.Y (nx142), .A0 (nx3530), .A1 (ROW_CNT_4)) ;
    or04 ix3528 (.Y (nx3527), .A0 (nx4110), .A1 (nx4148), .A2 (nx142), .A3 (
         nx4138)) ;
    nor02ii ix141 (.Y (nx4110), .A0 (ROW_CNT_4), .A1 (nx3530)) ;
    or04 ix3531 (.Y (nx3530), .A0 (nx3534), .A1 (nx3543), .A2 (nx3552), .A3 (
         nx3557)) ;
    or03 ix3540 (.Y (nx3539), .A0 (nx3543), .A1 (nx3552), .A2 (nx3557)) ;
    or02 ix3549 (.Y (nx3548), .A0 (nx3552), .A1 (nx3557)) ;
    or02 ix33 (.Y (nx32), .A0 (ROW_CNT_0), .A1 (ROW_CNT_1)) ;
    or03 ix3561 (.Y (nx3560), .A0 (ROW_CNT_0), .A1 (nx4150), .A2 (nx4140)) ;
    xor2 ix3564 (.Y (nx3563), .A0 (nx3490), .A1 (nx3565)) ;
    xor2 ix247 (.Y (nx246), .A0 (nx3508), .A1 (nx3582)) ;
    nor02ii ix3583 (.Y (nx3582), .A0 (nx3584), .A1 (nx4132)) ;
    xor2 ix239 (.Y (nx238), .A0 (nx3518), .A1 (nx3587)) ;
    nor02ii ix3588 (.Y (nx3587), .A0 (nx3584), .A1 (nx4134)) ;
    xor2 ix231 (.Y (nx230), .A0 (nx3499), .A1 (nx3590)) ;
    xor2 ix3598 (.Y (nx3597), .A0 (nx3524), .A1 (nx160)) ;
    xor2 ix3604 (.Y (nx3603), .A0 (nx3534), .A1 (nx136)) ;
    xor2 ix111 (.Y (nx110), .A0 (nx3552), .A1 (nx3607)) ;
    xor2 ix103 (.Y (nx102), .A0 (nx4052), .A1 (nx3557)) ;
    xor2 ix101 (.Y (nx100), .A0 (nx3543), .A1 (nx3612)) ;
    and02 ix299 (.Y (nx298), .A0 (RST), .A1 (nx70)) ;
    and03 ix1091 (.Y (nx1090), .A0 (nx3694), .A1 (nx3706), .A2 (nx3701)) ;
    mux21 ix3422 (.Y (nx3421), .A0 (nx3694), .A1 (nx3647), .S0 (nx4122)) ;
    nor02ii ix1051 (.Y (nx2878), .A0 (nx3654), .A1 (COL_CNT_6)) ;
    mux21_ni ix3412 (.Y (nx3411), .A0 (COL_CNT_6), .A1 (nx1044), .S0 (nx4122)) ;
    mux21 ix3402 (.Y (nx3401), .A0 (nx3689), .A1 (nx3658), .S0 (nx4122)) ;
    nor02ii ix1027 (.Y (nx2880), .A0 (nx3666), .A1 (COL_CNT_4)) ;
    mux21_ni ix3392 (.Y (nx3391), .A0 (COL_CNT_4), .A1 (nx1020), .S0 (nx4122)) ;
    xor2 ix1021 (.Y (nx1020), .A0 (nx3661), .A1 (nx3666)) ;
    mux21_ni ix3382 (.Y (nx3381), .A0 (COL_CNT_3), .A1 (nx1008), .S0 (nx4122)) ;
    mux21_ni ix3372 (.Y (nx3371), .A0 (COL_CNT_2), .A1 (nx996), .S0 (nx4124)) ;
    mux21 ix3362 (.Y (nx3361), .A0 (nx3685), .A1 (nx3680), .S0 (nx4124)) ;
    xor2 ix3352 (.Y (nx3351), .A0 (COL_CNT_0), .A1 (nx4124)) ;
    mux21 ix3442 (.Y (nx3441), .A0 (nx3706), .A1 (nx3698), .S0 (nx4124)) ;
    xor2 ix3699 (.Y (nx3698), .A0 (nx3706), .A1 (nx2884)) ;
    nor02ii ix1075 (.Y (nx2884), .A0 (nx3692), .A1 (COL_CNT_8)) ;
    mux21_ni ix3432 (.Y (nx3431), .A0 (COL_CNT_8), .A1 (nx1068), .S0 (nx4124)) ;
    xor2 ix1069 (.Y (nx1068), .A0 (nx3701), .A1 (nx3692)) ;
    xor2 ix971 (.Y (ADRS[1]), .A0 (ROW_INC_1), .A1 (ROW_INC_0)) ;
    mux21_ni ix3192 (.Y (nx3191), .A0 (nx544), .A1 (ROW_INC_1), .S0 (nx4140)) ;
    mux21 ix545 (.Y (nx544), .A0 (nx3723), .A1 (nx3713), .S0 (nx4150)) ;
    mux21 ix3032 (.Y (nx3031), .A0 (nx3717), .A1 (nx3713), .S0 (nx4124)) ;
    and02 ix313 (.Y (nx312), .A0 (RST), .A1 (nx4050)) ;
    nor02ii ix317 (.Y (nx316), .A0 (nx4050), .A1 (RST)) ;
    xor2 ix965 (.Y (ADRS[2]), .A0 (nx3754), .A1 (nx3755)) ;
    mux21_ni ix3202 (.Y (nx3201), .A0 (nx564), .A1 (ROW_INC_2), .S0 (nx4140)) ;
    mux21 ix565 (.Y (nx564), .A0 (nx3747), .A1 (nx3734), .S0 (nx4150)) ;
    mux21 ix3042 (.Y (nx3041), .A0 (nx3739), .A1 (nx3734), .S0 (nx4124)) ;
    and02 ix329 (.Y (nx328), .A0 (RST), .A1 (nx62)) ;
    and02 ix333 (.Y (nx332), .A0 (RST), .A1 (nx4136)) ;
    xnor2 ix3753 (.Y (nx3752), .A0 (nx3754), .A1 (nx4134)) ;
    mux21_ni ix3212 (.Y (nx3211), .A0 (nx584), .A1 (ROW_INC_3), .S0 (nx4140)) ;
    mux21_ni ix585 (.Y (nx584), .A0 (nx580), .A1 (nx342), .S0 (nx4150)) ;
    mux21_ni ix3052 (.Y (nx3051), .A0 (COL_INC_3), .A1 (nx342), .S0 (nx4126)) ;
    xnor2 ix3770 (.Y (nx3769), .A0 (nx3758), .A1 (nx4134)) ;
    xor2 ix953 (.Y (ADRS[4]), .A0 (nx3790), .A1 (nx854)) ;
    mux21_ni ix3222 (.Y (nx3221), .A0 (nx604), .A1 (ROW_INC_4), .S0 (nx4140)) ;
    mux21_ni ix605 (.Y (nx604), .A0 (nx600), .A1 (nx352), .S0 (nx4150)) ;
    xor2 ix353 (.Y (nx352), .A0 (nx3781), .A1 (nx3782)) ;
    mux21_ni ix3062 (.Y (nx3061), .A0 (COL_INC_4), .A1 (nx352), .S0 (nx4126)) ;
    xnor2 ix3789 (.Y (nx3788), .A0 (nx3790), .A1 (nx4134)) ;
    nor02ii ix3793 (.Y (nx3792), .A0 (nx854), .A1 (nx3790)) ;
    mux21_ni ix3232 (.Y (nx3231), .A0 (nx624), .A1 (ROW_INC_5), .S0 (nx4140)) ;
    mux21 ix625 (.Y (nx624), .A0 (nx3808), .A1 (nx3799), .S0 (nx4150)) ;
    nor02ii ix357 (.Y (nx2858), .A0 (nx3782), .A1 (COL_INC_4)) ;
    mux21 ix3072 (.Y (nx3071), .A0 (nx3804), .A1 (nx3799), .S0 (nx4126)) ;
    xnor2 ix3812 (.Y (nx3811), .A0 (nx3794), .A1 (nx4134)) ;
    nor02ii ix859 (.Y (nx858), .A0 (nx3792), .A1 (ROW_INC_5)) ;
    xnor2 ix941 (.Y (ADRS[6]), .A0 (nx3828), .A1 (nx858)) ;
    mux21_ni ix3242 (.Y (nx3241), .A0 (nx644), .A1 (ROW_INC_6), .S0 (nx4140)) ;
    mux21_ni ix645 (.Y (nx644), .A0 (nx640), .A1 (nx372), .S0 (nx4150)) ;
    xor2 ix373 (.Y (nx372), .A0 (nx3821), .A1 (nx3806)) ;
    mux21_ni ix3082 (.Y (nx3081), .A0 (COL_INC_6), .A1 (nx372), .S0 (nx4126)) ;
    xnor2 ix3827 (.Y (nx3826), .A0 (nx3828), .A1 (nx4134)) ;
    xor2 ix935 (.Y (ADRS[7]), .A0 (nx3847), .A1 (nx3848)) ;
    mux21_ni ix3252 (.Y (nx3251), .A0 (nx664), .A1 (ROW_INC_7), .S0 (nx4142)) ;
    mux21 ix665 (.Y (nx664), .A0 (nx3842), .A1 (nx3833), .S0 (nx4068)) ;
    nor02ii ix377 (.Y (nx2856), .A0 (nx3806), .A1 (COL_INC_6)) ;
    mux21 ix3092 (.Y (nx3091), .A0 (nx3838), .A1 (nx3833), .S0 (nx4126)) ;
    xor2 ix3846 (.Y (nx3845), .A0 (nx3847), .A1 (W_7)) ;
    xnor2 ix929 (.Y (ADRS[8]), .A0 (nx3853), .A1 (nx862)) ;
    mux21 ix3262 (.Y (nx3261), .A0 (nx3855), .A1 (nx3853), .S0 (nx4142)) ;
    xor2 ix393 (.Y (nx392), .A0 (nx3860), .A1 (nx3840)) ;
    mux21_ni ix3102 (.Y (nx3101), .A0 (COL_INC_8), .A1 (nx392), .S0 (nx4126)) ;
    nor02ii ix685 (.Y (nx684), .A0 (nx2870), .A1 (nx4156)) ;
    nor02ii ix699 (.Y (nx2870), .A0 (nx3862), .A1 (ROW_INC_8)) ;
    nor02ii ix863 (.Y (nx862), .A0 (nx3848), .A1 (ROW_INC_7)) ;
    mux21_ni ix3272 (.Y (nx3271), .A0 (nx712), .A1 (ROW_INC_9), .S0 (nx4142)) ;
    nor02ii ix3879 (.Y (nx3878), .A0 (nx2870), .A1 (nx3873)) ;
    nor02ii ix399 (.Y (nx2854), .A0 (nx3840), .A1 (COL_INC_8)) ;
    mux21 ix3112 (.Y (nx3111), .A0 (nx3889), .A1 (nx3884), .S0 (nx4126)) ;
    nor02ii ix867 (.Y (nx866), .A0 (nx3871), .A1 (ROW_INC_9)) ;
    xnor2 ix917 (.Y (ADRS[10]), .A0 (nx3897), .A1 (nx866)) ;
    mux21 ix3282 (.Y (nx3281), .A0 (nx3899), .A1 (nx3897), .S0 (nx4142)) ;
    xor2 ix417 (.Y (nx416), .A0 (nx3904), .A1 (nx3891)) ;
    mux21_ni ix3122 (.Y (nx3121), .A0 (COL_INC_10), .A1 (nx416), .S0 (nx4128)) ;
    nor02ii ix725 (.Y (nx724), .A0 (nx2872), .A1 (nx4156)) ;
    nor02ii ix739 (.Y (nx2872), .A0 (nx3882), .A1 (ROW_INC_10)) ;
    mux21_ni ix3292 (.Y (nx3291), .A0 (nx752), .A1 (ROW_INC_11), .S0 (nx4142)) ;
    nor02ii ix3917 (.Y (nx3916), .A0 (nx2872), .A1 (nx3911)) ;
    nor02ii ix423 (.Y (nx2852), .A0 (nx3891), .A1 (COL_INC_10)) ;
    mux21 ix3132 (.Y (nx3131), .A0 (nx3927), .A1 (nx3922), .S0 (nx4128)) ;
    nor02ii ix871 (.Y (nx870), .A0 (nx3909), .A1 (ROW_INC_11)) ;
    xnor2 ix905 (.Y (ADRS[12]), .A0 (nx3935), .A1 (nx870)) ;
    mux21 ix3302 (.Y (nx3301), .A0 (nx3937), .A1 (nx3935), .S0 (nx4142)) ;
    xor2 ix441 (.Y (nx440), .A0 (nx3942), .A1 (nx3929)) ;
    mux21_ni ix3142 (.Y (nx3141), .A0 (COL_INC_12), .A1 (nx440), .S0 (nx4128)) ;
    nor02ii ix765 (.Y (nx764), .A0 (nx2874), .A1 (nx4156)) ;
    nor02ii ix779 (.Y (nx2874), .A0 (nx3920), .A1 (ROW_INC_12)) ;
    mux21_ni ix3312 (.Y (nx3311), .A0 (nx792), .A1 (ROW_INC_13), .S0 (nx4142)) ;
    nor02ii ix3955 (.Y (nx3954), .A0 (nx2874), .A1 (nx3949)) ;
    nor02ii ix447 (.Y (nx2850), .A0 (nx3929), .A1 (COL_INC_12)) ;
    mux21 ix3152 (.Y (nx3151), .A0 (nx3965), .A1 (nx3960), .S0 (nx4128)) ;
    nor02ii ix875 (.Y (nx874), .A0 (nx3947), .A1 (ROW_INC_13)) ;
    xnor2 ix893 (.Y (ADRS[14]), .A0 (nx3973), .A1 (nx874)) ;
    mux21 ix3322 (.Y (nx3321), .A0 (nx3975), .A1 (nx3973), .S0 (nx4144)) ;
    xor2 ix465 (.Y (nx464), .A0 (nx3980), .A1 (nx3967)) ;
    mux21_ni ix3162 (.Y (nx3161), .A0 (COL_INC_14), .A1 (nx464), .S0 (nx4128)) ;
    nor02ii ix805 (.Y (nx804), .A0 (nx2876), .A1 (nx4156)) ;
    nor02ii ix819 (.Y (nx2876), .A0 (nx3958), .A1 (ROW_INC_14)) ;
    xor2 ix887 (.Y (ADRS[15]), .A0 (nx4001), .A1 (nx4002)) ;
    mux21_ni ix3332 (.Y (nx3331), .A0 (nx832), .A1 (ROW_INC_15), .S0 (nx4144)) ;
    nor02ii ix3989 (.Y (nx3988), .A0 (nx2876), .A1 (nx4001)) ;
    xor2 ix3995 (.Y (nx3994), .A0 (nx3998), .A1 (nx2848)) ;
    mux21 ix3172 (.Y (nx3171), .A0 (nx3998), .A1 (nx3994), .S0 (nx4128)) ;
    nor02ii ix471 (.Y (nx2848), .A0 (nx3967), .A1 (COL_INC_14)) ;
    mux21_ni ix3342 (.Y (nx3341), .A0 (nx844), .A1 (ROW_INC_16), .S0 (nx4144)) ;
    mux21_ni ix845 (.Y (nx844), .A0 (nx840), .A1 (nx2846), .S0 (nx4070)) ;
    mux21_ni ix3012 (.Y (nx3011), .A0 (COL_INC_16), .A1 (nx2846), .S0 (nx4128)
             ) ;
    nor02ii ix879 (.Y (nx878), .A0 (nx4002), .A1 (ROW_INC_15)) ;
    latchr lat_W_2__u1 (.QB (nx5), .D (nx62), .CLK (RST), .R (nx2832)) ;
    buf02 lat_W_2__u3 (.Y (nx3601), .A (nx5)) ;
    latchr lat_W_0__u1 (.QB (nx4112), .D (nx70), .CLK (RST), .R (nx2832)) ;
    inv01 lat_W_0__u2 (.Y (W_0), .A (nx4112)) ;
    latchr lat_W_1__u1 (.QB (nx4115), .D (nx76), .CLK (RST), .R (nx2832)) ;
    inv01 lat_W_1__u2 (.Y (W_1), .A (nx4115)) ;
    latchr lat_W_7__u1 (.QB (nx4118), .D (NOT_nx70), .CLK (RST), .R (nx2832)) ;
    inv01 lat_W_7__u2 (.Y (W_7), .A (nx4118)) ;
    inv01 ix4119 (.Y (nx4120), .A (nx290)) ;
    inv02 ix4121 (.Y (nx4122), .A (nx4120)) ;
    inv02 ix4123 (.Y (nx4124), .A (nx4120)) ;
    inv02 ix4125 (.Y (nx4126), .A (nx4120)) ;
    inv02 ix4127 (.Y (nx4128), .A (nx4120)) ;
    buf02 ix4129 (.Y (nx4130), .A (nx332)) ;
    inv02 ix4131 (.Y (nx4132), .A (nx4042)) ;
    inv02 ix4133 (.Y (nx4134), .A (nx4042)) ;
    inv02 ix4135 (.Y (nx4136), .A (nx62)) ;
    inv02 ix4137 (.Y (nx4138), .A (nx4024)) ;
    inv02 ix4139 (.Y (nx4140), .A (nx4024)) ;
    inv02 ix4141 (.Y (nx4142), .A (nx4024)) ;
    inv02 ix4143 (.Y (nx4144), .A (nx4024)) ;
    inv02 ix4145 (.Y (nx4146), .A (nx4022)) ;
    inv02 ix4147 (.Y (nx4148), .A (nx4158)) ;
    inv02 ix4149 (.Y (nx4150), .A (nx4158)) ;
    inv01 ix4155 (.Y (nx4156), .A (nx4066)) ;
    inv01 ix4157 (.Y (nx4158), .A (nx4066)) ;
endmodule

