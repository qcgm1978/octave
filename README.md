You can use rehash this will Octave reinitialize its directory cache, see http://octave.sourceforge.net/octave/function/rehash.html).You can also use clear functionName which should clean all variables in the function and trigger a reload (you script would be called functionName.m).https://stackoverflow.com/questions/28903974/how-to-make-gnu-octave-reload-scripts-each-time-they-are-runTo install a package from the Octave Forge, at the Octave prompt type pkg install -forge package_name. This requires an internet connection.