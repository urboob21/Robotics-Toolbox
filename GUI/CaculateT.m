function A = CaculateT(DH)
%Caculate_Matrix(d,theta,a,alpha)
T_0_1=Caculate_Matrix(DH(1,3),DH(1,4),DH(1,1),DH(1,2));
T_1_2=Caculate_Matrix(DH(2,3),DH(2,4),DH(2,1),DH(2,2));
T_2_3=Caculate_Matrix(DH(3,3),DH(3,4),DH(3,1),DH(3,2));
T_3_4=Caculate_Matrix(DH(4,3),DH(4,4),DH(4,1),DH(4,2));
A=T_0_1*T_1_2*T_2_3*T_3_4;
end