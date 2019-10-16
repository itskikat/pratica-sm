%% Clear
clear all;
close all;
clc;


%% Ex3

A = imread('Parede.jpg'); %carrega imagem
figure(1);
imshow(A); %mostra imagem


% mostrar 1 pixel a cada 2
pix = 2;
A1 = A(1:pix:end,1:pix:end,:);
figure(2);
imshow(A1);


%mostrar 1 pixel a cada 4
pix = 4;
A2 = A(1:pix:end,1:pix:end,:);
figure(3);
imshow(A2);


%mostrar 1 pixel a cada 8
pix = 8;
A3 = A(1:pix:end,1:pix:end,:);
figure(4);
imshow(A3);


%mostrar 1 pixel a cada 16
pix = 16;
A4 = A(1:pix:end,1:pix:end,:);
figure(5);
imshow(A4);