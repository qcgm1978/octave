#Convert an object to an index vector.
function idx = subsindex (obj) 
  idx = double (obj.poly) - 1.0;
endfunction