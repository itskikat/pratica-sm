function Stream = EncodeImage_RLE(Image)
% Stream = vetor (Kx1) sequencia de bytes tipo uint8 - compressao da imagem
% número de ocorrências consecutivas de cada cor é armazenado num uint8

[N,M] = size(Image);

% simbolos consecutivos
simbolos = uint8(0);
% primeiros bytes sao o inicio da imagem
i = 1;
Stream(i,1) = Image(1,1);

for n=1:N
    for m=1:M
        if (Image(n,m) == Stream(i,1))
            simbolos = simbolos+1;
            % So e possivel contar ate 255 em uint8
            if (simbolos == 255)
                i = i+1;
                Stream(i,1) = simbolos;
                i = i+1;
                Stream(i,1) = Image(n,m);
                simbolos = 1;
            end
        else
            i = i+1;
            Stream(i,1) = simbolos;
            i = i+1;
            Stream(i,1) = Image(n,m);
            simbolos=1;
        end
    end
end

i = i+1;
Stream(i) = simbolos;

end