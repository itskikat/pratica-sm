%% Clear
clear all;
close all;
clc;

%% Ex3 

%% A)
Ta = 0.01;
t = 0:Ta:5;
x = 2*sin(4*pi*t);  %conjunto de pontos
plot(t,x,'-r');
hold on;
%traco continuo e fino, vermelho = '-r'


%% B)
y = cos(10*pi*t);
plot(t,y,'--b','Linewidth',2);
hold on;
%traco grosso tracejado, azul = '--b','Linewidth',2


%% C)
z = x.*y;
plot(t,z,'-.g');
hold on;
%traco continuo e fino, pontos a cada amostra, verde = 'g-.'


%% D)
a = 0:Ta:10;
w = 3*sin(pi*a) + 2*sin(6*pi*a);
%traco grosso amarelo = '-y','Linewidth',2
plot(a,w,'y','Linewidth',2);
hold off;

grid on;             %mostra grelha
xlabel('Time (s)');  %legenda eixo x
ylabel('Amplitude'); %legenda eixo y
title('Signals');    %titulo do grafico
legend('x','y','z','w'); %legenda de cada grafico

