q0=[0 0 0 0 0 0 0];


%Iniciar Rbt
L1=Link([0 12.4 0 pi/2 0 -pi/2]);
L2=Link([0 0 0 -pi/2 ]);
L3=Link([0 15.43 0 pi/2 ]);
L4=Link([0 0 0 -pi/2 0 0]);
L5=Link([0 15.925 0 pi/2]);
L6=Link([0 0 0 -pi/2 ]);
L7=Link([0 15.0 0 0 0 pi/2]);




Robot=SerialLink([L1 L2 L3 L4 L5 L6 L7]);
Robot.name = '4DOF Robot';

 Robot.plot([0 0 0 0 0 0 0]);