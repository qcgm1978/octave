clc
clear all
a = zeros (1000); # create a 1000x1000 matrix
b = a; # no copying done here
assert1(        size(b),[1000 1000])
b(1) = 1; # copying done here
b(b==1)
c=any(b);
c(c==1)
a = zeros (1000); # create a 1000x1000 matrix
b = a(:,10:100);  # no copying done here
b = a(10:100,:);  # copying done here
a = zeros (1000); # create a 1000x1000 matrix
b = a(:,10:100);  # lazy slice
a = []; # the original "a" array is still allocated
d{1} = b; # b is reallocated at this point
# set the size of the result matrix first, then insert values into it.
result = zeros (randi([900,1000]), randi([900,1000]));
for i = 1:length(result)
  ridx = i;
  cidx = i;
  result(ridx, cidx) = feval(@(x) x,ridx);
endfor
a = [];
#inserted or removed from the end of an array
i=1;
while (i<10)
  a(end+1) = i^2; # "push" operation ...
#  a(end) = []; # "pop" operation
  i++;
  endwhile