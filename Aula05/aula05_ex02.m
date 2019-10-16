%% Clear
clear all;
close all;
clc;


%% Ex2

%% A)
Ta = 0.2;
t = [0:Ta:5]';
x = sin(2*pi*t);
figure(1);
ReconstroiSinal(x,Ta);

%% B)
Ta = 0.04;
t = [0:Ta:5]';
y1 = sin(pi*10*t);
y2 = cos(12*pi*t);
y3 = cos(14*pi*t-(pi/4));
y = y1+y2+y3;
figure(2);
ReconstroiSinal(y,Ta);

%% C)
Ta = 0.1;
t = [-5:Ta:5]';
z = sinc(5*t);
figure(3);
ReconstroiSinal(z,Ta);
