%% Clear
clear all;
close all;
clc;

%% Ex1 

%% A)
Ta = 0.01;
t = 0:Ta:5;
x = 2*sin(4*pi*t);  %conjunto de pontos


%% B)
y = cos(10*pi*t);


%% C)
z = x.*y;


%% D)
a = 0:Ta:10;
w = 3*sin(pi*a) + 2*sin(6*pi*a);


%% E)
t1 = 0:Ta:5;
t2 = 0:Ta:5;
[T1,T2] = meshgrid(t1,t2);
q = 2*sin(2*pi*(2*T1+T2));

