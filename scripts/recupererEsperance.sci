function [Xn] = recupererEsperance(lambda, N)

    for i=1:N   
        Xi = genererRandExpo(lambda, i);
        Xn(i) = (1/i)*sum(Xi);
    end
endfunction
