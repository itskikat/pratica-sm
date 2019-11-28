%% Clear
clear all;
close all;
clc;


%% Ex3
Ta = 0.01;

%% A)
t = 0:Ta:5;
x = 2*sin(4*pi*t);
plot(t,x, 'r');
hold on;


%% B)
t = 0:Ta:5;
y = cos(10*pi*t);
plot(t,y, '--b', 'linewidth', 2);
hold on;

%% C)
z = x.*y;
plot(t,z,'-g.');
hold on;

%% D)
t = 0:Ta:10;
w1 = 3*sin(pi*t);
w2 = 2*sin(6*pi*t);
w = w1+w2;
plot(t,w,'y', 'linewidth', 3);
hold off;
grid on;
legend('x','y','z','w');
ylabel('amplitude');
xlabel('tempo (s)');
title('Sinais');