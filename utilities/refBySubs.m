#Perform the subscripted element selection operation on val according to the subscript specified by idx.
function ref=refBySubs(val, idx)
  if(strcmp(idx.type,'()'))
  ref=val(idx.subs{1},idx.subs{2});
  endif
endfunction
