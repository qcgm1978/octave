function norm=convertNorm(mat)
  norm=mat;
  [row,col]=size(mat);
  if(row>col)
  len=col;
  else
    len=row;
  endif
  for n=1:len
    diagEle=norm(n,n);
    if(diagEle)
    norm=scalarMul(norm,n,diagEle);
    norm=loopRows(norm,n,n);
    else
      ind=find(norm);
      for i=1:numel(ind)
        [row,col]=ind2sub(size(norm),ind(i));
        if(row!=col)
        norm(row,col)=0;
      endif
    endfor
  endif
endfor
endfunction
function mat=loopRows(norm,col,notLine)
for i=1:rows(norm)
  if(i!=notLine)
  next=norm(i,col);
  toAdd=-next;
  norm=mulAddRow(norm,toAdd,i,notLine);
endif
endfor
mat=norm;
endfunction
function mul=scalarMul(mat,row,val)
mat(row,:)=1/val*mat(row,:);
mul=mat;
endfunction
function mat=mulAddRow(norm,toAdd,rowNo,baseLine)
row=norm(baseLine,:)*toAdd;
norm(rowNo,:)=norm(rowNo,:)+row;
mat=norm;
endfunction