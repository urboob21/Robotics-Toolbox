d_1 = 0;d_2 = 4.2;d_3 = 0;d_4 = 0;d_5 = 0;
a_1= 0;a_2=0.9;a_3=7.7;a_4=9.7;a_5=13.3;
anpha_1=0;anpha_2=-pi/2;anpha_3=0;anpha_4=0;anpha_5=0;
Kx=21.9;
Ky=0
Kz=13.9;
L(1) = Link([0,d_1,a_1,anpha_1,0],'standard');
L(2) = Link([0,d_2,a_2,anpha_2,0],'standard');
L(3) = Link([0,d_3,a_3,anpha_3,0],'standard');
L(4) = Link([0,d_4,a_4,anpha_4,0],'standard');
L(5) = Link([0,d_5,a_5,anpha_5,0],'standard');

Robot=SerialLink(L);
 Tf=[1 0 0 Kx;
    0 1 0 Ky;
    0 0 1 Kz;
    0 0 0 1];

J=Robot.ikine(Tf,[0 0 0 0 0],[1 1 1 1 1 0])*180/pi;