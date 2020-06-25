function normMat=getNormMat(oneCount,zeroCount=0,m=oneCount+zeroCount,n=oneCount+zeroCount)
#  m=oneCount+zeroCount;
#  if(n<m)
#  error('columns less than total of oneCount and zeroCount')
#endif
normMat=zeros(m,n);
for i=1:oneCount
  normMat(i,i)=1;
endfor
endfunction