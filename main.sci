funcprot(0);

CHEMIN = 'C:\Users\CookieV3\Desktop\Simulations numeriques\';
global AFFICHER_HISTO
AFFICHER_HISTO = %t;

function main()
    clc; clf();
    chdir(CHEMIN);
//    getd('utils');
    getd('scripts');

    borneA = -1;
    borneB = 1;
    Xi = genererRandUniforme(borneA, borneB);
    Yn = centrerReduire(Xi, borneA, borneB);
    
    if AFFICHER_HISTO then
        histplot(10,Yn);
        tracerDensiteNormale(-5, 5)
    end
    
endfunction

main()
