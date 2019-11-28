function novaImagem = FiltraImagem_Media(Imagem,Np)

im_new = double(Imagem);
novaImagem = zeros(size(Imagem));

for k1= -(Np-1)/2:(Np-1)/2
    for k2= -(Np-1)/2:(Np-1)/2
        novaImagem = novaImagem + delay_im(im_new,k1,k2);
    end
end



end