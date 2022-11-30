function [Tn] = myTrap(fun, a, b, n)
%
%
%
%
%
%
%
%
%
%
%
%

% q = integral(fun,a,b);


vettore_1 = linspace(a, b, n + 1)
h = (b - a)./n;
Tn_Appoggio = 0;
for i = 2 : length(vettore_1) - 1 
  Tn_Appoggio = Tn_Appoggio + 2.*(fun(vettore_1(i)));
end

Tn = (1/2).*h.*(Tn_Appoggio + fun(vettore_1(1)) + fun(vettore_1(end)));