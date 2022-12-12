function b = esercizio_classe(v,c,p,x)
%
%
  n = length(p) - 1;
  b = zeros(n,1);
  for i=1:n 
    for k=p(i):(p(i+1) - 1)
      b(i) = b(i) + v(k).*x(c(k));
    end
  end
end