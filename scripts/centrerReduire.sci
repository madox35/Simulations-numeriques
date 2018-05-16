function [Y] = centrerReduire(Xi, param1, param2, N)
    
    [K,L] = size(Xi);
    esperance = (param1+param2)/2;
    var = ((param2 - param1)^2)/12;
   
   for i=1:N
       Y(i)= (sum(Xi(:,i))-K*esperance)/(sqrt(K)*sqrt(var));
   end
    
endfunction
