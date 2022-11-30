function [T, err, ierr] = mytrapc(fun,a,b,toll,nfmax)
%Funzione per il calcolo dell'integrale definitio con        %controllo dell'errore. Tale funzione utilizza la formula %dei trapezzi implementando una strategia non adattiva,
%quindi con nodi equidistanti.
%
%INPUT 
%'fun'  = funzione integranda
%'a'    = limite inferiore su cui calcolare l'integreale
%'b'    = limite superiore su cui calcolare l'integreale
%'toll' = valore di tolleranza per la quale il programma si   %         arresta
%'nfmax'= numero massimo di valutazioni di funzione
%
%OUTPUT
%'T'   = valore dell'integreale
%'err' = stima dell'errore dell'integrale 
%'ierr'= indicatore di errore

vettore_nodi = linspace(a,b,101)

for i=2:10
  vettore_nodi = linspace(1,100,i);
  %disp(vettore_nodi(1))
  for k=2:i-1
    disp(vettore_nodi(k))
  end
  %disp(vettore_nodi(end))
end
%divisone array in 2 alla (n-1) dove n è il numero di cicli