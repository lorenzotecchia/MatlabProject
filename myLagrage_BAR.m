function f = myLagrage_BAR(xdata,ydata,z)
%                  METOODO DI INTERPOLAZIONE DI LAGRANGE
%--------------------------------------------------------------------------
% 
% 
% 
% 
% 
% 
% 
% 
% 

  size_x = length(xdata);
  size_z = length(z);
  f = zeros(size_z);

  
  for k=1:size_x
    w_k(k) = 1;
    for j=1:size_x
      if k~=j
        w_k(k) = w_k(k) .* (xdata(k)-xdata(j));
      end
    end
  end

  w_w = 1;
  s = 0;
  disp(w_k)

  for i =1:size_x
    for j= 1:size_z
      if z(j) != xdata(i)
        %w_w = w_w .* 1;
        %s = s +(ydata(i) ./ w_k).*1;
        w_w = w_w .* (z(j)-xdata(i));
        s = s +(ydata(i) ./ w_k).*(1./(z(j)-xdata(i))); 
      end
    end
  f = s.*w_w;
  end
end