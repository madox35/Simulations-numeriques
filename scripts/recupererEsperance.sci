function [Xn] = recupererEsperance(lambda, N)

    esp = 1/lambda;
    for i=1:N   
        // On génère i lignes sur une colonne de v.a suivant la loi expo
        Xi = grand(i,1,'exp', esp);
        Xn(i) = (1/i)*sum(Xi);
    end
    plot2d(Xn);
endfunction
