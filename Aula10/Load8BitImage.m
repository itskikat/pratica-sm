function [N,M,Im] = Load8BitImage(Filename)

ficheiro = fopen(Filename, 'rb');
N = fread(ficheiro, 1, 'uint16');
M = fread(ficheiro, 1, 'uint16');
Im = fread(ficheiro,[N,M],'uint8');
fclose(ficheiro);

end