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

Image = Image.';
[Symb,~,Image_new] = unique(Image(:));
Image_new = uint8(Image_new);
Stream(1:Nw,1) = Image_new(1:Nw);
pos = Nw+1;
pos_stream = Nw+1;
max_len = length(Image_new);

while (pos<=max_len)
    wind = Image_new(pos-Nw:pos-1);
    Mlen = min(pos+Mw-1,max_len);
    seq = Image_new(pos:Mlen);
    for k1 = 1:length(seq)
        index = strfind(wind:seq(1:k1)');
        if(isempty(index)
            size_found = k1-1;
            break;
        else
            size_found = k1;
            index_found = index(1);
        end
    end
    if (size_found < 2)
        Stream(pos_stream) - Image_new(pos);
        size_found = 1;
        pos_stream = pos_stream + 1;
    else
        Stream(pos_stream) = 2^7 + uint8(index_found);
        Stream(pos_stream+1) = uint8(size_found);
        pos_stream = pos_stream+2;
    end
    pos = pos+size_found;
end

end