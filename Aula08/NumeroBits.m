function NumBits = NumeroBits(Texto)

N = length(Texto);
[Simbolos,Frequencia] = Alfabeto2(Texto);
%ordena da maior para a menor
sorted_freq = sort(Frequencia,'descend');
n = [1:length(sorted_freq)];

NumBits = sorted_freq/100*n'*N;

end