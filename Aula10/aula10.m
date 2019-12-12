%% Clear
clear all;
close all;
clc;


%% Ex 01
[Image,ColorMap] = imread('Parede_8bit.bmp');


%% Ex 02
Save8BitImage('ex02', Image);
size = dir('ex02');
bytes = size.bytes; % nr bytes que imagem ocupa

%% Ex 03
[N,M,Im] = Load8BitImage('ex02');
Im = uint8(Im);


%% Ex 04
Stream = EncodeImage_RLE(Image);


%% Ex 05
Save8BitStream('ex05', N, M, Stream),
size2 = dir('ex05');
bytes2 = size2.bytes;


%% Ex 06
[N2,M2,Stream2] = Load8BitStream('ex05');
Stream2 = uint8(Stream2);


%% Ex 07
Image2 = DecodeImage_RLE(N2,M2,Stream2);
Image2 = uint8(Image2);


%% ARCA
[Image,ColorMap] = imread('Arca_8bit.bmp');
Save8BitImage('exarca', Image);
[N,M,Im] = Load8BitImage('exarca');
Im = uint8(Im);
Stream = EncodeImage_RLE(Image);
Save8BitStream('exarca',N,M,Stream);
[N2,M2,Stream2] = Load8BitStream('exarca');
Stream2 = uint8(Stream2);
Image2 = DecodeImage_RLE(N2,M2,Stream2);
Image2 = uint8(Image2);