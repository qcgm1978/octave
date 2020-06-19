clc
clear all
cellType=typeinfo()(2){1};
isequal(cellType,'cell')
isequal(class(cellType),'char')
A=1:2:3;
isequal(typeinfo(A),'range')
isequal(class(A),'double')
#The standard built-in data types are real and complex scalars and matrices, ranges, char- acter strings, a data structure type, and cell arrays.
isequal(typeinfo(1),typeinfo([1]),'scalar')
isa(1,'double')
isa(1,'float')
isa(1,'numeric')
isequal(typeinfo(1+2i),'complex scalar')
isa(1+2i,'double')
isa(1+2i,'numeric')
isa(1+2i,'float')
isequal(typeinfo([]),'null_matrix')
isa([],'double')
isa([],'float')
isequal(typeinfo([1,2]),'matrix')
isequal(typeinfo(1:2:3),'range')
isequal(typeinfo(''),'null_sq_string')
isequal(typeinfo(""),'null_string')
isequal(typeinfo('a'),'sq_string')
isequal(typeinfo("a"),'string')
isequal(typeinfo({}),'cell')
isequal(typeinfo({[2,3]}),'cell')
isequal(typeinfo(struct('b','a')),'scalar struct')
isequal(typeinfo(struct('b',['a','b'])),'scalar struct')

function num=getInt8(numArg,intType='int8')
  if(strcmp(intType,'int8'))
  mat=[-128	127];
else
  mat=[0	255];
endif
if(numArg>=mat(1)&&numArg<=mat(2))
num=numArg;
elseif(numArg<mat(1))
num=mat(1);
else
num=mat(2);
endif
endfunction
#UInt8, UInt16, UInt32, UInt64, Int8, Int16, Int32, Int64
#Fixed-length integers, with or without a sign.
#The number of bits determines directly the range for the respective values:
num2=getInt8(-5,'uint8');
isequal(cast (-5, "uint8"),num2,0)
num1=cast (300, "int8");
isequal(num1,getInt8(300),127)
x = uint16 ([1, 65535]);
#typecast (x, "uint8")