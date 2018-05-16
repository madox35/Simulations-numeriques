clc;clf;

//x=rand(1,100);histplot(100,x);xtitle("loi uniforme")
//Y=grand(100,5,'unf',-5,5);
function tcl()
    
endfunction


function uniforme(a,b)
    Xi=grand(1000,1,'unf',a,b);
    histplot(50,Y);
    C=[-5:1/1000:5]; 
    plot2d(C,exp(-C.^2/2)/sqrt(2*%pi),3);
endfunction

//uniforme(-2,2)

function normal(moyenne,sigma)
    Y=grand(1000,1,'nor',moyenne,sigma);
    histplot(50,Y);
    C=[-5:1/1000:5]; 
    plot2d(C,exp(-C.^2/2)/sqrt(2*%pi),3);
endfunction

normal(0,1)

function binomiale(n,p)
    Y=grand(1000,1,'bin',n,p);
    histplot(50,Y);
    C=[-5:1/1000:5]; 
    plot2d(C,exp(-C.^2/2)/sqrt(2*%pi),3)
endfunction

//binomiale(100,0.03)
