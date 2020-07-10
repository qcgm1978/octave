clc
clear all
p = [3 2 1];
x = [5 7 9];
y = polyval(p,x);
z=getPolyval(p,x);
assert1(y,z)
function [y, dy] = polyval (p, varargin)
  if (nargout > 1)
    [y, dy] = polyval (fliplr (p.poly), varargin{:});
    else
      y = polyval (fliplr (p.poly), varargin{:});
    endif
  endfunction
  fail('polyval(p,x);','matrix cannot be indexed with')
  assert1(builtin('polyval',p,x),z)
  function h = plot (p, varargin)
    n = 128;
    rmax = max (abs (roots (p.poly)));
    x = [0 : (n - 1)] / (n - 1) * 2.2 * rmax - 1.1 * rmax; if (nargout > 0)
    h = plot (x, polyval (p, x), varargin{:});
    else
      plot (x, polyval (p, x), varargin{:});
    endif
  endfunction
  function a = double (p) 
    a = p.poly;
  endfunction
