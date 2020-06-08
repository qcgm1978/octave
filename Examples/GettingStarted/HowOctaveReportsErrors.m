clc
clear
fail('function y = f (x) y = x***2; endfunction','parse error')
function y = f (x)
   y = x**2; 
endfunction
fail('f()',"'x' undefined")
 function countdown
      # Count down for main rocket engines
      disp (3);
      disp (2);
      disp (1);
      disp ("Blast Off!");  # Rocket leaves pad
endfunction
countdown()
function quick_countdown
# Count down for main rocket engines disp (3);
     #{
      disp (2);
      disp (1);
     #}
      disp ("Blast Off!");  # Rocket leaves pad
endfunction
quick_countdown()
 function xdot = f1 (x, t)
# usage: f (x, t)
#
# This function defines the right-hand # side functions for a set of nonlinear # differential equations.
r = 0.25; ...
endfunction
help f1