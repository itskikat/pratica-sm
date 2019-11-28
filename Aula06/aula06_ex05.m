%% Clear
clear all;
close all;
clc;


%% Ex 5
N = 10000;
Ta = 1/400;
figure(1)
title('Sinal Gerado');
[x,t] = GeraSinal(N, Ta);

figure(2);
title('Espetro do sinal');
[X,f] = espetro(x,Ta,0);

H = ((f < 1.5) & (f >= -1.5)); %devolve 0 e 1 -- 1 é verdadeiro, 0 é falso
figure(3);
title('Espetro Sinal Filtrado');
grid on;
plot(f, abs(H));


Z = 1-H;
reconstroi(Z.*X,1/Ta);
figure(4); 
title('Sinal Ruido');
grid on;


Px = (1/length(x)) * abs(x) * abs(x)';
Pz = (1/length(z)) * abs(z) * abs(z)';

SNR = Px/Pz;
SNRdb = 10*log10(SNR)
