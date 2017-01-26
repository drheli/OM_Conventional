%function [Arx1,Arx0,xin1,xin0,p_value1,p_value0]=MUL_1227(operand1,operand0,y1,y0)   %,cin_one1,cin_one0,cin_two1,cin_two0)
function [Arx1,Arx0,v_int1, v_int0,w_int1,w_int0,w_frac1, w_frac0, shift_o1, shift_o0,v_frac1, v_frac0, cout_one1, cout_one0, cout_two1, cout_two0,compare_frac,CAx1_sel, CAx0_sel,CAy1_sel, CAy0_sel,CAx1,CAx0,CAy1,CAy0,ite_input_r,u_r,wr_addr,rd_addr,enable,add_enable,res_enable,x1_value,x0_value,y1_value,y0_value,p_value1,p_value0]=MUL_1227(operand1,operand0,y1,y0)   %,cin_one1,cin_one0,cin_two1,cin_two0)
%function [a1,w_frac1,p_value1,p_value0]=MUL_1227(operand1,operand0,y1,y0)   %,cin_one1,cin_one0,cin_two1,cin_two0)
% if(isempty(p1)&&isempty(p0))
persistent flag;
persistent p1;
persistent p0;
if isempty(flag)
     p1=0;p0=0;
end
% end

[Arx1,Arx0,~,~,~,xin1,xin0]=digitreuse(operand1,operand0,p1,p0);   %yes

    %y1y0 == '10'; 
%different BRAM from digitreuse coz "x_ori" is only read in digitreuse but both "write" and "read" in control and CA_gen 
[ite_input_r,u_r,wr_addr,rd_addr,enable,add_enable,res_enable,x1_value,x0_value,y1_value,y0_value] = control(xin1,xin0,y1,y0);

[CAx1,CAx0,CAy1,CAy0] = CA_gen(x1_value,x0_value,y1_value,y0_value,wr_addr,rd_addr,u_r,ite_input_r,enable);%,refresh);

[CAx1_sel, CAx0_sel]=SDVM(y1_value,y0_value,CAx1,CAx0);
[CAy1_sel, CAy0_sel]=SDVM(x1_value,x0_value,CAy1,CAy0);

% if(isempty(cin_one1)&&isempty(cin_one0)&&isempty(cin_two1)&&isempty(cin_two0))
persistent cin_one1; persistent cin_one0; persistent cin_two1; persistent cin_two0;
persistent CAw_frac1; persistent CAw_frac0;
if isempty(flag)
     cin_one1 = 0; cin_one0 = 0; cin_two1 = 0; cin_two0 = 0;CAw_frac1=zeros(1,16);CAw_frac0=zeros(1,16);
end
% end
%cin_one1 = 0; cin_one0 = 0; cin_two1 = 0; cin_two0 = 0; assign 0 at the start
%16-bit adder;

[v_frac1, v_frac0, cout_one1, cout_one0, cout_two1, cout_two0,compare_frac] = paralleladder(CAx1_sel,CAx0_sel,CAy1_sel,CAy0_sel,CAw_frac1,CAw_frac0,cin_one1,cin_one0,cin_two1,cin_two0);


%adder_control
if add_enable==1
    cin_one1 = cout_one1;  
    cin_one0 = cout_one0;
    cin_two1 = cout_two1;
    cin_two0 = cout_two0;
else
    cin_one1 = 0;
    cin_one0 = 0;
    cin_two1 = 0;
    cin_two0 = 0;
end

persistent CAw1_int; persistent CAw0_int;
a=zeros(1,5);
if isempty(flag)
    CAw1_int=zeros(1,5); CAw0_int=zeros(1,5); 
end

%5-bit adder
[v_int1, v_int0, ~, ~, ~, ~,~] = paralleladder_int(a,a,a,a,CAw1_int,CAw0_int,cout_one1,cout_one0, cout_two1, cout_two0);


[w_frac1, w_frac0, shift_o1, shift_o0] = V_frac(v_frac1,v_frac0,rd_addr,wr_addr,ite_input_r,res_enable);     %V_frac1, V_frac2;
CAw_frac1=w_frac1; CAw_frac0 = w_frac0;

[p_value1,p_value0,w_int1,w_int0] = V_upper(compare_frac,v_int1,v_int0,shift_o1,shift_o0,wr_addr,rd_addr, ite_input_r);
CAw1_int = w_int1; CAw0_int = w_int0;
p1=p_value1; p0=p_value0;
flag = 1;
end

