function [Symb,Freq] = ImageSymbols(Image)
% retorna em Symb, lista(Kx1) de simbolos (codigo cores) na imagem
% retorna em Freq, vetor(Kx1) a frequencia em percentagem
[N,M] = size(Image);
k = 1;
Symb(k,1) = Image(1,1);
Freq(k,1) = sum(sum (Image == Symb(k)))/(N*M) * 100;

for k2=2:N
    for k3=1:M
        if sum(Symb == Image(k2,k3)) == 0
            % Novo simbolo
            k = k+1;
            Symb(k,1) = Image(k2,k3);
            Freq(k,1) = sum(sum (Image == Symb(k,1)))/(N*M) * 100;
        end
    end
end

end
