function Xi = genererRandBinomiale(n,p, iter)
    // On génère "iter" lignes sur une colonne de v.a suivant la loi Binomiale
    Xi = grand(iter,1,'bin',n,p);
endfunction
