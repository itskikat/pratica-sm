%% Clear
clear all;
close all;
clc;

%% Ex 04
Ta = 0.01;
t = 0:Ta:3;

fi1 = (rand()-0.5)*2*pi;
fi2 = (rand()-0.5)*2*pi;
fi3 = (rand()-0.5)*2*pi;

x = sin(2*pi*1.1*t + fi1) + sin(2*pi*1.2*t + fi2) + sin(2*pi*3*t + fi3);
figure(1);
plot(t,x);
grid on;
