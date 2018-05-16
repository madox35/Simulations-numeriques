function Y = centrerReduire(Xi, param1, param2)
    [M,N] = size(Xi);
    nbVa = M*N;
    disp(nbVa)
    esperance = (param1+param2)/2;
    var = ((param2 - param1)^2)/12;
    
    for x=1 : M
        for y=1 : N
            Y(x,y) = (Xi(x,y) - nbVa * esperance)/(sqrt(nbVa) * sqrt(var));
        end
    end
    
endfunction
