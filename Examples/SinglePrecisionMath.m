Ad = [1 2 0; 2 5 -1; 4 10 -1];isequal(class(Ad),'double')A = single(Ad); isequal(class(A),class(cast(Ad,'single')),'single')n = 1000;Z = zeros(n,1,'single');O = ones(n,1,'single');isequal(class(Z),class(O),'single')B = A';    % Matrix Transposeisequal(B,[1,2,4;2,5,10;0,-1,-1])#whos B;C=A*B;isequal(class(C),'single')C = A .* B; % Elementwise arithmeticisequal(class(C),'single')X = inv(A); % Matrix inverseisequal(X*A,A \ A,[1 0 0;0 1 0;0 0 1])E = eig(A); % Eigenvaluesfunction nterms = fibodemo(dtype)  %FIBODEMO Used by SINGLEMATH demo.  % Calculate number of terms in Fibonacci sequence.    % Copyright 1984-2014 The MathWorks, Inc.    fcurrent = ones(dtype);  fnext = fcurrent;  goldenMean = (ones(dtype)+sqrt(5))/2;  tol = eps(goldenMean);  nterms = 2;  while abs(fnext/fcurrent - goldenMean) >= tol    nterms = nterms + 1;    temp  = fnext;    fnext = fnext + fcurrent;    fcurrent = temp;  endendfunctionfibodemo('single')fibodemo('double')