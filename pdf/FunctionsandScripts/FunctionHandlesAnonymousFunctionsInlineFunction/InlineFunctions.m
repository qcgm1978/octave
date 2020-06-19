clc
clear
f = inline ("x^2 + 2");
isequal(functions(f).function,[],'')
isequal(f(4),18)
vars=symvar ("x^2 + y^2 == 4");
isequal(vars{1},'x')
isequal(vars{2},'y')
#Commands
fail("isequal(toupper lower_case_arg,toupper('toupper lower_case_arg'))",'parse error')
funcDir='/Applications/Octave-5.2.0.app/Contents/Resources/usr/Cellar/octave-octave-app@5.2.0/5.2.0/share/octave/5.2.0/m';
files=readdir(funcDir);
cellFile={};
for i=1:length(files)
  if(regexp(files{i},'\w'))
  cellFile(i)=files{i};
  endif
endfor
#Organization of Functions Distributed with Octave
octaveFiles=cellFile(!cellfun(@isempty,cellFile))
isequal(length(octaveFiles),34)