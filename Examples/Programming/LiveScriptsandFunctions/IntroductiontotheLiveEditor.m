clcclearyears = (1900:10:2000);                                  % Time intervalpop = [75.995 91.972 105.711 123.203 131.669 ...         % Population Data   150.697 179.323 213.212 228.505 250.633 265.422]   plot(years,pop,'bo');                                    % Plot the population dataaxis([1900 2020 0 400]);title('Population of the U.S. 1900-2000');ylabel('Millions');xlabel('Year')ylim([50 300])x = (years-1900)/50;coef1 = polyfit(x,pop,1) coef2 = polyfit(x,pop,2)coef3 = polyfit(x,pop,3)pred1 = polyval(coef1,x);pred2 = polyval(coef2,x);pred3 = polyval(coef3,x);[pred1; pred2; pred3]hold onplot(years,pred1)plot(years,pred2)plot(years,pred3)ylim([50 300])legend({'Data' 'Linear' 'Quadratic' 'Cubic'},'Location', 'NorthWest')hold offyear = 2018;xyear = (year-1900)/50;pred1 = polyval(coef1,xyear);pred2 = polyval(coef2,xyear);pred3 = polyval(coef3,xyear);[pred1 pred2 pred3]