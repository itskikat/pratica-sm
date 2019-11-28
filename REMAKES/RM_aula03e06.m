%% Clear
clear all;
close all;
clc;


%% Ex 6

%% B)
Ta = 1/100;
T0 = 0.5
K = 6
x = sawtooth(0.5);
plot(x);

[ak,bk] = RM_Fourier(Ta,T0,x,K);