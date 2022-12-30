function x = Slove_atan2f(a,b,d)
alpha = atan2(b,a);
x1 = atan2(sqrt(a*a+b*b-d*d),d)+alpha;
x2 = atan2(-sqrt(a*a+b*b-d*d),d)+alpha;
x = [x1 x2];
end