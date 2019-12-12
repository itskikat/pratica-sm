function Image = DecodeImage_RLE(N, M, Stream)
% PROFESSOR
% Stream = double(reshape(Stream,2,[])); %% 2 linhas, cima = simbolos
% L = size(Stream,2);
% Image = zeros(N*M,1);
% pos = 0;
% for k1=1:L
%     simb = Stream(1,k1);
%     count = stream(2,k2);
%     Image(pos+(1:count)) = simb;
%     pos = pos+count;
% end
% Image = uint8(reshape(Image,M,N)');

Image = zeros(N, M);
i = 1;
i2 = 0;
simbolos = 0;

for n=1:N
    for m=1:M
        if (i2 == 0)
            simbolos = Stream(i+1);
            i2 = 1;
        end
    
        Image(n,m) = Stream(i);
        simbolos = simbolos-1;

        if (simbolos == 0)
            i2 = 0;
            i = i+2;
        end
    end
end

end