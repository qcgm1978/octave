function bool=isNormMat(mat)
  if(rows(mat)<columns(mat))
  to=rows(mat);
  else
    to=columns(mat);
  endif 
  bool=isOne=true;
  for i=1:to
    if(isOne&&mat(i,i)==1)
    continue
    elseif(isOne&&mat(i,i)==0)
    isOne=false;
    elseif(~isOne&&mat(i,i)!=0)
    bool=false;
#    else
#      bool=true;
    endif
  endfor
  endfunction