function counts=getAccumarray(subs,val,sz=0,func=@sum,fillval=0,issparse=false)  if(isscalar(val))  vals=zeros(size(subs));  vals(:)=val;  elseif(isrow(val))  vals=val';  else    vals=val;  endif  row=rows(subs);  if(columns(subs)==1)  subs=[subs ones(row,1) ones(row,1)];  elseif(columns(subs)==2)  subs=[subs ones(row,1)];endifrow1=max(subs(:,1));col1=max(subs(:,2));threeD1=max(subs(:,3));counts=cell(row1,col1,threeD1);for i=1:row  if(rows(vals)<i)  break;endifrow=subs(i,1);col=subs(i,2);thirdD=subs(i,3);current=vals(i,1);cur=counts{row,col,thirdD};if(isempty(cur))counts{row,col,thirdD}=current;else   counts{row,col,thirdD}=[cur;current];endifendforif(sz)counts(row1+1:sz(1),:)=fillval;counts(:,col1+1:sz(2))=fillval;elsesz=[row1,col1];endiffor i=1:numel(counts)v=counts{i};if(isempty(func))func=@sum;endifif(isempty(v))counts{i}=func(fillval);else  counts{i}=func(v);endifendfor  counts=cell2mat(counts);if(iscell(counts))for ii = 1 : numel(counts)if(~counts{ii})counts{ii}= [];endifendendif endfunction
