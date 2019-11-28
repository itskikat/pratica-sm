function [x,Ta] = reconstroi(X,f)

Ta = 1/f;
N = length(X);
t = (0:N-1)*Ta;

X = X*N;
X = ifftshift(X);
x = ifft(X);

plot(t,x)
xlabel('Tempo (s)');
ylabel('Amplitude');


end