function [Xn] = moyenneEmpirique(N)

    for i=1:N   
        Xi = genererRandNormale(0,0.2, i);
        Xn(i) = (1/i)*sum(Xi);
    end
endfunction
