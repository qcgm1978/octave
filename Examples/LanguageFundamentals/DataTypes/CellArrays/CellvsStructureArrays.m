clc
clear
rehash
patient(1).name = 'John Doe';
patient(1).billing = 127.00;
patient(1).test = [79, 75, 73; 180, 178, 177.5; 220, 210, 205];

patient(2).name = 'Ann Lane';
patient(2).billing = 28.50;
patient(2).test = [68, 70, 68; 118, 118, 119; 172, 170, 169];

isequal(typeinfo(patient),class(patient),'struct')
isequal(size(patient),[1 2])
numPatients = numel(patient);
for p = 1:numPatients
#   figure
#   bar(patient(p).test)
#   title(patient(p).name)
#   xlabel('Test')
#   ylabel('Result')
end
temperature(1,:) = {'2009-12-31', [45, 49, 0]};
temperature(2,:) = {'2010-04-03', [54, 68, 21]};
temperature(3,:) = {'2010-06-20', [72, 85, 53]};
temperature(4,:) = {'2010-09-15', [63, 81, 56]};
temperature(5,:) = {'2010-12-09', [38, 54, 18]};
isequal(typeinfo(temperature),class(temperature),'cell')
isequal(size(temperature),[5 2])
allTemps = cell2mat(temperature(:,2));
 clf;
 octaveDatetime.draw(temperature(:,1),allTemps);
#plot(datenum (datevec(temperature(:,1))),allTemps)#Return the date/time input as a serial day number
title('Temperature Trends for Different Locations')
xlabel('Date')
ylabel('Degrees (Fahrenheit)')
# datetick ("x", 29,'keepticks');#to specify exactly where the xticks are going to be, you'll want to use the "keepticks" option.
