clcclearclosex = [1,2,3];#pie(x,{'Item A','Item B','Item C'})x = [1,2,3];p = pie(x);pText = findobj(p,'Type','text')#percentValues = get(pText,'String'); #txt = {'Item A: ';'Item B: ';'Item C: '}; #combinedtxt = strcat(txt,percentValues); #pText(1) = combinedtxt(1);#pText(2).String = combinedtxt(2);#pText(3).String = combinedtxt(3);shg