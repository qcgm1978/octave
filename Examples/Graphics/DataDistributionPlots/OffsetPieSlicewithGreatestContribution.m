clcclearcloseX = [19.3, 22.1, 51.6     34.2, 70.3, 82.4     61.4, 82.9, 90.8     50.5, 54.9, 59.1     29.4, 36.3, 47.0];     product_totals = sum(X);[c,ind] = max(product_totals);explode = zeros(1,3);explode(ind) = 1;figurepie(product_totals,explode)title('Sales Contributions of Three Products')shg