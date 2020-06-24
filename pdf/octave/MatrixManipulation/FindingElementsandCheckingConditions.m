clc
clear all
function ret=isAny(mat,dim=1,isAll=false)
  if(isvector(mat))#For a vector argument, return true (logical 1) if any element of the vector is nonzero.

    mat=mat(:);
  endif
  ret=[];
  if(dim==1)
  singleMat=columns(mat);
else
  singleMat=rows(mat);
endif
for i=1:singleMat
  if(dim==1)
  data=mat(:,i);
else
  data=mat(i,:);
endif
bool=0;
for m=1:numel(data)
  isTrue=data(m);
  if(isTrue)
  if(isAll)
  bool=1;
  continue
else
  bool=1;
  break;
endif
elseif(isAll)
bool=0;
break;
endif
endfor
if(dim==1)
ret(i)=bool;
else
ret(i,1)=bool;
endif
endfor
endfunction
isequal(any ([2, 4]),isAny([2,4]),1)
isequal(all ([2, 4]),isAny([2,4],1,true),1)
isequal(all ([2, 0]),isAny([2,0],1,true),0)
isequal(any (eye (2, 4)),isAny(eye(2,4)),[1 1 0 0])
isequal(any (eye (2, 4), 2),isAny (eye (2, 4), 2),[1;1])
isequal(all ([2, 3; 1, 0]),isAny([2,3;1,0],1,true),[1,0])
all (all (rand (5) < 0.9));
# in conditional contexts (like the test clause of if and while statements) Octave treats the test as if you had typed all (all (condition)).
logical(all([]))
logical(all([1]))
logical(all(zeros(3,3)))
logical(0)
false