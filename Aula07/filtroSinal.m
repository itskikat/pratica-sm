function F = filtroSinal(f,max,min)

F = ( (f>-max)|(f<-min) ) & ((f>min)|(f<max));
F = 1-F;

end