function H = Entropia(Texto)
[Simbolos,Frequencia] = Alfabeto2(Texto);
Frequencia = Frequencia/100;

H = sum(-Frequencia.*log2(Frequencia));

end