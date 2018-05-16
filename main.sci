funcprot(0);

CHEMIN = 'C:\Users\Yvan\Desktop\Simulations\Simulations-numeriques\';
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
//  Maximum 1000 car la fonction de génération a été manuellement limité à 1000 colonnes (Xi).
    Yn = centrerReduire(Xi, borneA, borneB, 1000);
    
    if AFFICHER_HISTO then
        histplot(10,Yn);
        tracerDensiteNormale(-5, 5)
    end
    
endfunction

main()
