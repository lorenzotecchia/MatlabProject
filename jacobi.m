function [x, err] = jacobi(v,c,p,b,x, tol, Nmax)
%
%
  n = length(p) - 1
  nit = 0;
  err = tol + 1;
  while err < tol & nit < Nmax
    x_hold = x
    for i=1:n
      sum_1 = 0;
      for k=p(i):(p(i+1) - 1)
        if(c(k) ˜= i)
           sum_1 = sum_1 + v(k).*x_hold(c(k));
        else
           d = v(k);     
        end
      end
      x(i) = (b(i)- sum_1)./d;
    end
    err = norm(x-x_hold, inf)./norm(x, inf);
  end
end
       
