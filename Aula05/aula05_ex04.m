%% Clear
clear all;
close all;
clc;


%% Ex4

%% A)
Ta = 0.01;
x1 = [0:Ta:5];
x2 = [0:Ta:5];

y = zeros(length(x1),length(x2));

for k=1:length(x1)
   y(:,k) = cos(2*pi*(x1(k)-2*x2));
end

figure(1);
imshow(y);

figure(3);
Espetro2(y,Ta);


%% B)
Ta = 0.01;
x1 = [-5:Ta:5];
x2 = [-5:Ta:5];

[X1,X2] = meshgrid(x1,x2);

z = cos(2*pi*sqrt(X1.^2 + X2.^2));
figure(2);
imshow(z);

figure(4);
Espetro2(z,Ta);
