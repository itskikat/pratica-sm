%% Clear
clear all;
close all;
clc;


%% Ex 4
Ta = 0.01;   %periodo amostragem (s)
f0 = 1;      %frequencia sinal composto
Np = 8;      %nr pontos a considerar para sinal resultante

ak = zeros(100,1);
bk = zeros(100,1);

imp = 1:2:100;
bk(imp) = 4./ (imp*pi);

[x,t] = RM_inversaFourier(Ta,f0,Np,ak,bk);

plot(t,x);
xlabel('t');
ylabel('x(t)');