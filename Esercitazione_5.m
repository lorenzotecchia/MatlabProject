fun_1 = @(x)exp(x);
fun_2 = @(x)cos(x);
fun_3 = @(x)x.^(1/2);
a_1 = 0;
b_1 = 1;

myTrap(fun_1,a_1,b_1)
mySimp(fun_1,a_1,b_1)

myTrap(fun_2,a_1,b_1)
mySimp(fun_2,a_1,b_1)

myTrap(fun_3,a_1,b_1)
mySimp(fun_3,a_1,b_1)