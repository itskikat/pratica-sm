function im_med = FiltraImagem_2(Imagem)
%Converte para double pois e do tipo uint8 (suporta vals de 0-255)
im_new = double(Imagem);

im_med = 64*(im_new-(delay_im(im_new,1,0)+delay_im(im_new,-1,0)+delay_im(im_new,0,1)+delay_im(im_new,0,-1))/4);

end