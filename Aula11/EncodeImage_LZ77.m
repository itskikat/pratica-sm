function Stream = EncodeImage_LZ77(Image,Nw,Mw)
% Nw = dimensao janela deslizante (bytes)
% Mw = dimensao janela observacao (bytes)

% 1o passo -- vetorizar a imagem (numa unica linha)
% Como Nw é a janela deslizante, terá que ser menor que Mw
% cada vez que a janela Nw avanca, a janela Mw tambem tem de avancar
% numero de bytes que avanca depende do numero de caracteres que encontra
% 1os simbolos sao copia integral da janela de observacao
% verificar se 1o simbolo de Mw existe, se nao existir é imediatamente
% copiado, se existir, procuram-se sequencias maiores


Image = Image';    %vetorizar a imagem
Image = Image(:);

[Simb,N,Im] = unique(Image);   %Im = conjunto indices dentro da tabela

%tem de ir a image, buscar os primeiros Nw simbolos e copiar para a stream
Stream(1:Nw) = Im(1:Nw);

%escolher ponteiro para o simbolo a tentar codificar
pos = Nw+1;     %imediatamente a seguir a Mw; incrementado 
pos_st = Nw+1;  %ponteiro na stream

% enquanto tiver simbolos para codificar (ponteiro dentro da imagem)
while (pos <= length(Im))
    wind = Im(pos-Nw:pos-1);
    Mw_end = min(pos+Mw-1,legnth(Im)); %final da janela 
    seq = Im(pos:Mw_end); %total a tentar codificar(procurar)
    for k=1:length(seq)
        ind = strfind(wind,seq(1:k))
        if(isempty(ind))
            break;
        end
    end
end
    

end