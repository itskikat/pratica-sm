%% RESOLUCAO STOR

function[x, t] = inversa_fourier(Ta, f0, Np, ak, bk)
%sinal resultante da serie de Fourier
%devolve sinal a calcular e tempo (para nao calcular fora da funcao)

T = 1/f0;          %periodo (tempo que cada um tempo)
Tfinal = Np * T;   %periodo final (tempo final)
t = 0:Ta:Tfinal;

K = length(ak);

x = zeros(size(t)); %dimensoes totais /linhas e colunas/ mesmo tamanho da var t
for k=1:K
    sin_k = sin(k*2*pi*f0*t);
    cos_k = cos(k*2*pi*f0*t);
    x_k = ak(k)*cos_k + bk(k)*sin_k; %ak(k) usado para indexar
    x = x+x_k;
    
end

end

