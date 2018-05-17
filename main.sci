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
    
    lambda=0.5;
//    Xi = genererRandUniforme(borneA, borneB);
    Xi= genererRandExpo(lambda);
    //disp(Xi)
//  Maximum 1000 car la fonction de génération a été manuellement limité à 1000 colonnes (Xi).
//    Yn = centrerReduire(Xi, borneA, borneB, 1000);
    Yn = centrerReduire2(Xi,lambda, 1000);
    
//    plot_cadre=[-5 0 5, max()]
    
    
    if AFFICHER_HISTO then
        histplot(50,Yn);
        tracerDensiteNormale(-5, 5)
    end
    
endfunction

main()
