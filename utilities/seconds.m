% Copyright 2020 Youth#clear#clcrehashfunction fh = octaveSeconds  fh.seconds=@_seconds;endfunction duration = _seconds(dur)  duration={};  for i=dur    duration(1,i)=i;    duration(2,i)=[num2str(i),' ','sec'];  endforend