 d_1 = 0;d_2 = 4.2;d_3 = 0;d_4 = 0;d_5 = 0;
a_1= 0;a_2=0.9;a_3=7.7;a_4=9.7;a_5=13.3;
anpha_1=0;anpha_2=-pi/2;anpha_3=0;anpha_4=0;anpha_5=0;
%theta=0,d,a,alpha,
L(1) = Link([0,d_1,a_1,anpha_1,0]);
L(2) = Link([0,d_2,a_2,anpha_2,0]);
L(3) = Link([0,d_3,a_3,anpha_3,0]);
L(4) = Link([0,d_4,a_4,anpha_4,0]);
L(5) = Link([0,d_5,a_5,anpha_5,0]);

Robot=SerialLink(L);
Robot.name = '4DOF Robot';
Th_1 = 30*pi/180;
Th_2 = 60*pi/180;
Th_3 = 0*pi/180;
Th_4 = -90*pi/180;
time=2;
%mo phong su dung toolbox
d_1 = 0;d_2 = 4.2;d_3 = 0;d_4 = 0;d_5 = 0;
a_1= 0;a_2=0.9;a_3=7.7;a_4=9.7;a_5=13.3;
anpha_1=0;anpha_2=-pi/2;anpha_3=0;anpha_4=0;anpha_5=0;

L(1) = Link([0,d_1,a_1,anpha_1,0],'standard');
L(2) = Link([0,d_2,a_2,anpha_2,0],'standard');
L(3) = Link([0,d_3,a_3,anpha_3,0],'standard');
L(4) = Link([0,d_4,a_4,anpha_4,0],'standard');
L(5) = Link([0,d_5,a_5,anpha_5,0],'standard');

Robot=SerialLink(L);
Robot.name = '4DOF Robot';

q0=[0  0 0 0 0 ];
PEE=[0 
     0 
     0 
     1];
%dong hoc thuan 

qz=[ 0 Th_1 Th_2 Th_3 Th_4 ]; %cac goc theta
T=Robot.fkine(qz)  
PA=T*PEE;

hold on
%
atj=zeros(4,4);
t1=time;
t=0:.04:2; %2
sqtraj1=jtraj(q0,qz,t); 
for i=1:1:51 %51
    atj=Robot.fkine(sqtraj1(i,:));
    JTA(i,:)=jta(4,1:3);
    Robot.plot(sqtraj1(i,:))
    plot2(JTA,'b')
end

