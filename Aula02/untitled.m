clear all;
close all;
clc

Ta = 0.00001;
t = 0:Ta:0.3;
x = 2*cos(2*pi*50*t + pi/2) + 3*cos(2*pi*50*t + pi);
plot(t,x);