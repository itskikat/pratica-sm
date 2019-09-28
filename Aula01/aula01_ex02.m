%% Clear
close all;
clear all;
clc;


%%Ex2
%% A)
Ta = 0.1;
t = 0:Ta:5;
x = 2*sin(4*pi*t);  %conjunto de pontos
figure(1);
plot(t,x);
xlabel('time(s)');
ylabel('Amplitude');
title('Signal a)');
grid on;

%% B)
y = cos(10*pi*t);
figure(2);
plot(t,y);
xlabel('time(s)');
ylabel('Amplitude');
title('Signal b)');
grid on;


%% C)
z = x.*y;
figure(3);
plot(t,z);
xlabel('time(s)');
ylabel('Amplitude');
title('Signal c)');
grid on;


%% D)
a = 0:Ta:10;
w = 3*sin(pi*a) + 2*sin(6*pi*a);
figure(4);
plot(a,w);
xlabel('time(s)');
ylabel('Amplitude');
title('Signal d)');
grid on;


%% E)
t1 = 0:Ta:5;
t2 = 0:Ta:5;
[T1,T2] = meshgrid(t1,t2);
q = 2*sin(2*pi*(2*T1+T2));
figure(5);
mesh(T1,T2,q);
xlabel('time(s)');
ylabel('time(s)');
zlabel('Amplitudes');
title('Signal e)');
grid on;


