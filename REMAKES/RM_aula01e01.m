%% Clear
clear all;
close all;
clc;


%% Ex1
Ta = 0.01;

%% A)
t = 0:Ta:5;
x = 2*sin(4*pi*t);
figure(1);
plot(t,x)
title('Sinal a)');
xlabel('tempo (s)');
ylabel('amplitude');

%% B)
t = 0:Ta:5;
y = cos(10*pi*t);
figure(2);
plot(t,y);
title('Sinal b)');
xlabel('tempo (s)');
ylabel('amplitude');

%% C)
z = x.*y;
figure(3);
plot(t,z);
title('Sinal c)');
xlabel('tempo (s)');
ylabel('amplitude');

%% D)
t = 0:Ta:10;
w1 = 3*sin(pi*t);
w2 = 2*sin(6*pi*t);
w = w1+w2;
figure(4);
plot(t,w);
title('Sinal d)');
xlabel('tempo (s)');
ylabel('amplitude');

%% E)
t1 = 0:Ta:5;
t2 = 0:Ta:5;
[T1,T2] = meshgrid(t1,t2);
q = 2*sin(2*pi*(2*T1+T2));
figure(5);
mesh(T1,T2,q);
title('Sinal e)');







