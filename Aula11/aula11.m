%% Clear
clear all;
close all;
clc;


%% Ex01
[Image,ColorMap] = imread('Parede_8bit.bmp');


%% Ex02
[Symb,Freq] = ImageSymbols(Image);


%% Ex03
% nao tem 256 simbolos diferentes, logo nao precisa de 8 bits
% temos 35 simbolos
% 2^6 = 64 --> 6 bits/simbolos -- poupam-se 2 bits em cada simbolo
% ganho de (N*M)*2 bits


%% Ex04 
