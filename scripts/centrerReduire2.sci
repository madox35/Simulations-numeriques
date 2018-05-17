function [Y] = centrerReduire2(Xi, lambda, N)
    
    [K,L] = size(Xi);
    
    esperance = 1/lambda;
    var = 1/((lambda)*(lambda));
   
   for i=1:N
       Y(i)= (sum(Xi(:,i))-K*esperance)/(sqrt(K)*sqrt(var));
   end
    
endfunction
