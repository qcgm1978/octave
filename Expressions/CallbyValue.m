x;#For each scope you want a global to be "visible" you have to declare it as global. #assert(x,uint16([1  65535]))function f (x, n)   while (n-- > 0)     (--x);  endwhile  endfunctionf(5,2)#assert(x,uint16([1  65535]))#it is impossible to directly alter the value of a function parameter in the calling function. It can only change the local copy within the function body#x = rand (1000,1);#    f (x);