assert(int16("F"),int16(70))F=hex2dec ("F");assert(F,15)F0=hex2dec ("F0");isequal(F0,16*15,240);isequal(hex2dec ("FF"),F0+F,255);#convert a string containing a hexadecimal number to a floating point numberisequal(bin2dec ("1110"),2^1+2^2+2^3,14);isequal(bin2dec ("1000 0001"),2^0+2^7,129);#Spaces are ignored during conversion and may be used to make the binary number more readablefourteen=char(dec2base(14,2));isequal(dec2bin (14),fourteen,"1110");isequal(hex2dec('ABC'),16^2*10+16*11+12,2748);isequal(dec2hex (2748),'ABC');isequal(hex2dec ("12B"),16^2+16*2+11,int16(299),double(299),299);isequal(char(dec2base (123, 3)),'11120');assert(base2dec ("11120", 3),123)assert(dec2base (123, "aei"),'eeeia')assert(num2hex ([-1, 1, e, Inf]),['bff0000000000000','3ff0000000000000','4005bf0a8b145769','7ff0000000000000'])#assert(single(num2hex ([-1, 1, e, Inf])),"bf800000#             3f800000#             402df854#             7f800000")isequal(strjust (["a"; "ab"; "abc"; "abcd"]),['a';'ab';'abc';'abcd']);isequal(str2num ("3.1416"),3.1416);assert(str2num (["1, 2, 3"; "4, 5, 6"]),[1,2,3;4,5,6])assert(tolower ("MiXeD cAsE 123"),'mixed case 123')#assert(do_string_escapes('\nabc'),'#abc')bell = "\a";assert(undo_string_escapes (bell),'\a')