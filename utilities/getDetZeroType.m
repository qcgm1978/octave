function detType=getDetZeroType(mat)  if(det(mat))  detType='det not 0';  else    len=length(mat);    detType={};    types={'isVecZero','isRatio','isEqualVec'};    m=1;    for i=1:numel(types)      func=types{i};      bool=eval([func,'()']);      if(bool)      detType{m}=func;      m++;    endif  endfor  if(~length(detType))  detType=['none types of ',strjoin(types,', ')];endifendiffunction bool=isRatio()bool=0;compare=nchoosek(1:len,2);for i=1:rows(compare)  row=compare(i,:);  rowRatio=twoRowsRatio(mat,row(1),row(2));  colRatio=twoRowsRatio(mat',row(1),row(2));  if(rowRatio||colRatio)  bool=1;  break;endifendforendfunctionfunction bool=twoRowsRatio(mat,m,n)bool=0;row1=mat(m,:);row2=mat(n,:);if(all(row2)&&all(row2))quotient=row1(1)/row2(1);bool=all(row1==row2*quotient);endifendfunctionfunction bool=isEqualVec()bool=0;compare=nchoosek(1:len,2);for i=1:rows(compare)row=compare(i,:);rowEq=all(mat(row(1),:)==mat(row(2),:));colEq=all(mat(:,row(1))==mat(:,row(2)));if(rowEq||colEq)bool=1;break;endifendforendfunctionfunction bool=isVecZero()bool=0;for i=1:lenrowZero=~all(mat(i,:));colZero=~all(mat(:,i));if(rowZero||colZero)bool=1;break;endifendforendfunction
endfunction
