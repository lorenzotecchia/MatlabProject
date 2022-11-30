function f = myLagrage(xdata,ydata,z)
%                  METOODO DI INTERPOLAZIONE DI LAGRANGE
%--------------------------------------------------------------------------
% La funzione utilizza il metodo di interpolazione di Lagrange
% per identificare una funzione che approssimi la serie di punti in input e
% restituisca in output la stessa.
%
% INPUT:
% 'xdata' = vettore delle ascisse dei punti 
% 'ydata' = vettore delle ordinate dei punti 
% 'z' = vettore di ascisse su cui costruire la funzione
% 
% OUTPUT
% 'f' = vettore di numeri che stanno alla relazione interpolante
%
%



    size_x = length(xdata);
    size_z = length(z);
    f = zeros(size_z);
    
    
    for i=1:size_x
        pos = ones(size_z);
        for j=[1:i-1 i+1:size_x]
            pos = pos .*(z - xdata(j))./(xdata(i)-xdata(j));
        end
        f = f + pos * ydata(i);
    end
    f = f(1, :);

end