%%Clear
clear all;
close all;
clc;

%%

fr = (rand(20,1)*19+1);       %frequencias aleatorias entre 1 e 20 Hz
faser = (rand(20,1)*2*pi-pi); %fases aleatorias entre -pi a pi

N = 500;            %nr pontos
Ta = 1e-3;        %periodo pontos
t = (0:N-1)*Ta;     %tempo

x = zeros(size(t));
for k=1:20
    x = x + sin(2*pi*fr(k)*t+faser(k));
end

figure(1)
plot(t,x);
xlabel('Tempo (s)');
ylabel('Amplitude');

figure(2);
espetro(x, Ta, 1);




    
