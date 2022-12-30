
qsq1=[0.46088 0.37699 0 1.31 0 1.4451 0];

t=0:.04:2;
sqtraj1=jtraj(q0,qsq1,t); 

hold on
atj=zeros(4,4);
view(-35,40)
xlim([-40,40])
ylim([-40,40])
zlim([0,60])
for i=1:1:51
    atj=Robot.fkine(sqtraj1(i,:));
    jta=transpose(atj);
    JTA(i,:)=jta(4,1:3);
    jta=JTA;
    plot2(jta(i,:),'r.')
    Robot.plot(sqtraj1(i,:))
    plot2(JTA,'b')
end
