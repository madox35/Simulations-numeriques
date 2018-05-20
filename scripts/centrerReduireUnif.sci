function [Y] = centrerReduireUnif(N)
    
    borneA = -1;
    borneB = 1;
    
    esperance = (borneA + borneB)/2;
    var = ((borneB - borneA)^2)/12;
    
    for i=1:N
        Xi = genererRandUniforme(borneA, borneB, i);
        Y(i)= (sum(Xi) - i*esperance)/(sqrt(i)*sqrt(var));
    end
endfunction
