function top=ex_top ()
  i=1;
  ## Can call: ex_top, ex_a, and ex_b ## Can NOT call: ex_aa and ex_ab
  top=[ex_b('ex_top','Globally visible functions');ex_a()];
  function ret=ex_a ()
    aa=ex_aa();
    ab=ex_ab();
    ret=[aa;ab];
    ## Can call everything
    function ret=ex_aa (name='ex_aa',str='nested function')
      ## Can call everything
      ret=ex_b(name,str);
    endfunction
    function ret=ex_ab ()
      ## Can call everything
      ret=[ex_aa('ex_ab','Sibling function');ex_child()];
      
      function ret=ex_child()
              ret=ex_aa('ex_child','Direct children');

        endfunction
    endfunction
  endfunction
  function ret=ex_b (name, str)
    ## Can call: ex_top, ex_a, and ex_b ## Can NOT call: ex_aa and ex_ab
    ret=['The ',num2str(i),' step ',str,': ',name,'; '];
      i++;
endfunction
  endfunction