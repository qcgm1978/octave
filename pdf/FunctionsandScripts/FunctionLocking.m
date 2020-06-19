clc
clear
#function ret=my_function () 
#  mlock ();
#  ret=1;
#endfunction
my_function () 
if(mislocked ("my_function"))
munlock ("my_function"); 
mislocked ("my_function")
endif

function count_calls ()
mlock ();
persistent calls = 0;
printf ("count_calls() has been called %d times\n", ++calls);
endfunction
count_calls ();
clear count_calls