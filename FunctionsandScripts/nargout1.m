rehashfunction foo=f()  min_inputs=2;  max_inputs=3;  if (nargin < min_inputs || nargin > max_inputs)     print_usage ();  endif  foo=2;
  endfunction  fail('f(5)',"'f' not found")isequal(f(2,3),2)
isequal(nargout (@histc),nargout ("histc"),2) # or nargout ("histc") using a string inputisequal(nargout (@imread),nargout('imread'),-2)isequal(validatestring ("r", {"red", "green", "blue"}),'red')fail('validatestring ("b", {"red", "green", "blue", "black"})',"'b' allows multiple unique matches")#an error will be raised because the expansion of str is ambiguous