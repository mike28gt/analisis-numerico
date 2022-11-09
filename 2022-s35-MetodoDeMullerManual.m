clc; clear all; close all;
%% Aproximaciones iniciales a la raíz
x_0 = 4.5
x_1 = 5
x_2 = 5.5

%% Función a determinar su raíz
%% f(x) = x^3 - 13*x - 12

%% Iteración 1
fprintf("Iteración 1\n");

%% Evaluar la función en los valores iniciales
%%  f(x_0) = x_0^3 - 13*x_0 - 12
    f_x_0  = x_0^3 - 13*x_0 - 12

%%  f(x_1) = x_1^3 - 13*x_1 - 12
    f_x_1  = x_1^3 - 13*x_1 - 12

%%  f(x_2) = x_2^3 - 13*x_2 - 12
    f_x_2  = x_2^3 - 13*x_2 - 12

%% Determinar los valores de los terminos h_0, h_1, d_0 y d_1
%%   Determinar h_0
     h_0 = x_1 - x_0
     h_1 = x_2 - x_1
     d_0 = (f_x_1 - f_x_0) / (h_0)
     d_1 = (f_x_2 - f_x_1) / (h_1)

%% Determinar los coeficientes a, b y c para la fórmula cuadrática
%%   Determinar a
     a = (d_1 - d_0) / (h_1 - h_0)

%%   Determinar b
     b = a*h_1 + d_1

%%   Determinar c
     c = f_x_2

%% Encontra rel valor del determinante mediante la sección
%% de la fórmula cuadrática siguiente: sqrt(b^2 - 4*a*c)
  determinante = sqrt(b^2 - 4*a*c)

  sol_1 = b + determinante
  sol_2 = b - determinante

%% Determinar la nueva aproximacion de la raíz
  x_3 = x_2 + ((-2 * c) / (sol_1))

%% Determinar error aproximado porcentual
%% e_a = abs((x_3 - x_2) / x_3) * 100
  e_a = abs((x_3 - x_2) / x_3) * 100

%% Dado que las raíces son reales entonces se seleccionan
%% las aproximaciones iniciales que se encuentren más cercanas
%% a x_3
  x_0 = x_0
  x_1 = x_2
  x_2 = x_3


%% Iteración 2
fprintf("Iteración 2\n");

%% Evaluar la función en los valores iniciales
%%  f(x_0) = x_0^3 - 13*x_0 - 12
    f_x_0  = x_0^3 - 13*x_0 - 12

%%  f(x_1) = x_1^3 - 13*x_1 - 12
    f_x_1  = x_1^3 - 13*x_1 - 12

%%  f(x_2) = x_2^3 - 13*x_2 - 12
    f_x_2  = x_2^3 - 13*x_2 - 12

%% Determinar los valores de los terminos h_0, h_1, d_0 y d_1
%%   Determinar h_0
     h_0 = x_1 - x_0
     h_1 = x_2 - x_1
     d_0 = (f_x_1 - f_x_0) / (h_0)
     d_1 = (f_x_2 - f_x_1) / (h_1)

%% Determinar los coeficientes a, b y c para la fórmula cuadrática
%%   Determinar a
     a = (d_1 - d_0) / (h_1 - h_0)

%%   Determinar b
     b = a*h_1 + d_1

%%   Determinar c
     c = f_x_2

%% Encontra rel valor del determinante mediante la sección
%% de la fórmula cuadrática siguiente: sqrt(b^2 - 4*a*c)
  determinante = sqrt(b^2 - 4*a*c)

  sol_1 = b + determinante
  sol_2 = b - determinante
