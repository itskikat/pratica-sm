function [Simbolos,Frequencia] = Alfabeto2(Texto)

k = 1;
while (~isempty(Texto))
    Simbolos(k) = Texto(1);
    ocorrencias(k) = sum(Texto == Simbolos(k));
    Texto = Texto(Texto ~= Simbolos(k));
    k = k+1;
end

Frequencia = (ocorrencias/sum(ocorrencias))*100;


end