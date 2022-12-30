function A = CaculateT1(DH1)
%Caculate_Matrix(d,theta,a,alpha)
T_0_1=Caculate_Matrix(DH1(1,4),DH1(1,1),DH1(1,3),DH1(1,2));
T_1_2=Caculate_Matrix(DH1(2,4),DH1(2,1),DH1(2,3),DH1(2,2));
T_2_3=Caculate_Matrix(DH1(3,4),DH1(3,1),DH1(3,3),DH1(3,2));
T_3_4=Caculate_Matrix(DH1(4,4),DH1(4,1),DH1(4,3),DH1(4,2));
T_4_5=Caculate_Matrix(DH1(5,4),DH1(5,1),DH1(5,3),DH1(5,2));
A=T_0_1*T_1_2*T_2_3*T_3_4*T_4_5
end