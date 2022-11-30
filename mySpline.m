function spval = mySpline(xdata, ydata, zval)

%              FUNZIONE DI SPLINE CUBICA
% -------------------------------------------------------
% La funzione di spline cubica utilizza un successione di
% polinomi di grado tre per approssimare una serie di punti.
% 
% INPUT
%  xdata = array di nodi su cui collegare i polinomi
%  ydata = ordinate di interpolazione
%  zval = valori delle ascisse su cui costruire il polinomio 
%         interpolante
% OUTPUT
% spval = ordinate da combinare con l'array zval per la 
%         costruzione del polinomio interpolante
%
    n = length(xdata);
    h = zeros(n-1, 1);
    A = zeros(n, n);
    delta = zeros(n, 1);
    
    b = zeros(n, 1);
    d = zeros(n, 1);
    
    spval = zeros(length(zval), 1);
    
    % Distanze tra i nodi 
    for j=1 : n-1
        h(j) = xdata(j+1) - xdata(j);
    end
    
    % Matrice dei coefficienti
    A(1, 1) = 1; A(n, n) = 1;
    for i=2 : n-1
        A(i, i) = 2*(h(i-1) + h(i)); % Diagonali
        A(i, i-1) = h(i-1); 
        A(i, i+1) = h(i);
    end
    
    % Vettore delle soluzioni
    for i=2 : n-1
        delta(i) = (3/h(i))*(ydata(i+1) - ydata(i)) - (3/h(i-1))*(ydata(i) - ydata(i-1));
    end
  
    % Calcolo le incognite
    x = A\delta;
    
    % Ottengo i valori per i coefficienti
    for i=1 : n-1
        b(i) = (ydata(i+1) - ydata(i))/h(i) - (h(i)/3)*(x(i+1) + 2*x(i));
        d(i) = (x(i+1) - x(i))/(3*h(i));
    end
    
    % Calcolo la spline nei punti 
    for i=1 : length(zval)
        for j=1 : n-1
           if(zval(i) >= xdata(j) && zval(i) <= xdata(j+1))
               spval(i) = ydata(j) + b(j)*(zval(i) - xdata(j)) + x(j)*(zval(i) - xdata(j))^2 + d(j)*(zval(i) - xdata(j))^3;
           end
        end
    end
end


% Primo Esercizio
%  x = linspace(0,5,11)
%  f = @(x)x.*exp(-1.*(x-1).^2);
%  y = f(x)
%  z = linspace(x(1),x(end))
%  spval = mySpline(x,y,z);
%  plot(z, spval)

% Secondo Esercizio
%  x = [1,2,3,4,5];
%  y = [13,15,12,9,13];
%  plot(x,y);
%  z = linspace(x(1),x(end));
%  spval = mySpline(x,y,z);
%  z(61)
%  spval(61)
%  plot(z,spval)
%
%
% Terzo Esercizio
%x =[0, 0.169, 0.516, 0.960, 1.328, 1.370, 1.447, 1.884, 2.203, 2.544, 2.919, 3.731, 4.572, 4.620, 4.673, 4.775, 4.781, 4.788, 4.803, 4.827, 4.959, 4.873, 4.9];
% y = [0.652, 0.784, 0.965, 1.075, 1.103, 1.103, 1.131, 1.339, 1.464, 1.506, 1.499, 1.214, 1.193, 1.186, 1.213, 1.220, 1.211, 1.175, 1.160, 1.023, 0.883, 0.849, 0.779];
%plot(x,y,'*')
%axis equal 
%z = linspace(x(1),x(end),400);
%spval = mySpline(x,y,z);
%hold
%plot(z,spval);
%hold off
%z1 = linspace(x(1),x(end));
%spval1 = mySpline(x1,y1,z1);
%plot(z1,spval1);


