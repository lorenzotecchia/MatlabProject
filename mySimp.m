function [Sn] = mySimp(fun,a,b,n)
%
%
%
%
%
%
%
%
%
% Per mercoledi grafico errori con Simpson
% Aggiustare questa roba strana 
% l'andamento deve essere inverso perche in questo modo l'errore aumenta e non diminuisce


h = (b-a)./n;
vettore_1 = linspace(a,b, n + 1);
sum_1 = 0 ;
sum_2 = 0 ;
for i = 2: n
  if mod(2,i) == 0
    sum_1 = sum_1 + 4.*fun(i);
  else
    sum_2 = sum_2 + 2.*fun(i);
  end
end

Sn = (h./3).*(fun(1) + fun(end) + sum_1 + sum_2);
