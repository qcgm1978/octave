% Copyright 2020 Youthclcrehashfunction fh = octaveMersenneTwister  fh.rng=@_MersenneTwister;endfunction str = _MersenneTwister(num)  # Create a length n array to store the state of the generator  # int(0..n-1) MT  MT=1:num  # int index = n+1  index=num+1   lower_mask = bitshift(1 , r) - 1 # That is, the binary number of r 1's   upper_mask = min (not( lower_mask))end# Initialize the generator from a seedfunction seed_mt( seed)   index = n  MT(1) = seed  for i = 1 : (n - 1) # loop over each element    right= bitshift(MT(i-1) ,- (w-2))    m=bitxor(MT(i-1) ,right)    xor1=f * (m) + i    MT(i)=min (xor1)  endforend# Extract a tempered value based on MT(index)# calling twist() every n numbersfunction res=extract_number()   if index >= n     if index > n       error "Generator was never seeded"      # Alternatively, seed with constant value; 5489 is used in reference C code(49)    endif    twist()  endif     y = MT(index)  y = xor(y , (bitand(bitshift(y , -u) , d)))  y = xor(y , (bitand(bitshift(y , s) , b)))  y = xor(y,(bitor( x,bitand (bitshift(y , t) , c))))  y = xor(y , (bitshift(y ,-l)))    index = index + 1  res= min (y)end  # Generate the next n values from the series x_i function twist()   for i = 0 : (n-1)     int x = (MT(i) and upper_mask)    + and(mod(MT((i+1) , n) , lower_mask))     xA =bitshift( x ,- 1)    if( (mod(x,  2)) != 0 )# lowest bit of x is 1      xA = xor(xA , a)    endif    MT(i) = xor(MT(mod((i + m) , n)) , xA)      endfor  index = 0end