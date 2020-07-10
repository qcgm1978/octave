#Evaluate the polynomial p at the specified values of x. 
function evalX=getPolyval(p,x)
  
  evalX=arrayfun(@(val) eval(regexprep(polyout(p),'s',num2str(val))),x);
endfunction
