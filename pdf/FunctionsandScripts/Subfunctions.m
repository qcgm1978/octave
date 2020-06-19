clcclear all#Clear all local and global user-defined variables, and all functions from the symbol table.isequal(f(),'in h')fail('g()',"'g' undefined")function ret=f()  ret='in f';
endfunction
isequal(f(),'in f')isempty(localfunctions())foo2()