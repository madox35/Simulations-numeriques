function [Y] = centrerReduireExpo(lambda, N)
    
    esperance = 1/lambda;
    var = 1/(lambda^2);
    for i=1:N
        Xi= genererRandExpo(lambda, i);
        Y(i)= (sum(Xi)-i*esperance)/(sqrt(i)*sqrt(var));
    end
endfunction
