function [Y] = centrerReduireExpo(Xi, esperance, var, N)
    
   [K,L] = size(Xi);
   for i=1:N
       Y(i)= (sum(Xi(:,i))-K*esperance)/(sqrt(K)*sqrt(var));
   end
endfunction
