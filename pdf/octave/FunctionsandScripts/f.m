#clear all
function [ret,other]=f ()
  if(isargout(2))
  ret = 10;
  bar()
  
  function bar ()
    other = ret+10;
  endfunction
else
  ret=  g ();
endif
endfunction
function ret=g ()
#  printf ("in g, calling h\n");
ret=h ();
endfunction
function ret=h ()
#  printf ("in h\n")
ret='in h';
endfunction
#localfunctions()