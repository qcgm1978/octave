% Copyright 2020 Youth#clf;#clcrehashfunction fh = octaveDatetime  fh.draw=@_draw;  fh.datetime=@_datetime;  fh.dateshift=@_dateshift;  fh.hours=@_hours;endfunction  _draw(data,yData)  _plotData(data,yData)  _addDateTick()endfunction dates = _getDates(data)  dates = datevec(data(:,1));endfunction date= _datetime(str,month,day)  if(strcmp(str,'now')==1)  date = datestr(now());  elseif(strcmp(str,'today')==1)  date=datestr(today());  else    date=[];    for i=1:length(month)      rowStr=num2str([i,day,str],'%d/');      dateFull=strcat(rowStr)(1:end-1);      date(i,:)=datestr(datenum (dateFull,2));#'each row in a character matrix is a separate string    endfor  endifendfunction date= _dateshift(dateNum,condition,unit)  if(strcmp(condition,'end')==1)  if(strcmp(unit,'month')==1)  matNow=getDate();  last=eomday (matNow(1), matNow(2));  date=getSomeDay(last);endifelseif(strcmp(condition,'start')==1)if(strcmp(unit,'hour')==1)matNow=getDate();date=[getSomeDay(matNow(3)),' 12:00:00'];endifendifendfunction mat=getDate()mat=  datevec(date());endfunction duration=_hours(num)duration=  {num,'hr'};endfunction day=getSomeDay(someday)matNow=getDate();matEnd=[matNow(2),someday,matNow(1)];endStr=num2str(matEnd,'%d/');day =datestr(endStr(1:end-1));#'06/30/2020'endfunction  _plotData(data,yData)plot(datenum (_getDates(data)),yData)#Return the date/time input as a serial day numberendfunction _addDateTick()datetick ("x", 29,'keepticks');#to specify exactly where the xticks are going to be, you'll want to use the "keepticks" option.end