clc
clear
#肉倍好谓之璧，好倍肉谓之瑗，肉好若一谓之环
function jadeType=getJadeType(meat,hole)
  if(meat>hole)
  jadeType='disk';
  elseif(meat==hold)
  jadeType='ring';
else 
  jadeType='round';
  endif
endfunction
isequal(getJadeType(5,1),'disk')
