clc
assert1(detMat,[1 0 3;1 1 1;5 6 6])
endfunction
assert1(getLaplaceExpansion(A,3),2.8e-15)