%% Clear
clear all;
close all;
clc;


%% Ex 01
load Mensagem.mat;

simbolos = Alfabeto1(Mensagem);


%% Ex 02
[Simbolos, Frequencia] = Alfabeto2(Mensagem);


%% Ex 04
NumBits = NumeroBits(Mensagem);


%% Ex 06
H = Entropia(Mensagem);