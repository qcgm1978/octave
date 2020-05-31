% Copyright 2020 Youth#clf;#clcrehashfunction fh = octaveDatetime  fh.draw=@_draw#  fh.getDates = @_getDates;#  fh.plotData = @_plotData;#  fh.addDateTick = @_addDateTick;endfunction  _draw(data,yData)  _plotData(data,yData)  _addDateTick()endfunction dates = _getDates(data)  dates = datevec(data(:,1));  endfunction  _plotData(data,yData)  plot(datenum (_getDates(data)),yData)#Return the date/time input as a serial day numberendfunction _addDateTick()  datetick ("x", 29,'keepticks');#to specify exactly where the xticks are going to be, you'll want to use the "keepticks" option.  end