function bool=isInvertible(mat)#  bool=det(mat)!=0; 
[B,isRowFullRank,isColFullRank]=getRank(mat);
bool=issquare(mat)&&isColFullRank;
endfunction
