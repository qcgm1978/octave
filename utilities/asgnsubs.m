#Perform the subscripted assignment operation according to the subscript specified by idx.
function assign=asgnsubs (val, idx, rhs)
  if(isempty(idx))#  If idx is an empty structure array with fields ‘type’ and ‘subs’, return rhs.
  assign=rhs;
  elseif(strcmp(idx.type,'()'))
  if(length(idx.subs)==1)
    idx.subs{2}=idx.subs{1};
  endif
  val(idx.subs{1},idx.subs{2})=rhs;
  assign=val;
endif
endfunction