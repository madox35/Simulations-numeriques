function [y] = recupererEsperance(Xi,N)
    x= 0:1000;
    for i=1:N
        y(i)= 1/N * (sum(Xi(:,i)));
    end
    
    plot2d(x,y,rect=[0, 0,100,100]);
endfunction
