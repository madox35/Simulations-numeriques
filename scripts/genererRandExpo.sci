function Xi = genererRandExpo(lambda, iter)
    // On génère i lignes sur une colonne de v.a suivant la loi expo
    Xi = grand(iter,1,'exp',1/lambda);
endfunction
