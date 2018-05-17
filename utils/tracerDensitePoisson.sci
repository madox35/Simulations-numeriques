function tracerDensitePoisson(borneA, borneB, lambda)
    x= borneA:borneB;
    y = exp(-lambda) * lambda^x ./ factorial(x);
    plot2d(x, y, rect=[-1,0,10,0.3],style=2);
    xtitle("Distribution théorique", "Valeurs de k", "P(X=k)");
endfunction
