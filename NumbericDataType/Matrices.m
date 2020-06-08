clc
clear
a = [1, 2; 3, 4];
function combine=combineMat(mat1,mat2)
  if(strcmp(typeinfo(mat1),'matrix'))
  if(!strcmp(typeinfo(mat2),'matrix'))
  mat=zeros(size(mat1));
  mat(:,:)=mat2;
  mat2=mat;
endif
elseif(strcmp(typeinfo(mat2),'matrix'))

else
error('arguments must have a matrix at least')
endif
combine=[];
for i=1:rows(mat1)
combine(i,:)=[mat1(i,:),mat2(i,:)];
endfor

endfunction
isequal([ a, a ],combineMat(a,a))
fail('[a,1]','horizontal dimensions mismatch')
combineMat(a,1)