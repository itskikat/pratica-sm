function [ak,bk] = RM_Fourier(Ta,T0,x,K)

t = 0:Ta:T0;

ak = zeros(K:1);
bk = zeros(K:1);

for k=1:K
    sin_k = sin(k*T0*t);
    cos_k = cos(k*T0*t);
    
    ak(k) = sum(x.*cos_k.*Ta).*2/T0;
    bk(k) = sum(x.*sin_k.*Ta).*2/T0;

end

end