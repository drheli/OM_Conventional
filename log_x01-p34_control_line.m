a = [1,1,0,0,1,0,0,1,1,1,0,0,1];
b = [0,0,0,1,0,0,1,0,0,0,1,1,0];
c = [1,0,1,0,0,1,1,0,1,1,1,1,1];
d = [0,0,0,1,1,0,0,0,1,1,1,1,1];
e=zeros(1,256);
x1=[a,e];
x0=[b,e];
y1=[c,e];
y0=[d,e];
[call,v_int1, v_int0,v_frac1, v_frac0,wt1,wt0,wc1,wc0,w_int1,w_int0,w_frac1, w_frac0, shift_o1, shift_o0, cout_one1, cout_one0, cout_two1, cout_two0,compare_frac,CAx1_sel, CAx0_sel,CAy1_sel, CAy0_sel,CAx1,CAx0,CAy1,CAy0,u_r,wr_addr,rd_addr,enable,add_enable,res_enable,x1_value,x0_value,y1_value,y0_value,p_value1,p_value0,p1_out,p0_out]=digit_comp_OM_vector_(x1,x0,y1,y0,0,0)



% x(ite=0)^+ = [1,1,0,0,1,0,0,1]; x(ite=0)^- = [0,0,0,1,0,0,1,0]
% x(ite=0) = [1,1,0,-1,1,0,-1,1] = 0.7109(signed)/0.7148(bin)
% y(ite=0)^+ = [1,0,1,0,0,1,1,0]; y(ite=0)^- = [0,0,0,1,1,0,0,0];
% y(ite=0) = [1,0,1,-1,-1,1,1,0] = 0.5547; 
%%% p(ite=1)^+ = [1,0,0,0,1,0,1,0]; p(ite=0)^- = [0,0,1,0,0,1,0,0]
%%% p(ite=1)^+ = [1,0,0,0,1,0,1,0,0]; p(ite=1)^- = [0,0,1,0,0,1,0,0,1];
%%% p(ite=1)= [1,0,-1,0,1,-1,1,0] = 0.3984 // [1,0,-1,0,1,-1,1,0,-1] = 0.3964
%%%% p(ite=2)^+ = [0,1,0,0,0,0,0,0,1,0]; p(ite=2)^- = [0,0,0,0,1,0,0,0,1];
%%%% p(ite=2)^+ = [0,1,0,0,0,0,0,0,1,0,0,1]; p(ite=2)^- = [0,0,0,0,1,0,0,0,1,0,0];
%%%% p(ite=2) = [0,1,0,0,-1,0,0,1,-1] = 0.2207 // [0,1,0,0,-1,0,0,1,-1,0,1] = 0.2212
%%% p(ite=3)^+ = [0,0,1,0,0,0,0,0,1,0,0,1,0,0,0]; p(ite=3)^- = [0,0,0,0,0,0,0,1,0,0,1,0,1,0,0]
%%% p(ite=3) = [0,0,1,0,0,0,0,-1,1,0,-1,1,-1,0,0] = 0.1277

%%% input:x[1,7], y[1,7];  // which can be represented as firstly, x/y(ite=0)[1,2,3,4] to generate p(ite=1)[1]; secondly, x/y(ite=0)[5,6,7] to generate p(ite=1)[2,3,4]; 
%%% output: p(ite=1)[1,4]
[call,v_int1, v_int0,v_frac1, v_frac0,wt1,wt0,wc1,wc0,w_int1,w_int0,w_frac1, w_frac0, shift_o1, shift_o0, cout_one1, cout_one0, cout_two1, cout_two0,compare_frac,CAx1_sel, CAx0_sel,CAy1_sel, CAy0_sel,CAx1,CAx0,CAy1,CAy0,u_r,wr_addr,rd_addr,enable,add_enable,res_enable,x1_value,x0_value,y1_value,y0_value,p_value1,p_value0]=MUL_0104(1,0,1,0,0,1,0);
[call,v_int1, v_int0,v_frac1, v_frac0,wt1,wt0,wc1,wc0,w_int1,w_int0,w_frac1, w_frac0, shift_o1, shift_o0, cout_one1, cout_one0, cout_two1, cout_two0,compare_frac,CAx1_sel, CAx0_sel,CAy1_sel, CAy0_sel,CAx1,CAx0,CAy1,CAy0,u_r,wr_addr,rd_addr,enable,add_enable,res_enable,x1_value,x0_value,y1_value,y0_value,p_value1,p_value0]=MUL_0104(1,0,0,0,0,2,0);
[call,v_int1, v_int0,v_frac1, v_frac0,wt1,wt0,wc1,wc0,w_int1,w_int0,w_frac1, w_frac0, shift_o1, shift_o0, cout_one1, cout_one0, cout_two1, cout_two0,compare_frac,CAx1_sel, CAx0_sel,CAy1_sel, CAy0_sel,CAx1,CAx0,CAy1,CAy0,u_r,wr_addr,rd_addr,enable,add_enable,res_enable,x1_value,x0_value,y1_value,y0_value,p_value1,p_value0]=MUL_0104(0,0,1,0,0,3,0);
[call,v_int1, v_int0,v_frac1, v_frac0,wt1,wt0,wc1,wc0,w_int1,w_int0,w_frac1, w_frac0, shift_o1, shift_o0, cout_one1, cout_one0, cout_two1, cout_two0,compare_frac,CAx1_sel, CAx0_sel,CAy1_sel, CAy0_sel,CAx1,CAx0,CAy1,CAy0,u_r,wr_addr,rd_addr,enable,add_enable,res_enable,x1_value,x0_value,y1_value,y0_value,p_value1,p_value0]=MUL_0104(0,1,0,1,0,4,0);
[call,v_int1, v_int0,v_frac1, v_frac0,wt1,wt0,wc1,wc0,w_int1,w_int0,w_frac1, w_frac0, shift_o1, shift_o0, cout_one1, cout_one0, cout_two1, cout_two0,compare_frac,CAx1_sel, CAx0_sel,CAy1_sel, CAy0_sel,CAx1,CAx0,CAy1,CAy0,u_r,wr_addr,rd_addr,enable,add_enable,res_enable,x1_value,x0_value,y1_value,y0_value,p_value1,p_value0]=MUL_0104(1,0,0,1,0,5,0);
[call,v_int1, v_int0,v_frac1, v_frac0,wt1,wt0,wc1,wc0,w_int1,w_int0,w_frac1, w_frac0, shift_o1, shift_o0, cout_one1, cout_one0, cout_two1, cout_two0,compare_frac,CAx1_sel, CAx0_sel,CAy1_sel, CAy0_sel,CAx1,CAx0,CAy1,CAy0,u_r,wr_addr,rd_addr,enable,add_enable,res_enable,x1_value,x0_value,y1_value,y0_value,p_value1,p_value0]=MUL_0104(0,0,1,0,0,6,0);
[call,v_int1, v_int0,v_frac1, v_frac0,wt1,wt0,wc1,wc0,w_int1,w_int0,w_frac1, w_frac0, shift_o1, shift_o0, cout_one1, cout_one0, cout_two1, cout_two0,compare_frac,CAx1_sel, CAx0_sel,CAy1_sel, CAy0_sel,CAx1,CAx0,CAy1,CAy0,u_r,wr_addr,rd_addr,enable,add_enable,res_enable,x1_value,x0_value,y1_value,y0_value,p_value1,p_value0]=MUL_0104(0,1,1,0,0,7,0);

%%% input:p(ite=1)[1-4],y = [1,4];
%%% p(ite=2)[1]
[call,v_int1, v_int0,v_frac1, v_frac0,wt1,wt0,wc1,wc0,w_int1,w_int0,w_frac1, w_frac0, shift_o1, shift_o0, cout_one1, cout_one0, cout_two1, cout_two0,compare_frac,CAx1_sel, CAx0_sel,CAy1_sel, CAy0_sel,CAx1,CAx0,CAy1,CAy0,u_r,wr_addr,rd_addr,enable,add_enable,res_enable,x1_value,x0_value,y1_value,y0_value,p_value1,p_value0]=MUL_0104(1,0,1,0,0,1,1);
[call,v_int1, v_int0,v_frac1, v_frac0,wt1,wt0,wc1,wc0,w_int1,w_int0,w_frac1, w_frac0, shift_o1, shift_o0, cout_one1, cout_one0, cout_two1, cout_two0,compare_frac,CAx1_sel, CAx0_sel,CAy1_sel, CAy0_sel,CAx1,CAx0,CAy1,CAy0,u_r,wr_addr,rd_addr,enable,add_enable,res_enable,x1_value,x0_value,y1_value,y0_value,p_value1,p_value0]=MUL_0104(0,0,0,0,0,2,1);
[call,v_int1, v_int0,v_frac1, v_frac0,wt1,wt0,wc1,wc0,w_int1,w_int0,w_frac1, w_frac0, shift_o1, shift_o0, cout_one1, cout_one0, cout_two1, cout_two0,compare_frac,CAx1_sel, CAx0_sel,CAy1_sel, CAy0_sel,CAx1,CAx0,CAy1,CAy0,u_r,wr_addr,rd_addr,enable,add_enable,res_enable,x1_value,x0_value,y1_value,y0_value,p_value1,p_value0]=MUL_0104(0,1,1,0,0,3,1);
[call,v_int1, v_int0,v_frac1, v_frac0,wt1,wt0,wc1,wc0,w_int1,w_int0,w_frac1, w_frac0, shift_o1, shift_o0, cout_one1, cout_one0, cout_two1, cout_two0,compare_frac,CAx1_sel, CAx0_sel,CAy1_sel, CAy0_sel,CAx1,CAx0,CAy1,CAy0,u_r,wr_addr,rd_addr,enable,add_enable,res_enable,x1_value,x0_value,y1_value,y0_value,p_value1,p_value0]=MUL_0104(0,0,0,1,0,4,1);

%%% input:x(ite=0)[8,9,10],y = [8,9,10];
%%% p(ite=1)[5,6,7]
[call,v_int1, v_int0,v_frac1, v_frac0,wt1,wt0,wc1,wc0,w_int1,w_int0,w_frac1, w_frac0, shift_o1, shift_o0, cout_one1, cout_one0, cout_two1, cout_two0,compare_frac,CAx1_sel, CAx0_sel,CAy1_sel, CAy0_sel,CAx1,CAx0,CAy1,CAy0,u_r,wr_addr,rd_addr,enable,add_enable,res_enable,x1_value,x0_value,y1_value,y0_value,p_value1,p_value0]=MUL_0104(1,0,0,0,0,8,0);
[call,v_int1, v_int0,v_frac1, v_frac0,wt1,wt0,wc1,wc0,w_int1,w_int0,w_frac1, w_frac0, shift_o1, shift_o0, cout_one1, cout_one0, cout_two1, cout_two0,compare_frac,CAx1_sel, CAx0_sel,CAy1_sel, CAy0_sel,CAx1,CAx0,CAy1,CAy0,u_r,wr_addr,rd_addr,enable,add_enable,res_enable,x1_value,x0_value,y1_value,y0_value,p_value1,p_value0]=MUL_0104(0,0,0,0,0,9,0);
[call,v_int1, v_int0,v_frac1, v_frac0,wt1,wt0,wc1,wc0,w_int1,w_int0,w_frac1, w_frac0, shift_o1, shift_o0, cout_one1, cout_one0, cout_two1, cout_two0,compare_frac,CAx1_sel, CAx0_sel,CAy1_sel, CAy0_sel,CAx1,CAx0,CAy1,CAy0,u_r,wr_addr,rd_addr,enable,add_enable,res_enable,x1_value,x0_value,y1_value,y0_value,p_value1,p_value0]=MUL_0104(0,0,0,0,0,10,0);

%%% input:p(ite=1)[5,6,7],y = [5,6,7];
%%% p(ite=1)[5,6,7]
[call,v_int1, v_int0,v_frac1, v_frac0,wt1,wt0,wc1,wc0,w_int1,w_int0,w_frac1, w_frac0, shift_o1, shift_o0, cout_one1, cout_one0, cout_two1, cout_two0,compare_frac,CAx1_sel, CAx0_sel,CAy1_sel, CAy0_sel,CAx1,CAx0,CAy1,CAy0,u_r,wr_addr,rd_addr,enable,add_enable,res_enable,x1_value,x0_value,y1_value,y0_value,p_value1,p_value0]=MUL_0104(1,0,0,1,0,5,1);
[call,v_int1, v_int0,v_frac1, v_frac0,wt1,wt0,wc1,wc0,w_int1,w_int0,w_frac1, w_frac0, shift_o1, shift_o0, cout_one1, cout_one0, cout_two1, cout_two0,compare_frac,CAx1_sel, CAx0_sel,CAy1_sel, CAy0_sel,CAx1,CAx0,CAy1,CAy0,u_r,wr_addr,rd_addr,enable,add_enable,res_enable,x1_value,x0_value,y1_value,y0_value,p_value1,p_value0]=MUL_0104(0,1,1,0,0,6,1);
[call,v_int1, v_int0,v_frac1, v_frac0,wt1,wt0,wc1,wc0,w_int1,w_int0,w_frac1, w_frac0, shift_o1, shift_o0, cout_one1, cout_one0, cout_two1, cout_two0,compare_frac,CAx1_sel, CAx0_sel,CAy1_sel, CAy0_sel,CAx1,CAx0,CAy1,CAy0,u_r,wr_addr,rd_addr,enable,add_enable,res_enable,x1_value,x0_value,y1_value,y0_value,p_value1,p_value0]=MUL_0104(1,0,1,0,0,7,1);

%%% input:p(ite=2)[1,2,3,4],y = [1,2,3,4];
%%% p(ite=3)[1]
[call,v_int1, v_int0,v_frac1, v_frac0,wt1,wt0,wc1,wc0,w_int1,w_int0,w_frac1, w_frac0, shift_o1, shift_o0, cout_one1, cout_one0, cout_two1, cout_two0,compare_frac,CAx1_sel, CAx0_sel,CAy1_sel, CAy0_sel,CAx1,CAx0,CAy1,CAy0,u_r,wr_addr,rd_addr,enable,add_enable,res_enable,x1_value,x0_value,y1_value,y0_value,p_value1,p_value0]=MUL_0104(0,0,1,0,0,1,2);
[call,v_int1, v_int0,v_frac1, v_frac0,wt1,wt0,wc1,wc0,w_int1,w_int0,w_frac1, w_frac0, shift_o1, shift_o0, cout_one1, cout_one0, cout_two1, cout_two0,compare_frac,CAx1_sel, CAx0_sel,CAy1_sel, CAy0_sel,CAx1,CAx0,CAy1,CAy0,u_r,wr_addr,rd_addr,enable,add_enable,res_enable,x1_value,x0_value,y1_value,y0_value,p_value1,p_value0]=MUL_0104(1,0,0,0,0,2,2);
[call,v_int1, v_int0,v_frac1, v_frac0,wt1,wt0,wc1,wc0,w_int1,w_int0,w_frac1, w_frac0, shift_o1, shift_o0, cout_one1, cout_one0, cout_two1, cout_two0,compare_frac,CAx1_sel, CAx0_sel,CAy1_sel, CAy0_sel,CAx1,CAx0,CAy1,CAy0,u_r,wr_addr,rd_addr,enable,add_enable,res_enable,x1_value,x0_value,y1_value,y0_value,p_value1,p_value0]=MUL_0104(0,0,1,0,0,3,2);
[call,v_int1, v_int0,v_frac1, v_frac0,wt1,wt0,wc1,wc0,w_int1,w_int0,w_frac1, w_frac0, shift_o1, shift_o0, cout_one1, cout_one0, cout_two1, cout_two0,compare_frac,CAx1_sel, CAx0_sel,CAy1_sel, CAy0_sel,CAx1,CAx0,CAy1,CAy0,u_r,wr_addr,rd_addr,enable,add_enable,res_enable,x1_value,x0_value,y1_value,y0_value,p_value1,p_value0]=MUL_0104(0,0,0,1,0,4,2);

%%% input:x(ite=0)[11,12,13],y = [11,12,13];
%%% p(ite=1)[8,9,10]
[call,v_int1, v_int0,v_frac1, v_frac0,wt1,wt0,wc1,wc0,w_int1,w_int0,w_frac1, w_frac0, shift_o1, shift_o0, cout_one1, cout_one0, cout_two1, cout_two0,compare_frac,CAx1_sel, CAx0_sel,CAy1_sel, CAy0_sel,CAx1,CAx0,CAy1,CAy0,u_r,wr_addr,rd_addr,enable,add_enable,res_enable,x1_value,x0_value,y1_value,y0_value,p_value1,p_value0]=MUL_0104(0,0,0,0,0,11,0);
[call,v_int1, v_int0,v_frac1, v_frac0,wt1,wt0,wc1,wc0,w_int1,w_int0,w_frac1, w_frac0, shift_o1, shift_o0, cout_one1, cout_one0, cout_two1, cout_two0,compare_frac,CAx1_sel, CAx0_sel,CAy1_sel, CAy0_sel,CAx1,CAx0,CAy1,CAy0,u_r,wr_addr,rd_addr,enable,add_enable,res_enable,x1_value,x0_value,y1_value,y0_value,p_value1,p_value0]=MUL_0104(0,0,0,0,0,12,0);
[call,v_int1, v_int0,v_frac1, v_frac0,wt1,wt0,wc1,wc0,w_int1,w_int0,w_frac1, w_frac0, shift_o1, shift_o0, cout_one1, cout_one0, cout_two1, cout_two0,compare_frac,CAx1_sel, CAx0_sel,CAy1_sel, CAy0_sel,CAx1,CAx0,CAy1,CAy0,u_r,wr_addr,rd_addr,enable,add_enable,res_enable,x1_value,x0_value,y1_value,y0_value,p_value1,p_value0]=MUL_0104(0,0,0,0,0,13,0);

%%% input:p(ite=1)[8,9,10],y = [8,9,10];
%%% p(ite=2)[5,6,7]
[call,v_int1, v_int0,v_frac1, v_frac0,wt1,wt0,wc1,wc0,w_int1,w_int0,w_frac1, w_frac0, shift_o1, shift_o0, cout_one1, cout_one0, cout_two1, cout_two0,compare_frac,CAx1_sel, CAx0_sel,CAy1_sel, CAy0_sel,CAx1,CAx0,CAy1,CAy0,u_r,wr_addr,rd_addr,enable,add_enable,res_enable,x1_value,x0_value,y1_value,y0_value,p_value1,p_value0]=MUL_0104(0,0,0,0,0,8,1);
[call,v_int1, v_int0,v_frac1, v_frac0,wt1,wt0,wc1,wc0,w_int1,w_int0,w_frac1, w_frac0, shift_o1, shift_o0, cout_one1, cout_one0, cout_two1, cout_two0,compare_frac,CAx1_sel, CAx0_sel,CAy1_sel, CAy0_sel,CAx1,CAx0,CAy1,CAy0,u_r,wr_addr,rd_addr,enable,add_enable,res_enable,x1_value,x0_value,y1_value,y0_value,p_value1,p_value0]=MUL_0104(0,1,0,0,0,9,1);
[call,v_int1, v_int0,v_frac1, v_frac0,wt1,wt0,wc1,wc0,w_int1,w_int0,w_frac1, w_frac0, shift_o1, shift_o0, cout_one1, cout_one0, cout_two1, cout_two0,compare_frac,CAx1_sel, CAx0_sel,CAy1_sel, CAy0_sel,CAx1,CAx0,CAy1,CAy0,u_r,wr_addr,rd_addr,enable,add_enable,res_enable,x1_value,x0_value,y1_value,y0_value,p_value1,p_value0]=MUL_0104(0,0,0,0,0,10,1);

%%% input:p(ite=2)[5,6,7],y = [5,6,7];
%%% p(ite=2)[2,3,4]
[call,v_int1, v_int0,v_frac1, v_frac0,wt1,wt0,wc1,wc0,w_int1,w_int0,w_frac1, w_frac0, shift_o1, shift_o0, cout_one1, cout_one0, cout_two1, cout_two0,compare_frac,CAx1_sel, CAx0_sel,CAy1_sel, CAy0_sel,CAx1,CAx0,CAy1,CAy0,u_r,wr_addr,rd_addr,enable,add_enable,res_enable,x1_value,x0_value,y1_value,y0_value,p_value1,p_value0]=MUL_0104(0,1,0,1,0,5,2);
[call,v_int1, v_int0,v_frac1, v_frac0,wt1,wt0,wc1,wc0,w_int1,w_int0,w_frac1, w_frac0, shift_o1, shift_o0, cout_one1, cout_one0, cout_two1, cout_two0,compare_frac,CAx1_sel, CAx0_sel,CAy1_sel, CAy0_sel,CAx1,CAx0,CAy1,CAy0,u_r,wr_addr,rd_addr,enable,add_enable,res_enable,x1_value,x0_value,y1_value,y0_value,p_value1,p_value0]=MUL_0104(0,0,1,0,0,6,2);
[call,v_int1, v_int0,v_frac1, v_frac0,wt1,wt0,wc1,wc0,w_int1,w_int0,w_frac1, w_frac0, shift_o1, shift_o0, cout_one1, cout_one0, cout_two1, cout_two0,compare_frac,CAx1_sel, CAx0_sel,CAy1_sel, CAy0_sel,CAx1,CAx0,CAy1,CAy0,u_r,wr_addr,rd_addr,enable,add_enable,res_enable,x1_value,x0_value,y1_value,y0_value,p_value1,p_value0]=MUL_0104(0,0,1,0,0,7,2);











