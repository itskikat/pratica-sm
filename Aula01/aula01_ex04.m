%% Clear
clear all;
close all;
clc;

%% Ex4
Ta = 0.01;
t1 = 0:Ta:5;
t2 = 0:Ta:5;
[T1,T2] = meshgrid(t1,t2);
q = 2*sin(2*pi*(2*T1+T2));
surf(T1,T2,q,'EdgeColor','none');
colormap('gray');

%construir escala 
cmap = repmat((0:0.01:1)',1,3);
