clc
clear all
#It can be both necessary and convenient to store several variables of different size or type in one variable. A cell array is a container class able to do just that.
c = {"a string", rand(2, 2);['a','c'],'b'};
isequal(c{2,1},c{2},['a','c'])
col=c{2}(:);
isequal(col,['a';'c'])
isequal(size([[[col]]]),[2 1])
[char([1;2]);col]
#To access the elements of a cell array, it can be indexed with the { and } operators.
isequal(c{1},'a string')
#As with numerical arrays several elements of a cell array can be extracted by indexing with a vector of indexes
A=c{1:2};
isequal(A,c{1:1},'a string')
isequal(typeinfo(A),'string')
c{3}=3;
isequal(size(c),[2 2])
c = {"1", "2", "3"; "x", "y", "z"; "4", "5", "6"};
isequal( c{2,3},'z')
isequal(typeinfo(    c(2,3)),'cell')
isequal(c(2,3){1},c{2,3},'z')
#all the rows of the first and third column of a cell array can be set to 0 with the following command
c(:, [1, 3]) = {0};
isequal(c{1},c{2},c{3},c{1,1},c{1,3},c{2,1},c{2,3},c{3,1},c{3,3},0)
d=c;
d(:, [1, 3]) = 0;
isequal(c,d)
d(1)=1;
!isequal(c,d)
c = {1, 2, 3; 4, 5, 6};
# exchange the first and the second row of a cell array as in the following command:
f=c;
#deal: Copy the input parameters into the corresponding output parameters. 
[f{[1,2], :}] = deal (f{[2, 1], :});
e(1,:)=c(2,:);
e(2,:)=c(1,:);
c([1, 2], :) = c([2, 1], :);
isequal(c,e,f)
y=x = {"1", "2"; "3", "4"};
    x(1, :) = [];
    isequal(x,{'3','4'})
#    just remove the contents of cell array elements but not delete the space for them:
    x = {"1", "2"; "3", "4"}; 
    x(1, :) = {[]};
    isequal(x,{[],[];'3','4'})
    y(1, :) = [];
    isequal(y,{'3','4'})
#     Y = cell (size (X));
#         for i = 1:numel (X)
#Y{i} = X{i}(varargin{1}, varargin{2}, ..., varargin{N});
# endfor