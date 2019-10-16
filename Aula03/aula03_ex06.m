%% Clear
clear all;
close all;
clc;


%% Ex 6)
Ta = 0.01;
t = 0:Ta:4;
T0 = 5;
K = 2;

x = 5*sin(2*pi*t) + 4*sin(6*pi*t);
fourier(Ta,T0,x,K)