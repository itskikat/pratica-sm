clear all;
close all;
clc;


%% Ex4

Ta = 0.01;
t = 0:Ta:3;

fi = (rand()-0.5)*2*pi;   %valor aleatorio entre -pi e pi
fi2 = (rand()-0.5)*2*pi;  %valor aleatorio entre -pi e pi
fi3 = (rand()-0.5)*2*pi;  %valor aleatorio entre -pi e pi

x = sin(2*pi*1.1*t +fi) + sin(2*pi*1.2*t +fi2) + sin(2*pi*3*t +fi3);
figure(1);
plot(t,x);
grid on;
xlabel('time (s)');
ylabel('amplitude');
title('signal');
hold on;

