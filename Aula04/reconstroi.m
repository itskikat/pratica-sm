function [x,Ta] = reconstroi(X,f)

N = length(X);
X = ifftshift(X);
x = ifft(X)*N;
fa = f*2;
Ta = 1/fa;

t = (0:N-1)*Ta;

plot(t,x)
xlabel('Tempo (s)');
ylabel('Amplitude');


end