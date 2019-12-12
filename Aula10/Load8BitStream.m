function [N, M, Stream] = Load8BitStream(Filename)

ficheiro = fopen(Filename, 'rb');
N = fread(ficheiro, 1, 'uint16');
M = fread(ficheiro, 1, 'uint16');
Stream = fread(ficheiro);
fclose(ficheiro);

end