function [X,f] = espetro (x,Ta,w)
%funcao para retornar e apresentar espetro de um sinal
%Ta - periodo amostragem ; x - vetor de amostras
%X - coeficientes de DFT ; f - frequencias de cada componente

N = length(x);       %nr de pontos
fa = 1/Ta;           %frequencia base

if (w ~= 0)
    x = x.*blackman(N).';  %.' - faz a transposta do vetor
    
end 


f = (-fa/2):(fa/N):(fa/2-fa/N);

X = fft(x);
%move funcao anterior para a componente de frequencia zero ficar no centro do espetro
X = fftshift(X); 
%normalizar
X = X/N;


plot(f,abs(X));
xlabel('Frequencia (Hz)');
ylabel('Amplitude');
grid on;

end