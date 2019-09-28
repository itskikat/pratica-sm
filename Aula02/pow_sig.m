function p = pow_sig(x,Ta,T) %pow_sig - nome funcao; p- o que e devolvido
x2 = x.^2;
area = x2*Ta;
p = sum(area)/T;
end

%Ta intervalos entre pontos
%multiplicar valores de x(ao quadrado) por Ta, obtem-se os retangulos
%somar todos - area total
%dividir por T, devolve potencia

