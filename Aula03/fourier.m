function [a_k,b_k] = fourier(Ta,T0,x,K)
%funcao para calcular os coeficientes ak e bk de um sinal periodico x(t)

t = 0:Ta:T0;     %assumir que so se passa 1 periodo de sinal 

a_k = zeros(K:1);
b_k = zeros(K:1);

for k=1:K
    sin_k = sin(k*T0*t);
    cos_k = cos(k*T0*t);
   
    a_k(k) = sum(x.*cos_k.*Ta).*2/T0;
    b_k(k) = sum(x.*sin_k.*Ta).*2/T0;

end