clcclear allrehashfunction catMat=catArrayObj(dim,mat1,mat2)  catMat=[];  if(dim==2)#  catMat=mat1;#  col=columns(mat1)+1#  catMat(:,col:col+columns(mat2)-1)=mat2  catMat=[mat1,mat2];else   catMat=reshape([mat1,mat2],[size(mat1) 1 2]);  endifendfunctionA = ones (2, 2);B = zeros (2, 2);isequal(cat (2, A, B),catArrayObj(2,A,B))isequal(cat(4,A,B),catArrayObj(4,A,B))