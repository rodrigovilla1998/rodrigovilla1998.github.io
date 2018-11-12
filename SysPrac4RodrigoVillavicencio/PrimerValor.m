function [j] = PrimerValor(x)

    for i=-1000:0.1:1000
        if(x(i) ~= 0)
            %disp(i);
            j=i;
            break;
        end
    end
end 
  