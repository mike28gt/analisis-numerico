clear all; clc;

%modifique el valor de r para generar diferentes comportamientos de
%poblaciones y asi encontrar diferentes puntos fijos
r = 3.5;
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

%las siguientes líneas imprimen en consola los datos utilizados para
%generar la gráfica
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
%esta linea se utiliza para cambiar el nombre del titulo de manera dinámica
%tomando
titulo = strcat('Poblacion de Conejos (r=', num2str(r), ')')
title(titulo, 'FontSize', 16);
