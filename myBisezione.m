function [x, it] = myBisezione(f, a, b, tol)

%                       Metodo di bisezione
%--------------------------------------------------------------------------
% Il programma costruisce un metodo per il calcolo di una radice di una
% funzione. Costruisce un intervallo valutando la funzioe agli estremi di
% tale intervallo, calcolandone il punto medio e valutando di spostarsi di
% conseguenza, a destra o sinistra per ridurre l'intervallo e valutarne la
% grandezza rispetto alla tolleranza in input dall'utente.
% 
% 
% INPUT
%   'x'   = valore della radice calcolata dal programma 
%   'it'  = numero di iterazioni effettuate
% 
% OUTPUT
%   'f'   = funzione in input
%   'a'   = estremo inferiore dell'intervallo
%   'b'   = estremo superiore dell'intervallo
%   'tol' = tolleranza

x(1) = a; x(2) = b;
fa = f(a); fb = f(b);
if fa * fb >= 0
    disp('Intervallo non accettabile'); 
    return; 
end

it = ceil((log(b-a) - log(tol)) / log(2)); 

for k=3:it+2
    x(k) = (a + b)/2; 
    fxk = f(x(k));
    if fa * fxk == 0 %descorporare il caso in cui il prodotto è uguale a zero
        break
    elseif fa * fxk < 0
        b = x(k);
        fb = fxk;
    else
        a = x(k);
        fa = fxk;
    end
end

