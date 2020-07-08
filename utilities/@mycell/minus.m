function C = minus (A, B)
  C.cell = cellfun (@minus, A.cell, B.cell, 'UniformOutput', false);
  C = class (C, "mycell"); 
end 
