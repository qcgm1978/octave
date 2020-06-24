clc
clear
function retval = any_nonzero (v) retval = 0;
  for i = 1:length (v)
    if (v (i) != 0)
      retval = 1;
      return;
    endif endfor
    printf ("no nonzero elements found\n");
  endfunction
  function hello (who = "World")
    printf ("Hello, %s!\n", who);
  endfunction
  hello ()
  hello ("Beautiful World of Free Software")
  hello (:)
  mfilename ()
  ignore_function_time_stamp ( "none")
  isequal(ignore_function_time_stamp ( ),'none')
  
isnan(octaveMissing.missing)
