%% Clear
clear all;
close all;
clc;


%% Ex 02
f = [0.14 0.64 0.05 0.10 0.07];
CompMesg = 1000;
nBits = [2 1 4 3 4];

[NumBits,NumBPS] = GeraMensagem(f,CompMesg,nBits);

%% Iterar
f = [0.14 0.64 0.05 0.10 0.07];
CompMesg = 1000;
nBits = [2 1 4 3 4];
nBits2 = [3 1 3 3 3];

for a=1:4
    k=10^a;
    for k=1:1000
        [~,NumBPS(a,k)] = GeraMensagem(f,CompMesg,nBits);
        [~,NumBPS2(a,k)] = GeraMensagem(f,CompMesg,nBits2);
    end
end

% Verificacao dos codigos
plot(NumBPS(end,:)','LineWidth',2);
hold on;
plot(NumBPS2(end,:),'LineWidth',2);
hold off;

%corre a funcao 1000x, gera 1000 mensagens, com diferentes tamanhos