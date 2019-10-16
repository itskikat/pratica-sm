function ReconstroiSinal(x,Ta)

N = length(x);   %nr pontos
fa = 1/Ta;       %frequencia amostragem

y = zeros(100*N,1); %reconstrucao sinal

frec = 100*fa;   %frequencia sinal reconstruido
Trec = 1/frec;   %periodo sinal reconstruido

t = [0:(length(y)-1)]'*Trec;  %instantes de tempo da reconstrucao

%para cada ponto amostrado, somar a sinc correspondente
for k=1:N
    y = y + x(k)*sinc(fa*(t-(k-1)*Ta));
end

plot(t,y);
grid on;

end
