function val=getAdjointMat(mat,varargin)
  complement=mat;
  if(length(varargin))
  row=varargin{1};
  col=varargin{2};
  val=getAlgeComp(complement,row,col);
  else
    val=[];
    for i=1:numel(complement)
      [row,col]=ind2sub(size(complement),i);
      val(col,row)=(getAlgeComp(complement,row,col));
    endfor
  endif
endfunction
function val=getAlgeComp(complement,row,col)  #将余子式Mₒₑ再乘以-1的o+e次幂记为Aₒₑ，Aₒₑ叫做元素aₒₑ的代数余子式。
  alMinor=getComplementMinor(complement,row,col);
  val=alMinor*(-1)^(row+col);
endfunction  
