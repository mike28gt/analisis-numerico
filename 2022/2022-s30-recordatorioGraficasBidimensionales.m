
% Problema 1, Inciso c)
x_l = 5;
x_u = 10;

rest = f(x_l) * f(x_u);

%Iteración 1

x_r = (x_l + x_u) / 2;
%x_r = 7.5000

res = f(x_l) * f(x_r);
%res = -21.938

%f(x_l) * f(x_r) < 0
x_u = 7.5000;

%Determinacion de error verdadero
%ϵt = (error verdadero/valor verdadero) * 100
%ϵt = abs((valor verdadero - valor aproximado)/ valor verdadero) * 100
e_t = abs((6.4051 - 7.5000) / 6.4051) * 100;
%e_t = 17.094

%Determinación de error aproximado
%e_a = abs((aproximación actual - aproximación anterior) / aproximación actual) * 100
e_a = abs((7.5000 - 10) / 7.5000) * 100;
%e_a = 33.33

%Iteracion 2
x_r = (x_l + x_u) / 2;
%x_r = 6.2500

res = f(x_l) * f(x_r)
%res = 2.6719

%f(x_l) * f(x_r) > 0
x_l = 6.2500;

%Determinacion de error verdadero
%ϵt = (error verdadero/valor verdadero) * 100
%ϵt = abs((valor verdadero - valor aproximado)/ valor verdadero) * 100
e_t = abs((6.4051 - 6.2500) / 6.4051) * 100;
%e_t = 2.4215

%Determinación de error aproximado
%e_a = abs((aproximación actual - aproximación anterior) / aproximación actual) * 100
e_a = abs((6.2500 - 7.5000) / 6.2500) * 100
%e_a = 20.00

% Iteración 3

%x_u =
