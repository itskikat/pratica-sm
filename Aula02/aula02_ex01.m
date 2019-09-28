clear all;
close all;
clc;

%% Ex1

Ta = 0.01;
t = 0:Ta:3;

%% A)
x = 2*sin(4*pi*t);
figure(1);
plot(t,x);
grid on;
xlabel('time (s)');
ylabel('amplitude');
title('signal a)');


%% B)
y = sin(10*pi*t + pi/2);
figure(2);
plot(t,y);
grid on;
xlabel('time (s)');
ylabel('amplitude');
title('signal b)');


%% C)
%determinais sinais separados torna-se mais facil
z1 = sin(6*pi*t);
z2 = sin(8*pi*t);
figure(3);
plot(t,z1,t,z2);
grid on;
xlabel('time (s)');
ylabel('amplitude');
title('signal c)');


%% D)
%determinais sinais separados torna-se mais facil
w1 = sin(6*pi*t);
w2 = sin(8*pi*t + 0.1);  %nao se comeca a repetir em 0
figure(4);
plot(t,w1,t,w2);
grid on;
xlabel('time (s)');
ylabel('amplitude');
title('signal d)');


%% E)
%determinais sinais separados torna-se mais facil
q1 = sin(6*pi*t);
q2 = sin(7*pi*t);
q3 = sin(8*pi*t);
figure(5);
plot(t,q1,t,q2,t,q3);
grid on;
xlabel('time (s)');
ylabel('amplitude');
title('signal e)');

