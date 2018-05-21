function tracerDensiteNormale(N,m,sigma)
    x=linspace(m-3*sqrt(sigma),m+3*sqrt(sigma),100)
    y=exp(-(x-m).^2/(2*sigma))/sqrt(2*%pi*sigma);
    plot2d(x,y,2)
    xtitle("fonction de densité de la loi normale");
endfunction
