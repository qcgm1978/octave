function mat=combineCellMat(sizeMat,F)
  mat=zeros(sizeMat);
  m=n=1;
  for i = F
    block=i{1};
    rowCount=m+rows(block)-1;
    colCount=n+columns(block)-1;
    mat(m:rowCount,n:colCount)=block;
    if(colCount<sizeMat(2))
    n=colCount+1;
    else
      m=rowCount+1;
      n=1;
    endif
  endfor
  endfunction