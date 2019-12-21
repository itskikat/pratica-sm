function Image = DecodeImage_LZ77(N,M,Nw,Mw,Symb,Stream)

Image_new = uint8(zeros(N*M,1));
Image_new(1:Nw) = Stream(1:Nw);
pos = Nw+1;
pos_stream = Nw+1;

while(pos_stream <= length(Stream))
   if (Stream(pos_stream) > 2^7)
       index = pos-Nw+1 + double(Stream(pos_stream)-2^7);
       rep = double(Stream(pos_stream+1));
       Image_new(pos+(0:rep-1)) = Image_new(index+(0:rep-1));
       pos_stream = pos_stream+2;
       pos = pos+rep;
   else
       Image_new(pos) = Stream(pos_stream);
       pos_stream = pos_stream+1;
       pos = pos+1;
   end
end

Image = reshape(Symb(Image_new),M,N).';
end

