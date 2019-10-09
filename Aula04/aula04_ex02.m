%%Clear
clear all;
close all;
clc;


%% Ex2

%% A)
Ta = 1/20;
t = 0:Ta:(10-Ta); 
x = sin(2*pi*t);

espetro(x,Ta);

%% B)
Ta = 1/20;
t = 0:Ta:(5-Ta);
y1 = sin(10*pi*t);
y2 = cos(12*pi*t);
y3 = cos(14*pi*t - pi/4);
y = y1 + y2 + y3;

espetro(y,Ta);


%% C)
Ta = 1/20;
t = 0:Ta:(5-Ta);
z = square(2*pi*t);

espetro(z, Ta);


%% D)
Ta = 1/20;
t2 = -1:Ta:(5-Ta);
q = sawtooth(2*pi*t2, 0.5);

espetro(q, Ta);