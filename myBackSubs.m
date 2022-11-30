function x = myBackSubs(A,y)


n = length(y);
x(n) = y(n)./A(n,n);
for i = n-1:-1:1
  x(i) = y(i);
  for j = i + 1:n
    x(i) = x(i) - A(i,j).* x(j);
  end
  x(i) = x(i)./A(i,i);
end