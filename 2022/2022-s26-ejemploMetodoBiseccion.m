clc; clear all;
%% x_l = 12
%% x_u = 16

%% Algorito de bisección
%% Paso 1: f(x_l) * f(x_u) < 0
resultado = f(12) * f(16);

%% El resultado del paso uno es un número negativo, por lo que puedo
%% utilizar el método de bisección

%% Paso 2: x_r = (x_l + x_u) / 2
x_r = (12 + 16) / 2;   % x_r = 14

%% Paso 3:
%%     a) f(x_l) * f(x_r) < 0 entonces x_u = x_r y regresamos al paso 2
%%     b) f(x_l) * f(x_r) > 0 entonces x_l = x_r y regresamos al paso 2
%%     c) f(x_l) * f(x_r) = 0 entonces la raíz es igual a x_r
resultado = f(12) * f(14);  % resultado = 9.8503

%% El resultado de multiplicar f(x_l) * f(x_r) es positivo, por lo tanto tomamos
%% la opción b) en la que el valor de x_r = 14 se convierte en el nuevo x_l
%% x_l = 14

%% Regresamos al paso 2

%% Paso 2: x_r = (x_l + x_u) / 2
x_r = (14 + 16) / 2;   % x_r = 15

%% Paso 3:
%%     a) f(x_l) * f(x_r) < 0 entonces x_u = x_r y regresamos al paso 2
%%     b) f(x_l) * f(x_r) > 0 entonces x_l = x_r y regresamos al paso 2
%%     c) f(x_l) * f(x_r) = 0 entonces la raíz es igual a x_r
resultado = f(14) * f(15);  % resultado = -0.6194

%% El resultado de multiplicar f(x_l) * f(x_r) es negativo, por lo tanto tomamos
%% la opción a) en la que el valor de x_r = 15 se convierte en el nuevo x_u
% x_u = 15

%% Regresamos al paso 2

%% Paso 2: x_r = (x_l + x_u) / 2
x_r = (14 + 15) / 2;   % x_r = 14.500

%% Paso 3:
%%     a) f(x_l) * f(x_r) < 0 entonces x_u = x_r y regresamos al paso 2
%%     b) f(x_l) * f(x_r) > 0 entonces x_l = x_r y regresamos al paso 2
%%     c) f(x_l) * f(x_r) = 0 entonces la raíz es igual a x_r
resultado = f(14) * f(14.500);  % resultado = 0.9565

%% El resultado de multiplicar f(x_l) * f(x_r) es positivo, por lo tanto tomamos
%% la opción b) en la que el valor de x_r = 14.500 se convierte en el nuevo x_l
%% x_l = 14.500

%% Regresamos al paso 2

%% Paso 2: x_r = (x_l + x_u) / 2
x_r = (14.500 + 15) / 2;   % x_r = 14.750

%% Paso 3:
%%     a) f(x_l) * f(x_r) < 0 entonces x_u = x_r y regresamos al paso 2
%%     b) f(x_l) * f(x_r) > 0 entonces x_l = x_r y regresamos al paso 2
%%     c) f(x_l) * f(x_r) = 0 entonces la raíz es igual a x_r
resultado = f(14.500) * f(14.750);  % resultado = 0.059269

%% El resultado de multiplicar f(x_l) * f(x_r) es positivo, por lo tanto tomamos
%% la opción b) en la que el valor de x_r = 14.750 se convierte en el nuevo x_l
%% x_l = 14.750

%% Regresamos al paso 2

%% Paso 2: x_r = (x_l + x_u) / 2
x_r = (14.750 + 15) / 2;  % x_r = 14.875

%% Paso 3:
%%     a) f(x_l) * f(x_r) < 0 entonces x_u = x_r y regresamos al paso 2
%%     b) f(x_l) * f(x_r) > 0 entonces x_l = x_r y regresamos al paso 2
%%     c) f(x_l) * f(x_r) = 0 entonces la raíz es igual a x_r
resultado = f(14.750) * f(14.875);  % resultado = -0.014325

%% El resultado de multiplicar f(x_l) * f(x_r) es negativo, por lo tanto tomamos
%% la opción a) en la que el valor de x_r = 14.875 se convierte en el nuevo x_u
%% x_u = 14.875

%% Regresamos al paso 2

%% Paso 2: x_r = (x_l + x_u) / 2
x_r = (14.750 + 14.875) / 2;  % x_r = 14.812

%% Paso 3:
%%     a) f(x_l) * f(x_r) < 0 entonces x_u = x_r y regresamos al paso 2
%%     b) f(x_l) * f(x_r) > 0 entonces x_l = x_r y regresamos al paso 2
%%     c) f(x_l) * f(x_r) = 0 entonces la raíz es igual a x_r
resultado = f(14.750) * f(14.812);  % resultado = -2.1122e-03

%% El resultado de multiplicar f(x_l) * f(x_r) es negativo, por lo tanto tomamos
%% la opción a) en la que el valor de x_r = 14.812 se convierte en el nuevo x_u
%% x_u = 14.812

%% Regresamos al paso 2

%% Paso 2: x_r = (x_l + x_u) / 2
x_r = (14.750 + 14.812) / 2;  % x_r = 14.781

%% Paso 3:
%%     a) f(x_l) * f(x_r) < 0 entonces x_u = x_r y regresamos al paso 2
%%     b) f(x_l) * f(x_r) > 0 entonces x_l = x_r y regresamos al paso 2
%%     c) f(x_l) * f(x_r) = 0 entonces la raíz es igual a x_r
resultado = f(14.750) * f(14.781);  % resultado = 3.9196e-03

%% El resultado de multiplicar f(x_l) * f(x_r) es positivo, por lo tanto tomamos
%% la opción b) en la que el valor de x_r = 14.781 se convierte en el nuevo x_l
%% x_l = 14.781

%% Regresamos al paso 2

%% Paso 2: x_r = (x_l + x_u) / 2
x_r = (14.781 + 14.812) / 2;  % x_r = 14.796

%% Paso 3:
%%     a) f(x_l) * f(x_r) < 0 entonces x_u = x_r y regresamos al paso 2
%%     b) f(x_l) * f(x_r) > 0 entonces x_l = x_r y regresamos al paso 2
%%     c) f(x_l) * f(x_r) = 0 entonces la raíz es igual a x_r
resultado = f(14.781) * f(14.796);  % resultado = 3.9296e-04

%% El resultado de multiplicar f(x_l) * f(x_r) es positivo, por lo tanto tomamos
%% la opción b) en la que el valor de x_r = 14.796 se convierte en el nuevo x_l
%% x_l = 14.796

%% Regresamos al paso 2

%% Paso 2: x_r = (x_l + x_u) / 2
x_r = (14.796 + 14.812) / 2;  % x_r = 14.804

%% Paso 3:
%%     a) f(x_l) * f(x_r) < 0 entonces x_u = x_r y regresamos al paso 2
%%     b) f(x_l) * f(x_r) > 0 entonces x_l = x_r y regresamos al paso 2
%%     c) f(x_l) * f(x_r) = 0 entonces la raíz es igual a x_r
resultado = f(14.796) * f(14.804);  % resultado = -5.5843e-05

%% El resultado de multiplicar f(x_l) * f(x_r) es negativo, por lo tanto tomamos
%% la opción a) en la que el valor de x_r = 14.804 se convierte en el nuevo x_u
%% x_u = 14.804

%% Regresamos al paso 2

%% Paso 2: x_r = (x_l + x_u) / 2
x_r = (14.796 + 14.804) / 2;  % x_r = 14.800

%% Paso 3:
%%     a) f(x_l) * f(x_r) < 0 entonces x_u = x_r y regresamos al paso 2
%%     b) f(x_l) * f(x_r) > 0 entonces x_l = x_r y regresamos al paso 2
%%     c) f(x_l) * f(x_r) = 0 entonces la raíz es igual a x_r
resultado = f(14.796) * f(14.800)  % resultado = 2.2152e-05

%% El resultado de multiplicar f(x_l) * f(x_r) es positivo, por lo tanto tomamos
%% la opción b) en la que el valor de x_r = 14.800 se convierte en el nuevo x_l
%% x_l = 14.800

%% Regresamos al paso 2

%% Paso 2: x_r = (x_l + x_u) / 2
x_r = (14.800 + 14.804) / 2;  %
