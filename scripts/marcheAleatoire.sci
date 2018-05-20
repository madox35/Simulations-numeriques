function marche = marcheAleatoire(nombre_pas, T, s)
    
    for i=1:T:nombre_pas
        pas = genererRandBinomiale(1,0.5,1);
        if pas == 0 then
            tabPas(i) = s;
        elseif pas == 1 then
            tabPas(i) = -s;
        end
        marche(i) = sum(tabPas)
    end
endfunction
