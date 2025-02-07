clear all; close all; clc;

r = 3.1;
x0 = 0.4;

%creacion de vectores
anios = [0];
poblacion = [x0];

%generacion de datos
for anio = 1:30
  %agregar anio al vector de anios
  anios = [anios anio];
  %calcular la población del anio siguiente
  x1 = r*x0*(1-x0);
  %agregar la poblacion del anio siguiente al vector de poblacion
  poblacion = [poblacion x1];
  %hacer la poblacion del anio siguiente la nueva poblacion inicial
  x0 = x1;
endfor

fprintf("Valor de r: %d \n", r);
for anio = 1:30
  fprintf("anio: %d \t poblacion: %d\n", anios(anio), poblacion(anio));
endfor


plot(anios, poblacion, 'Marker', '.');
axis([0 30 0 1]);
a = gca();
set(a, 'xtick', 0:2:30);
set(a, 'ytick', 0:0.1:1);
xlabel('Año', 'FontSize', 16);
ylabel('Población', 'FontSize', 16);
title('Población de Conejos (r=1)', 'FontSize', 16);
