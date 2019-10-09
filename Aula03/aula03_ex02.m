%%Clear
clear all;
close all;
clc;


%% Ex2

ak = zeros(100,1);
bk = zeros(100,1);

impar = 1:2:100;
bk(impar) = 4./(impar*pi);
[x,t] = inversa_fourier(0.01,1,6,ak,bk);

plot(t,x);
