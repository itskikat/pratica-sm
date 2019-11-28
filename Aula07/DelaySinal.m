function xd = DelaySinal(x,d,fa)

Nd = d*fa;
xd = [zeros(Nd,1); x(1:(end-Nd))];

end