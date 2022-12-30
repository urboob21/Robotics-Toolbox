function x = basic_01(a,b,d)
    anp = atan2(b,a);
    x1 = atan2(sqrt(a*a + b*b - d*d),d) + anp;
    x2 = atan2(-sqrt(a*a + b*b - d*d),d) + anp;
    x = [x1; x2];