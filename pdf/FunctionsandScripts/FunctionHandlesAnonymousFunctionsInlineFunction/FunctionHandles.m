clc
clear
f = @sin;
isequal(    quad (f, 0, pi),2)
 f = @sin;
isequal(  round(1e5*sin(pi/4))/1e5,0.70711)
is_function_handle(f)
is_function_handle(@sin)
fail('is_function_handle(sin)','Invalid call to sin')
funcs=functions(@sin);
isequal(typeinfo(funcs),'scalar struct')
assert(funcs.function,'sin')#The function name
isequal(funcs.type,'simple')#The function is a built-in or m-file function.
isempty(funcs.file)
isequal(funcs.file,'',[])#This field is empty for anonymous and built-in functions.
#assert(type('f','-q'),{'@sin'})
funcs=functions(inline('sin(x)'));
isequal(str2func('foo'),@foo)
isequal(funcs.function,'')
isequal(funcs.type,'simple')
isequal(funcs.file,'')
isequal(functions(@foo).function,func2str(@foo),'foo')
isequal(func2str(@sin),'sin')