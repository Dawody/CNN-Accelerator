module and02(Y ,A0 ,A1 );
output Y ;
input A0 ;
input A1 ;
and (Y,A0,A1);
endmodule

module and03(Y ,A0 ,A1 ,A2 );
output Y ;
input A0 ;
input A1 ;
input A2 ;
and (Y,A0,A1,A2);
endmodule

module and04(Y ,A0 ,A1 ,A2 ,A3 );
output Y ;
input A0 ;
input A1 ;
input A2 ;
input A3 ;
and (Y,A0,A1,A2,A3);
endmodule

module ao21(Y ,A0 ,A1 ,B0 );
output Y ;
input A0 ;
input A1 ;
input B0 ;
and (ao21_and,A0,A1);
or (Y,ao21_and,B0);
endmodule

module ao22(Y ,A0 ,A1 ,B0 ,B1 );
output Y ;
input A0 ;
input A1 ;
input B0 ;
input B1 ;
and (ao22_and1,A0,A1);
and (ao22_and2,B0,B1);
or (Y,ao22_and1,ao22_and2);
endmodule

module ao221(Y ,A0 ,A1 ,B0 ,B1 ,C0 );
output Y ;
input A0 ;
input A1 ;
input B0 ;
input B1 ;
input C0 ;
and (adk6,A0,A1);
and (adk7,B0,B1);
or (adk8,adk6,adk7);
or (Y,adk8,C0);
endmodule

module ao32(Y ,A0 ,A1 ,A2 ,B0 ,B1 );
output Y ;
input A0 ;
input A1 ;
input A2 ;
input B0 ;
input B1 ;
and (adk9,A0,A1);
and (adk10,adk9,A2);
and (adk11,B0,B1);
or (Y,adk10,adk11);
endmodule

module aoi21(Y ,A0 ,A1 ,B0 );
output Y ;
input A0 ;
input A1 ;
input B0 ;
and (adk12,A0,A1);
or (adk13,adk12,B0);
not (Y,adk13);
endmodule

module aoi22(Y ,A0 ,A1 ,B0 ,B1 );
output Y ;
input A0 ;
input A1 ;
input B0 ;
input B1 ;
and (adk14,A0,A1);
and (adk15,B0,B1);
or (adk16,adk14,adk15);
not (Y,adk16);
endmodule

module aoi221(Y ,A0 ,A1 ,B0 ,B1 ,C0 );
output Y ;
input A0 ;
input A1 ;
input B0 ;
input B1 ;
input C0 ;
and (adk17,A0,A1);
and (adk18,B0,B1);
or (adk19,adk17,adk18);
or (adk20,adk19,C0);
not (Y,adk20);
endmodule

module aoi222(Y ,A0 ,A1 ,B0 ,B1 ,C0 ,C1 );
output Y ;
input A0 ;
input A1 ;
input B0 ;
input B1 ;
input C0 ;
input C1 ;
and (adk21,A0,A1);
and (adk22,B0,B1);
or (adk23,adk21,adk22);
and (adk24,C0,C1);
or (adk25,adk23,adk24);
not (Y,adk25);
endmodule

module aoi32(Y ,A0 ,A1 ,A2 ,B0 ,B1 );
output Y ;
input A0 ;
input A1 ;
input A2 ;
input B0 ;
input B1 ;
and (adk26,A0,A1);
and (adk27,adk26,A2);
and (adk28,B0,B1);
or (adk29,adk27,adk28);
not (Y,adk29);
endmodule

module aoi321(Y ,A0 ,A1 ,A2 ,B0 ,B1 ,C0 );
output Y ;
input A0 ;
input A1 ;
input A2 ;
input B0 ;
input B1 ;
input C0 ;
and (adk30,A0,A1);
and (adk31,adk30,A2);
and (adk32,B0,B1);
or (adk33,adk31,adk32);
or (adk34,adk33,C0);
not (Y,adk34);
endmodule

module aoi322(Y ,A0 ,A1 ,A2 ,B0 ,B1 ,C0 ,C1 );
output Y ;
input A0 ;
input A1 ;
input A2 ;
input B0 ;
input B1 ;
input C0 ;
input C1 ;
and (adk35,A0,A1);
and (adk36,adk35,A2);
and (adk37,B0,B1);
or (adk38,adk36,adk37);
and (adk39,C0,C1);
or (adk40,adk38,adk39);
not (Y,adk40);
endmodule

module aoi33(Y ,A0 ,A1 ,A2 ,B0 ,B1 ,B2 );
output Y ;
input A0 ;
input A1 ;
input A2 ;
input B0 ;
input B1 ;
input B2 ;
and (adk41,A0,A1);
and (adk42,adk41,A2);
and (adk43,B0,B1);
and (adk44,adk43,B2);
or (adk45,adk42,adk44);
not (Y,adk45);
endmodule

module aoi332(Y ,A0 ,A1 ,A2 ,B0 ,B1 ,B2 ,C0 ,C1 );
output Y ;
input A0 ;
input A1 ;
input A2 ;
input B0 ;
input B1 ;
input B2 ;
input C0 ;
input C1 ;
and (adk46,A0,A1);
and (adk47,adk46,A2);
and (adk48,B0,B1);
and (adk49,adk48,B2);
or (adk50,adk47,adk49);
and (adk51,C0,C1);
or (adk52,adk50,adk51);
not (Y,adk52);
endmodule

module aoi333(Y ,A0 ,A1 ,A2 ,B0 ,B1 ,B2 ,C0 ,C1 ,C2 );
output Y ;
input A0 ;
input A1 ;
input A2 ;
input B0 ;
input B1 ;
input B2 ;
input C0 ;
input C1 ;
input C2 ;
and (adk53,A0,A1);
and (adk54,adk53,A2);
and (adk55,B0,B1);
and (adk56,adk55,B2);
or (adk57,adk54,adk56);
and (adk58,C0,C1);
and (adk59,adk58,C2);
or (adk60,adk57,adk59);
not (Y,adk60);
endmodule

module aoi422(Y ,A0 ,A1 ,A2 ,A3 ,B0 ,B1 ,C0 ,C1 );
output Y ;
input A0 ;
input A1 ;
input A2 ;
input A3 ;
input B0 ;
input B1 ;
input C0 ;
input C1 ;
and (adk61,A0,A1);
and (adk62,adk61,A2);
and (adk63,adk62,A3);
and (adk64,B0,B1);
or (adk65,adk63,adk64);
and (adk66,C0,C1);
or (adk67,adk65,adk66);
not (Y,adk67);
endmodule

module aoi43(Y ,A0 ,A1 ,A2 ,A3 ,B0 ,B1 ,B2 );
output Y ;
input A0 ;
input A1 ;
input A2 ;
input A3 ;
input B0 ;
input B1 ;
input B2 ;
and (adk68,A0,A1);
and (adk69,adk68,A2);
and (adk70,adk69,A3);
and (adk71,B0,B1);
and (adk72,adk71,B2);
or (adk73,adk70,adk72);
not (Y,adk73);
endmodule

module aoi44(Y ,A0 ,A1 ,A2 ,A3 ,B0 ,B1 ,B2 ,B3 );
output Y ;
input A0 ;
input A1 ;
input A2 ;
input A3 ;
input B0 ;
input B1 ;
input B2 ;
input B3 ;
and (adk74,A0,A1);
and (adk75,adk74,A2);
and (adk76,adk75,A3);
and (adk77,B0,B1);
and (adk78,adk77,B2);
and (adk79,adk78,B3);
or (adk80,adk76,adk79);
not (Y,adk80);
endmodule

module buf02(Y ,A );
output Y ;
input A ;
buf (Y,A);
endmodule

module buf04(Y ,A );
output Y ;
input A ;
buf (Y,A);
endmodule

module buf08(Y ,A );
output Y ;
input A ;
buf (Y,A);
endmodule

module buf12(Y ,A );
output Y ;
input A ;
buf (Y,A);
endmodule

module buf16(Y ,A );
output Y ;
input A ;
buf (Y,A);
endmodule

module dff(Q ,QB ,D ,CLK );
output Q ;
output QB ;
input D ;
input CLK ;
supply0 gnd;
__mgc_fv_dff (Q,D,CLK,gnd,gnd);
not (QB,Q);
endmodule

module dffr(Q ,QB ,D ,CLK ,R );
output Q ;
output QB ;
input D ;
input CLK ;
input R ;
supply0 gnd;
__mgc_fv_dff (Q,D,CLK,gnd,R);
not (QB,Q);
endmodule

module dffs(Q ,QB ,D ,CLK ,S );
output Q ;
output QB ;
input D ;
input CLK ;
input S ;
supply0 gnd;
not (not_S,S);
__mgc_fv_dff (Q,D,CLK,not_S,gnd);
not (QB,Q);
endmodule

module dffsr(Q ,QB ,D ,CLK ,S ,R );
output Q ;
output QB ;
input D ;
input CLK ;
input S ;
input R ;
not (not_S,S);
__mgc_fv_dff (Q,D,CLK,not_S,R);
not (QB,Q);
endmodule

module fadd1(S ,CO ,A ,B ,CI );
output S ;
output CO ;
input A ;
input B ;
input CI ;
xor (adk86,A,B);
xor (S,adk86,CI);
and (adk87,A,B);
and (adk88,A,CI);
or (adk89,adk87,adk88);
and (adk90,B,CI);
or (CO,adk89,adk90);
endmodule

module hadd1(S ,CO ,A ,B );
output S ;
output CO ;
input A ;
input B ;
xor (S,A,B);
and (CO,A,B);
endmodule

module inv01(Y ,A );
output Y ;
input A ;
not (Y,A);
endmodule

module inv02(Y ,A );
output Y ;
input A ;
not (Y,A);
endmodule

module inv04(Y ,A );
output Y ;
input A ;
not (Y,A);
endmodule

module inv08(Y ,A );
output Y ;
input A ;
not (Y,A);
endmodule

module inv12(Y ,A );
output Y ;
input A ;
not (Y,A);
endmodule

module inv16(Y ,A );
output Y ;
input A ;
not (Y,A);
endmodule

module latch(Q ,D ,CLK );
output Q ;
input D ;
input CLK ;
supply0 gnd;
__mgc_fv_dlatch (Q,D,CLK,gnd,gnd);
endmodule

module latchr(QB ,D ,CLK ,R );
output QB ;
input D ;
input CLK ;
input R ;
supply0 gnd;
__mgc_fv_dlatch (IQ0,D,CLK,gnd,R);
not (QB,IQ0);
endmodule

module latchs(QB ,D ,CLK ,S );
output QB ;
input D ;
input CLK ;
input S ;
supply0 gnd;
not (not_S,S);
__mgc_fv_dlatch (IQ0,D,CLK,not_S,gnd);
not (QB,IQ0);
endmodule

module latchsr(QB ,D ,CLK ,S ,R );
output QB ;
input D ;
input CLK ;
input S ;
input R ;
__mgc_fv_dlatch (IQ0,D,CLK,not_S,R);
not (QB,IQ0);
endmodule

module mux21(Y ,A0 ,A1 ,S0 );
output Y ;
input A0 ;
input A1 ;
input S0 ;
not (not_S0,S0);
and (adk96,A0,not_S0);
and (adk97,A1,S0);
or (adk98,adk96,adk97);
and (adk99,A0,A1);
or (adk100,adk98,adk99);
not (Y,adk100);
endmodule

module mux21_ni(Y ,A0 ,A1 ,S0 );
output Y ;
input A0 ;
input A1 ;
input S0 ;
not (not_S0,S0);
and (adk96,A0,not_S0);
and (adk97,A1,S0);
or (adk98,adk96,adk97);
and (adk99,A0,A1);
or (Y,adk98,adk99);
endmodule

module nand02(Y ,A0 ,A1 );
output Y ;
input A0 ;
input A1 ;
and (adk101,A0,A1);
not (Y,adk101);
endmodule

module nand03(Y ,A0 ,A1 ,A2 );
output Y ;
input A0 ;
input A1 ;
input A2 ;
and (adk103,A0,A1,A2);
not (Y,adk103);
endmodule

module nand04(Y ,A0 ,A1 ,A2 ,A3 );
output Y ;
input A0 ;
input A1 ;
input A2 ;
input A3 ;
and (adk104,A0,A1);
and (adk105,adk104,A2);
and (adk106,adk105,A3);
not (Y,adk106);
endmodule

module nor02(Y ,A0 ,A1 );
output Y ;
input A0 ;
input A1 ;
or (adk107,A0,A1);
not (Y,adk107);
endmodule

module nor02ii(Y ,A0 ,A1 );
output Y ;
input A0 ;
input A1 ;
or (adk107,A0,A1);
not (Y,adk107);
endmodule

module nor03(Y ,A0 ,A1 ,A2 );
output Y ;
input A0 ;
input A1 ;
input A2 ;
or (adk108,A0,A1);
or (adk109,adk108,A2);
not (Y,adk109);
endmodule

module nor04(Y ,A0 ,A1 ,A2 ,A3 );
output Y ;
input A0 ;
input A1 ;
input A2 ;
input A3 ;
or (adk110,A0,A1);
or (adk111,adk110,A2);
or (adk112,adk111,A3);
not (Y,adk112);
endmodule

module oai21(Y ,A0 ,A1 ,B0 );
output Y ;
input A0 ;
input A1 ;
input B0 ;
or (adk113,A0,A1);
and (adk114,adk113,B0);
not (Y,adk114);
endmodule

module oai22(Y ,A0 ,A1 ,B0 ,B1 );
output Y ;
input A0 ;
input A1 ;
input B0 ;
input B1 ;
or (adk115,A0,A1);
or (adk116,B0,B1);
and (adk117,adk115,adk116);
not (Y,adk117);
endmodule

module oai221(Y ,A0 ,A1 ,B0 ,B1 ,C0 );
output Y ;
input A0 ;
input A1 ;
input B0 ;
input B1 ;
input C0 ;
or (adk118,A0,A1);
or (adk119,B0,B1);
and (adk120,adk118,adk119);
and (adk121,adk120,C0);
not (Y,adk121);
endmodule

module oai222(Y ,A0 ,A1 ,B0 ,B1 ,C0 ,C1 );
output Y ;
input A0 ;
input A1 ;
input B0 ;
input B1 ;
input C0 ;
input C1 ;
or (adk122,A0,A1);
or (adk123,B0,B1);
and (adk124,adk122,adk123);
or (adk125,C0,C1);
and (adk126,adk124,adk125);
not (Y,adk126);
endmodule

module oai32(Y ,A0 ,A1 ,A2 ,B0 ,B1 );
output Y ;
input A0 ;
input A1 ;
input A2 ;
input B0 ;
input B1 ;
or (adk127,A0,A1);
or (adk128,adk127,A2);
or (adk129,B0,B1);
and (adk130,adk128,adk129);
not (Y,adk130);
endmodule

module oai321(Y ,A0 ,A1 ,A2 ,B0 ,B1 ,C0 );
output Y ;
input A0 ;
input A1 ;
input A2 ;
input B0 ;
input B1 ;
input C0 ;
or (adk131,A0,A1);
or (adk132,adk131,A2);
or (adk133,B0,B1);
and (adk134,adk132,adk133);
and (adk135,adk134,C0);
not (Y,adk135);
endmodule

module oai322(Y ,A0 ,A1 ,A2 ,B0 ,B1 ,C0 ,C1 );
output Y ;
input A0 ;
input A1 ;
input A2 ;
input B0 ;
input B1 ;
input C0 ;
input C1 ;
or (adk136,A0,A1);
or (adk137,adk136,A2);
or (adk138,B0,B1);
and (adk139,adk137,adk138);
or (adk140,C0,C1);
and (adk141,adk139,adk140);
not (Y,adk141);
endmodule

module oai33(Y ,A0 ,A1 ,A2 ,B0 ,B1 ,B2 );
output Y ;
input A0 ;
input A1 ;
input A2 ;
input B0 ;
input B1 ;
input B2 ;
or (adk142,A0,A1);
or (adk143,adk142,A2);
or (adk144,B0,B1);
or (adk145,adk144,B2);
and (adk146,adk143,adk145);
not (Y,adk146);
endmodule

module oai332(Y ,A0 ,A1 ,A2 ,B0 ,B1 ,B2 ,C0 ,C1 );
output Y ;
input A0 ;
input A1 ;
input A2 ;
input B0 ;
input B1 ;
input B2 ;
input C0 ;
input C1 ;
or (adk147,A0,A1);
or (adk148,adk147,A2);
or (adk149,B0,B1);
or (adk150,adk149,B2);
and (adk151,adk148,adk150);
or (adk152,C0,C1);
and (adk153,adk151,adk152);
not (Y,adk153);
endmodule

module oai333(Y ,A0 ,A1 ,A2 ,B0 ,B1 ,B2 ,C0 ,C1 ,C2 );
output Y ;
input A0 ;
input A1 ;
input A2 ;
input B0 ;
input B1 ;
input B2 ;
input C0 ;
input C1 ;
input C2 ;
or (adk154,A0,A1);
or (adk155,adk154,A2);
or (adk156,B0,B1);
or (adk157,adk156,B2);
and (adk158,adk155,adk157);
or (adk159,C0,C1);
or (adk160,adk159,C2);
and (adk161,adk158,adk160);
not (Y,adk161);
endmodule

module oai422(Y ,A0 ,A1 ,A2 ,A3 ,B0 ,B1 ,C0 ,C1 );
output Y ;
input A0 ;
input A1 ;
input A2 ;
input A3 ;
input B0 ;
input B1 ;
input C0 ;
input C1 ;
or (adk162,A0,A1);
or (adk163,adk162,A2);
or (adk164,adk163,A3);
or (adk165,B0,B1);
and (adk166,adk164,adk165);
or (adk167,C0,C1);
and (adk168,adk166,adk167);
not (Y,adk168);
endmodule

module oai43(Y ,A0 ,A1 ,A2 ,A3 ,B0 ,B1 ,B2 );
output Y ;
input A0 ;
input A1 ;
input A2 ;
input A3 ;
input B0 ;
input B1 ;
input B2 ;
or (adk169,A0,A1);
or (adk170,adk169,A2);
or (adk171,adk170,A3);
or (adk172,B0,B1);
or (adk173,adk172,B2);
and (adk174,adk171,adk173);
not (Y,adk174);
endmodule

module oai44(Y ,A0 ,A1 ,A2 ,A3 ,B0 ,B1 ,B2 ,B3 );
output Y ;
input A0 ;
input A1 ;
input A2 ;
input A3 ;
input B0 ;
input B1 ;
input B2 ;
input B3 ;
or (adk175,A0,A1);
or (adk176,adk175,A2);
or (adk177,adk176,A3);
or (adk178,B0,B1);
or (adk179,adk178,B2);
or (adk180,adk179,B3);
and (adk181,adk177,adk180);
not (Y,adk181);
endmodule

module or02(Y ,A0 ,A1 );
output Y ;
input A0 ;
input A1 ;
or (Y,A0,A1);
endmodule

module or03(Y ,A0 ,A1 ,A2 );
output Y ;
input A0 ;
input A1 ;
input A2 ;
or (adk182,A0,A1);
or (Y,adk182,A2);
endmodule

module or04(Y ,A0 ,A1 ,A2 ,A3 );
output Y ;
input A0 ;
input A1 ;
input A2 ;
input A3 ;
or (adk183,A0,A1);
or (adk184,adk183,A2);
or (Y,adk184,A3);
endmodule

module sff(Q ,QB ,D ,SI ,SE ,CLK );
output Q ;
output QB ;
input D ;
input SI ;
input SE ;
input CLK ;
supply0 __equivSupply_13;
not (adk185,SE);
and (adk186,D,adk185);
and (adk187,SI,SE);
or (adk188,adk186,adk187);
and (adk189,D,SI);
or (adk190,adk188,adk189);
__mgc_fv_dff (Q,adk190,CLK,__equivSupply_13,__equivSupply_13);
not (QB,Q);
endmodule

module sffr(Q ,QB ,D ,SI ,SE ,CLK ,R );
output Q ;
output QB ;
input D ;
input SI ;
input SE ;
input CLK ;
input R ;
supply0 __equivConstant10;
not (adk191,SE);
and (adk192,D,adk191);
and (adk193,SI,SE);
or (adk194,adk192,adk193);
and (adk195,D,SI);
or (adk196,adk194,adk195);
not (adk197,R);
__mgc_fv_dff (Q,adk196,CLK,__equivConstant10,adk197);
not (QB,Q);
endmodule

module sffs(Q ,QB ,D ,SI ,SE ,CLK ,S );
output Q ;
output QB ;
input D ;
input SI ;
input SE ;
input CLK ;
input S ;
supply0 __equivConstant11;
not (adk198,SE);
and (adk199,D,adk198);
and (adk200,SI,SE);
or (adk201,adk199,adk200);
and (adk202,D,SI);
or (adk203,adk201,adk202);
__mgc_fv_dff (Q,adk203,CLK,S,__equivConstant11);
not (QB,Q);
endmodule

module sffsr(Q ,QB ,D ,SI ,SE ,CLK ,S ,R );
output Q ;
output QB ;
input D ;
input SI ;
input SE ;
input CLK ;
input S ;
input R ;
not (adk204,SE);
and (adk205,D,adk204);
and (adk206,SI,SE);
or (adk207,adk205,adk206);
and (adk208,D,SI);
or (adk209,adk207,adk208);
not (adk210,R);
not (adk211,R);
not (adk212,adk211);
and (adk213,S,adk212);
__mgc_fv_dff (Q,adk209,CLK,adk213,adk210);
not (QB,Q);
endmodule

module tri01(Y ,A ,E );
output Y ;
input A ;
input E ;
not (adk214,A);
bufif1 (Y,adk214,E);
endmodule

module trib04(Y ,A ,E );
output Y ;
input A ;
input E ;
bufif1 (Y,A,E);
endmodule

module trib08(Y ,A ,E );
output Y ;
input A ;
input E ;
bufif1 (Y,A,E);
endmodule

module xnor2(Y ,A0 ,A1 );
output Y ;
input A0 ;
input A1 ;
xor (adk215,A0,A1);
not (Y,adk215);
endmodule

module xor2(Y ,A0 ,A1 );
output Y ;
input A0 ;
input A1 ;
xor (Y,A0,A1);
endmodule

module fake_vcc (Y);
output Y;
reg Y;
  initial  Y = 1;
endmodule

module fake_gnd (Y);
output Y;
reg Y;
  initial  Y = 0;
endmodule
