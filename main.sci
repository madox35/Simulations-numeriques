funcprot(0);

CHEMIN = 'C:\Users\Hugo Jové (sécurité)\Desktop\Simulations-numeriques';
global AFFICHER_HISTO
AFFICHER_HISTO = %t;

global AFFICHER_EXO1;
AFFICHER_EXO1 = %f;

global AFFICHER_EXO2;
AFFICHER_EXO2 = %f;

global AFFICHER_EXO3;
AFFICHER_EXO3 = %t;

function main()
    clc; clf();
    chdir(CHEMIN);
    getd('utils');
    getd('scripts');

    if AFFICHER_EXO1 then
        //   Partie 1
        //   Q1
//        Yn = centrerReduireUnif(1000);
         
        //  Q2
//        lambda=1;
//        Yn = centrerReduireExpo(lambda, 1000);  

//    //   Partie 2
        n = 100;
        p = 0.03;
        lambda = n*p;
        Xi = genererRandBinomiale(n,p,1000);
//        
        if AFFICHER_HISTO then
//            histplot(50,Yn);
//            tracerDensiteNormale(1000,0,1)
    
            histplot(50,Xi);
            tracerDensitePoisson(min(Xi), max(Xi), lambda);
        end
    end
    
    if AFFICHER_EXO2 then

        // Exercice 2 pour 1 réalisation
//        Xn_barre = moyenneEmpirique(500);
//        plot2d(Xn_barre);
        
        // Exercice 2 pour plusieurs réalisations
        for i=1:50
            Xn_barre = moyenneEmpirique(500);
            plot2d(Xn_barre);
        end
          
    end

    if AFFICHER_EXO3 then
    
        // Exercice 3
        
//        marche1 = marcheAleatoire(20, 1, 1);
//        plot2d(marche1)

//        marche2 = marcheAleatoire(100, 1, 1);
//        plot2d(marche2)

//        marche3 = marcheAleatoire(1000, 1, 1);        
//        plot2d(marche3)
//        for i=1:1000
//            marche3 = marcheAleatoire(1000, 1, 1);
//            plot2d(marche3)
//        end

//        marche4 = marcheAleatoireReduc(10000,1,1);
//        plot2d(marche4);
        for i=1:200
            marche4 = marcheAleatoireReduc(10000,1,1);
            res(i) = marche4($)
        end
    
        histplot(50, res);
        // alpha vaut 0.0000452 après 10 000 pas
        alpha = 0.0000452;
        tracerDensiteNormale(1000, 0, sqrt(alpha));
     end
   
endfunction

main()
