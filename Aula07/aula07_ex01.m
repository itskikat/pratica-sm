%% Clear
clear all;
close all;
clc;


%% Ex 1
load('Guitar01.mat');


%% Ex 2
Ta = 1/fa;
[X,f] = espetro(x,Ta,0);
figure(1);
title('Espetro sinal carregado');


%% Ex 3
%filtro na banda de 100Hz e 500Hz
F = filtroSinal(f',100,500);
figure(2);
plot(f,abs(F));
[w,Ta] = reconstroi(F.*X,fa);

%filtro na banda de 500Hz e 1kHz
F = filtroSinal(f',500,1000);
figure(3);
plot(f,abs(F));
[w,Ta] = reconstroi(F.*X,fa);

%filtro na banda de 500Hz e 1kHz
F = filtroSinal(f',1000,2000);
figure(4);
plot(f,abs(F));
[w,Ta] = reconstroi(F.*X,fa);


%% Ex 4
xd1 = DelaySinal(x,0.2,fa);
xd2 = DelaySinal(x,0.4,fa);
xd3 = DelaySinal(x,0.6,fa);
xd4 = DelaySinal(x,0.8,fa);

y = (x + 0.5*xd1 + 0.3*xd2 + 0.2*xd3 + 0.1*xd4)/1.2;
%sound(y,fa)
[X,f] = espetro(y,Ta,0);
figure(5);
title('Espetro Sinal Efeito Eco');


%% Ex 5
z = 0.1*tanh(1000*x);
Ta = 1/fa;
%sound(z,fa)
[Z,fz] = espetro(z,Ta,0);
figure(6);
title('Espetro sinal distorcido');


%% Ex 6
z_eco = (z + 0.5*xd1 + 0.3*xd2 + 0.2*xd3 + 0.1*xd4)/1.2;
%sound(z_eco,fa)



