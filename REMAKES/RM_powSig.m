function RM_potencia = RM_powSig(x,Ta,T)
x2 = x.^2;
area = x2*Ta; %retangulos do integral

RM_potencia = sum(area)/T; %area total/T == potencia 
end