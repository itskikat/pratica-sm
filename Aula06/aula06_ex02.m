%% Clear
clear all;
close all;
clc;


%% Ex 2
fa = 400;
Ta = 1/fa;
N = 10000;

figure(1);
[x,t] = GeraSinal(N, Ta);

figure(2)
espetro(x, Ta, 0);