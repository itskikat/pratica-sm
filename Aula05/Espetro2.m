function Espetro2(Q,passo)
% Q - matriz MxN que representa espetro bidimensional da imagem
% passo - distancia entre dois pixeis consecutivos == tempo amostragem

%constantes fundamentais
fa = 1/passo;     %frequencia amostragem
N1 = size(Q,1);   %tamanho vertical
N2 = size(Q,2);   %tamanho horizontal

%pontos em cada eixo podem nao ser iguais
%criar representacao frequencias -- eixo vertical e horizontal
fb1 = -fa/2:(fa/N1):(fa/2-fa/N1); 
fb2 = -fa/2:(fa/N2):(fa/2-fa/N2);

%duas matrizes retangulares, uma com as freq. num eixo e outra no outro
[f1,f2] = meshgrid(fb1,fb2);


Qs = fft2(Q);
Qs = fftshift(Qs);  %organiza para ter freq. positivas e negativas no sitio certo
Qs = Qs/(N1*N2);


mesh(f1,f2,abs(Qs));

end