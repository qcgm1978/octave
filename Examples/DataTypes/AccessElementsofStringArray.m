str = ["Mercury","Gemini","Apollo";       "Skylab","Skylab B","ISS"];isequal(str(1,:),"MercuryGeminiApollo")isequal(str(2,2),'k')fail('str(3,4) = "Mir"','nonconformant arguments')str = ["Mercury","Gemini","Apollo";       "Skylab","Skylab B","ISS"];fail('chr = str{2,2}','string cannot be indexed with {')isequal(str(2,7:14),'Skylab B')isequal(str(2,1:3),'Sky')TF = isspace(str(2,7:14));isequal(TF,[  0  0  0  0  0  0  1  0])fail('str(2,7:14)(TF) = "-"','() must be followed by . or close the index chain');str(2,13)='-';isequal(str(2,7:14),'Skylab-B')#replace(str(2,2)," ","-")