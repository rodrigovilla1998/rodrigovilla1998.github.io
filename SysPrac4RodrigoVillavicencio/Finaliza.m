function [c] = Finaliza(x,h)
    c = UltimoValor(h) + UltimoValor(x); 
    disp(c);
end