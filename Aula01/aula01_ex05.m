%% Clear
close all;
clear all;
clc;


%% Ex5
xa = 0.1;
Ta = 1/25;
x1 = -5:xa:5;
x2 = x1;
t = 0:Ta:5;

[X1,X2,T] = meshgrid(x1,x2,t);

r = 2*sin(2*pi*sqrt(X1^2 + X2^2)-2*pi*T);

%% OU calcular cada frame dentro do for
[X1,X2] = meshgrid(x1,x2);

for k1 = 0:Ta:5
    r = 2*sin(2*pi*sqrt(X1^2 + X2^2)-2*pi*k1);
    surf(X1,X2,r);
    pause(Ta);
end

    
