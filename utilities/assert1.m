function varargout=assert1(varargin)  if(length(varargin)==1)   error('only 1 argument')   return  endif  len=numel(varargin)-1;  tol=0;  index={};  #      tol=10^-output_precision;#Query or set the internal variable that specifies the minimum number of significant figures to display for numeric output.   for i=1:len    next=varargin{i+1} ;    current=varargin{i};    isCell=iscell(current)||iscell(next);    isStruct=isstruct(current)||isstruct(next);    isObj=isobject(current)||isobject(next);    if(isCell||isStruct||isObj)    cellEqual=isequal(current,next);    if(cellEqual)    tol=0;    else      tol=1;      index={current,next};      break;    endif    else        if(~all(size(current)==size(next)))    tol='size not match';    break        else    val=current-next;    if(abs(val)>abs(tol))    tol=val;  endifendif    endifendforresult='1';tol=abs(tol);if(tol)precision=10^-output_precision;if(tol<=precision)str='<';elseif(tol==precision)str='=';else str='>';result='0';endifif(ischar(tol))varargout{1}=[result,' ',tol];elseif(isempty(index))varargout{1}=[result,' tol: ',num2str(tol'),str,num2str(precision)];elsevarargout{1}=[result,index];endifelsevarargout{1}=result;endifendfunction
