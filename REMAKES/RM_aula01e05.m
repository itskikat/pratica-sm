%% Clear
clear all;
close all;
clc;


%% Ex 5
Ta = 1/25;
x1 = -5:Ta:5;
x2 = -5:Ta:5;
[X1,X2] = meshgrid(x1,x2);

for k=0:Ta:5
    r = 2*sin(2*pi*sqrt(X1.^2 + X2.^2)-2*pi*k);
    mesh(X1,X2,r);
    view(2);
    pause(Ta);
end