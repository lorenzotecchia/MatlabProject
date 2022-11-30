function x = myFarwardSubs(A,y)


n = length(y);
x(1) = y(1)./A(1,1);
for i = 2:n
  x(i) = y(i);
  for j = 1 : n - 1
    x(i) = y(i) - A(i,j).* x(j);
  end
  x(i) = x(i)./A(i,i);
end