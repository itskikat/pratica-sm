function  Save8BitImage(Filename, image)

ficheiro = fopen(Filename, 'wb');
[N,M] = size(image);

%os primeiros 2 bytes guardam o valor de N (no formato uint16)
N = uint16(N);  
fwrite(ficheiro, N, 'uint16');

%os 2 bytes seguintes guardam o valor de M (no formato uint16)
M = uint16(M);
fwrite(ficheiro, M, 'uint16'); 

%os restantes bytes guardam todos os valores de Image (no formato uint8)
fwrite(ficheiro, image, 'uint8');

fclose(ficheiro);

end