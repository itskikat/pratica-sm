function [NumBits,NumBPS] = GeraMensagem(f,CompMesg,nBits)

Msg = rand(CompMesg,1);
fc = cumsum(f);          %frequencias cumulativas
vec = zeros(CompMesg,length(fc));

for k=1:length(fc)
   vec(:,k) = Msg>fc(k);
end

ind = sum(vec,2) + 1;
NumBits = sum(nBits(ind));
NumBPS = NumBits/CompMesg;

end