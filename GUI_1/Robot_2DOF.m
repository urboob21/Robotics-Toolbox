function the=Robot_2DOF(l1,l2,x,y)
    a1=2*l1*x;
    b1=2*l1*y;
    d1=x*x+y*y+l1*l1-l2*l2;
    the1=basic_01(a1,b1,d1);
    the2=atan2(y-l1*sin(the1), x-l1*cos(the1))-the1;
    the=[the1 the2];