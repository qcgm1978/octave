clccleara = uint8(7);b = 0b111;m=octaveS.storeNegInt(-8);isequal(m,11111000)m=octaveS.s8('0b11111000s8');m1=octaveS.s8(0b11111000);isequal(m,m1,-8) isequal(dec2bin(b),'111')data = [1 0 1 1 0 1 0 1];dec = bin2dec(num2str(data));isequal(dec,181)n = 0b10111001;n4 = bitand(n,0b1000);isequal(n4,0b1000,8)n4 = bitshift(n4,-3);isequal(n4,0b1,1)n = 0b1000;isequal(n-1,0b0111,7)isequal(bitand(n,n-1),0)n=0b11000;isequal(bitand(n,n-1),16)n = 0b101;isequal(bitand(n,n-1),bitand(5,4),4)function tf = isPowerOfTwo(n)  tf = n && ~bitand(n,n-1);endisPowerOfTwo(4)n = 0b1000;isequal(bitshift(n,-1),0b100,4)n = 0b1111;isequal(bitshift(15,2),0b111100,60)n = octaveS.s8('0b11111101s8')#isequal(bitshift(n,-2),-1)isequal(bitset(8,1),9)bits = [1 2];c = 0b1000;d=dec2bin(c);for k = 1:numel(bits)    c = bitset(c,bits(k));endd(3:end)='1';isequal(dec2bin(c),d,'1011')data = [1 1 0 0 1 1 0 1];n = length(data);dec = octaveS.u8('0b0u8');for k = 1:n    dec = bitset(dec,n+1-k,data(k));endisequal(dec,0b11001101,205)isequal(dec2bin(dec),'11001101')n = 0b0110000010100000;str=num2str(dec2bin(n));last=length(str)-12;isequal(dec2bin(bitshift(n,-12)),str(1:last),'110')isequal(size(bitget(n,16:-1:8)),[1 8+1])bits = [14 8 5];isequal(size(bitget(n,bits)),size(bits))