function counts=getElesCounts(mat)  mat=sort(mat);  counts=counted=[];  n=1;  for i=1:numel(mat)    ele=mat(i);    if(~length(counted(counted==ele)))    counts(n,:)=[length(mat(mat==ele)),ele];    counted(n)=ele;    n++;    endif    endfor
endfunction
