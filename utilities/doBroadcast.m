function broad=doBroadcast(mat1,mat2,func)
  size1=size(mat1);
  size2=size(mat2);
  if(~isequal(mat1,mat2)&&~any(size1==1)&&~any(size2==1))
    error('one of corresponding array dimensions must be 1')
  endif
  [row,col]=[row1,col1]=size(mat1);
  [row2,col2]=size(mat2);
  if(row1<row2)
  row=row2;
endif
if(col1<col2)
col=col2;
endif
timeRow=row/row1;
mat1=repmat(mat1,timeRow,col/col1);
mat2=repmat(mat2,row/row2,col/col2);
broad=func(mat1,mat2);
endfunction
