function z = func2 ()
  #It is important to note that the x and y in foobar remain zero, as in foo they are a return
#value and parameter respectively. The x in bat refers to the x in foo.

  x = 0;
  y = 0;
  z = foo (5);
  z += x + y;
  function y = foo (x)
    y = x + bat ();
    function z = bat ()
      z = x;
    endfunction
  endfunction
endfunction
