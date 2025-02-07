clc; clear all;
%% x_l = 12
%% x_u = 16

%% Algoritmo de la falsa posición
%% Paso 1: f(x_l) * f(x_u) < 0
resultado = f(12) * f(16);

%% El resultado del paso uno es un número negativo, por lo que puedo
%% utilizar el método de la falsa posición

%% Paso 2: x_r = x_u - (f(x_u)*(x_l - x_u)) / (f(x_l) - f(x_u))
x_r = 16 - (f(16)*(12 - 16)) / (f(12) - f(16));   % x_r = 14.931

%% Paso 3:
%%     a) f(x_l) * f(x_r) < 0 entonces x_u = x_r y regresamos al paso 2
%%     b) f(x_l) * f(x_r) > 0 entonces x_l = x_r y regresamos al paso 2
%%     c) f(x_l) * f(x_r) = 0 entonces la raíz es igual a x_r
resultado = f(12) * f(14.931);  % resultado = -1.5391

%% El resultado de multiplicar f(x_l) * f(x_r) es negativo, por lo tanto tomamos
%% la opción a) en la que el valor de x_r = 14.931 se convierte en el nuevo x_u
%% x_u = 14.931

%% Regresamos al paso 2

%% Paso 2: x_r = x_u - (f(x_u)*(x_l - x_u)) / (f(x_l) - f(x_u))
x_r = 14.931 - (f(14.931)*(12 - 14.931)) / (f(12) - f(14.931));   % x_r = 14.815

%% Paso 3:
%%     a) f(x_l) * f(x_r) < 0 entonces x_u = x_r y regresamos al paso 2
%%     b) f(x_l) * f(x_r) > 0 entonces x_l = x_r y regresamos al paso 2
%%     c) f(x_l) * f(x_r) = 0 entonces la raíz es igual a x_r
resultado = f(12) * f(14.815);  % resultado = -0.1651

%% El resultado de multiplicar f(x_l) * f(x_r) es negativo, por lo tanto tomamos
%% la opción a) en la que el valor de x_r = 14.815 se convierte en el nuevo x_u
% x_u = 14.815

%% Regresamos al paso 2

%% Paso 2: xr = x_u - (f(x_u)*(x_l - x_u)) / (f(x_l) - f(x_u))
x_r = 14.815 - (f(14.815)*(12 - 14.815)) / (f(12) - f(14.815));   % x_r = 14.803

%% Paso 3:
%%     a) f(x_l) * f(x_r) < 0 entonces x_u = x_r y regresamos al paso 2
%%     b) f(x_l) * f(x_r) > 0 entonces x_l = x_r y regresamos al paso 2
%%     c) f(x_l) * f(x_r) = 0 entonces la raíz es igual a x_r
resultado = f(12) * f(14.803);  % resultado = -0.022203

%% El resultado de multiplicar f(x_l) * f(x_r) es negativo, por lo tanto tomamos
%% la opción a) en la que el valor de x_r = 14.803 se convierte en el nuevo x_u
%% x_u = 14.803

%% Regresamos al paso 2

%% Paso 2: xr = x_u - (f(x_u)*(x_l - x_u)) / (f(x_l) - f(x_u))
x_r = 14.803 - (f(14.803)*(12 - 14.803)) / (f(12) - f(14.803));   % x_r = 14.801

%% Paso 3:
%%     a) f(x_l) * f(x_r) < 0 entonces x_u = x_r y regresamos al paso 2
%%     b) f(x_l) * f(x_r) > 0 entonces x_l = x_r y regresamos al paso 2
%%     c) f(x_l) * f(x_r) = 0 entonces la raíz es igual a x_r
resultado = f(12) * f(14.801);  % resultado = 0.0016194

%% El resultado de multiplicar f(x_l) * f(x_r) es positivo, por lo tanto tomamos
%% la opción b) en la que el valor de x_r = 14.801 se convierte en el nuevo x_l
%% x_l = 14.801

%% Regresamos al paso 2

%% Paso 2: xr = x_u - (f(x_u)*(x_l - x_u)) / (f(x_l) - f(x_u))
x_r = 14.803 - (f(14.803)*(14.801 - 14.803)) / (f(14.801) - f(14.803))  % x_r = 14.801


