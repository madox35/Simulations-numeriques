function marche = marcheAleatoireReduc(nombre_pas, T, s)
    
    alpha = 1;
    for i=1:T:nombre_pas
        pas = genererRandBinomiale(1,0.5,1);
        s = sqrt(alpha * T);
        if pas == 0 then
            tabPas(i) = s;
        elseif pas == 1 then
            tabPas(i) = -s;
        end
        marche(i) = sum(tabPas);
        alpha = alpha - alpha/1000;
    end
endfunction
