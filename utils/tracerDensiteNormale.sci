function tracerDensiteNormale(borneA, borneB)
    C=[borneA:1/1000:borneB]; 
    plot2d(C,exp(-C.^2/2)/sqrt(2*%pi),2);
    xtitle("Distribution théorique", "Valeurs de k", "P(X=k)");
endfunction
