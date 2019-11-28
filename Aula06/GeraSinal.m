function [x,t] = GeraSinal(N,Ta)

phi_1 = pi*randn(N,1);
phi_2 = pi*randn(N,1);

%Integrar (os phi - multiplicar por Ta)
phi_1 = cumsum(phi_1*Ta);
phi_2 = cumsum(phi_2*Ta);

t = (0:N-1)'*Ta;

r = 0.5*sin(20*pi*t + 10*phi_1) + 0.5*sin(24*pi*t + 10*phi_2);
x = sin(2*pi*t) + r;

plot(t,x);
ylabel('Amplitude');
xlabel('Tempo (s)');
end