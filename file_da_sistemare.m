fun_1 = @(x)exp(x);
fun_2 = @(x)cos(x);
fun_3 = @(x)x.^(1/2);
I_1 = exp(4) - 1;
I_2 = sin(1);
I_3 = 2/3;
a = 0;
b = 4;
n = 2;
i = 1;


%while i<=8
%  n = 2.^(i-1)
%  Tn = myTrap(fun_1,a,b,n);
%  errore_Appoggio(i) = abs(I_1 - Tn);
%  i = i +1;
%end

%for i=1:7
%  r(i) = errore_Appoggio(i)/errore_Appoggio(i+1);
%end
%plot(r)


while i<=8
  n = 2.^(i)
  Tn = mySimp(fun_1,a,b,n);
  errore_Appoggio(i) = abs(I_1 - Tn);
  i = i +1;
end

for i=1:7
  r(i) = errore_Appoggio(i)/errore_Appoggio(i+1);
end
plot(r)

%Sn_1 = mySimp(fun_1,a_1,b_1)


%errSn_1 = abs(I_1 - Sn_1)
%disp("\n")

%Tn_2 = myTrap(fun_2,a_1,b_1)
%Sn_2 = mySimp(fun_2,a_1,b_1)
%errTn_2 = abs(I_2 - Tn_2)
%errSn_2 = abs(I_2 - Sn_2)
%disp("\n")

%Tn_3 = myTrap(fun_3,a_1,b_1)
%Sn_3 = mySimp(fun_3,a_1,b_1)
%errTn_3 = abs(I_3 - Tn_3)
%errSn_3 = abs(I_2 - Sn_2)
%disp("\n")