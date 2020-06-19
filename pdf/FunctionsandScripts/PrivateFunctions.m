clear 
clc
[a,b]=f();
isequal(a,10)
isequal(b,20)
isequal(func2(),10)
fail('foo2("y = 10;")','can not add variable "x" to a static workspace')
ex_top()
a=@ex_top
isequal(functions(a).file,'/Users/zhanghongliang/Documents/Octave/FunctionsandScripts/private/ex_top.m')