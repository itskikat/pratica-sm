function Imd = delay_im(Im,k1,k2)

[N1,N2,N3] = size(Im);
Imd = zeros (N1,N2,N3);

if (k1>0)
    if (k2>0)
        %ate k1 é zeros, ate k2 é zeros
        %1+k1 (desolocar para baixo)
        Imd(1+k1:end, 1+k2:end, :) = Im(1:end-k1, 1:end-k2, :);
    else
        %troca de indexacao
        Imd(1+k1:end, 1:end-k2, :) = Im(1:end-k1, 1+k2:end, :);
    end
    
else
    if (k2>0)
        Imd(1:end-k1, 1+k2:end, :) = Im(1+k1:end, 1:end-k2, :);
    else
        Imd(1:end-k1, 1:end-k2, :) = Im(1+k1:end, 1+k2:end, :);
    end
end


end