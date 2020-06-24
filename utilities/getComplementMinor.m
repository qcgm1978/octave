#在n阶行列式中，把元素aₒₑi所在的第o行和第e列划去后，留下来的n-1阶行列式叫做元素aₒₑi的余子式，记作Mₒₑ(剩余子集行列式）
function [matDet,detMat]=getComplementMinor(mat,i,j)
  mat(i,:)=[];
  mat(:,j)=[];
  matDet=det(mat);
  detMat=mat;
  endfunction