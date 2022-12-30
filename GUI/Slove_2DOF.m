function theta = Slove_2DOF(l1,l2,x,y)
a1=2*l1*x;
b1=2*l1*y;
d1=x*x+y*y+l1*l1-l2*l2;
theta1=Slove_atan2f(a1,b1,d1);
theta2=atan2(y-l1*sin(theta1(1,1)),x-l1*cos(theta1(1,1)))-theta1;
theta = [theta1(1,1) theta2(1,1)];
end