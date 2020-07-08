function obj = mycell (varargin)
  if (nargin == 1 && isa (varargin{1}, "mycell"))
    obj = varargin{1};   # Copy constructor
  else
    s.cell = varargin;
      obj.cell = [];
    obj = class (obj, "mycell",@cell([1]));
  endif
endfunction
