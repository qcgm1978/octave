clc
clear all
function [number_of_errors ,ret]= evalStr(str)
  ret='';
  number_of_errors=0;
  for n = 1:100
    try 
      eval(str)
    catch err
      number_of_errors++;
      msg = lasterror.message;
      if (strfind (msg, "operator *"))
        ret=msg; 
        #warning(err.identifier, err.message);
      endif
      id = lasterror.identifier;
      if (strcmp (id, "Octave:invalid-indexing"))
        number_of_errors++;
      endif
      end_try_catch
    endfor
  endfunction
  isequal(evalStr('5=6'),100)
  isequal(evalStr('a++'),100)
  isequal(evalStr('a=0;a++;'),0)
  isequal([~,msg]=evalStr('5=6'),'')
  isequal([~,msg]=evalStr('2***3'),'')
  isequal([~,msg]=evalStr('[2,3]*ones(3,4)'),'operator *: nonconformant arguments (op1 is 1x2, op2 is 3x4)')
    isequal([count,msg]=evalStr('s=struct("name","a");s.name1'),200)
fail('          rethrow (lasterror);')
assert(typeinfo(errno_list ()),'scalar struct')
function rand42
old_state = rand ("state")#query the state of the random number generator using the form 
restore_state = onCleanup (@() rand ("state", old_state))
rand ("state", 42)
...
endfunction # rand generator state restored by onCleanup
rand42()