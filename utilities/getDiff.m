function diffMat=getDiff(mat=[],k=1,dim=1)#  x=lsode("f",2,(t=linspace(0,5,50)'))  if(isvector(mat))  diffMat=mat(2:end)-mat(1:end-1);  elseif(ismatrix(mat))  if(dim==1)  diffMat=mat(2:end,:)-mat(1:end-1,:);  else  diffMat=mat(:,2:end)-mat(:,1:end-1);  endif  endif  endfunction
function xdot = f (x,t) xdot=-exp(-t)*x^2; endfunction