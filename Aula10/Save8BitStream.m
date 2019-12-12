function Save8BitStream(Filename, N, M, Stream)

ficheiro = fopen(Filename, 'wb');

fwrite(ficheiro, N, 'uint16');
fwrite(ficheiro, M, 'uint16');
fwrite(ficheiro, Stream, 'uint8');

fclose(ficheiro);

end