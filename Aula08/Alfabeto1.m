function Simbolos = Alfabeto1(Texto)

k = 1;
while (~isempty(Texto))
    Simbolos(k) = Texto(1);
    Texto = Texto(Texto ~= Simbolos(k));
    k = k+1;
end

end