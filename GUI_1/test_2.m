x = -pi:.1:pi;t = -pi/4;

y = sin(x);

plot(x,y)

set(gca,'XTick',-pi:pi/2:pi)

set(gca,'XTickLabel',{'-pi','pi/2','0','pi/2','pi'})

xlabel('-\pi \leq \Theta \leq \pi')

ylabel('sin(\Theta)')

title('Plot of sin(\Theta)')


hold on
