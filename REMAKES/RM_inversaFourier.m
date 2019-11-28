function [x,t] = RM_inversaFourier(Ta,f0,Np,ak,bk)
% Sinal resultante da serie de fourier

T = 1/f0;         %periodo para cada tempo
Tfinal = T*Np;    %periodo final (tempo final a considerar)

t = 0:Ta:Tfinal;  %tempo amostragem

K = length(ak);

x = zeros(size(t));

for k=1:K
    sin_k = sin(k*2*pi*t*f0);
    cos_k = cos(k*2*pi*t*f0);
    x_k = ak(k)*cos_k + bk(k)*sin_k;
    x = x+x_k;
end

end
