clear all; close all; clc;

% Rango de valores de r
r_minimo = 2.4;
r_maximo = 4;

% Cantidad de pixeles que se utilizaran para la grafica en el eje X
pixeles_r = 500;

% Cantidad de pixeles que se utilizara para la grafica en el eje Y
pixeles_x = 400;

% Determinación de los límites para agrupar los puntos de la gráfica para r
grupos_r = linspace(r_minimo, r_maximo, pixeles_r + 1);

% Valores medios de r
r = (grupos_r(1:pixeles_r) + grupos_r(2:pixeles_r + 1))/2;

% Determinación de los límites para agrupar los puntos de la gráfica para x
grupos_x = linspace(0, 1, pixeles_x + 1);

% Cantidad de iteraciones para encontrar puntos fijos en la ecuación logística
iteraciones_ecuacion_logistica = 20000;

% Cantidad de valores de x_* a determinar por cada valor de r
cantidad_datos = 10000;

% Matriz que se utilizarán para construir la figura
datos_x = zeros(cantidad_datos, pixeles_r);

% valor inicial de x
x_0 = 0.5;

% ESCRIBA EL MOTOR COMPUTACIONAL DEL CODIGO AQUI.
% UTILICE LAS VARIABLES PREVIAMENTE DEFINIDAS: pixeles_r, r, x_0, iteraciones_ecuacion_logistica, cantidad_datos.
% EL RESULTADO FINAL SERA LA VARIABLE datos_x



%%%%% Gráfica de la imagen y agrupación de datos_x %%%%%%%
% Valores agrupados para x
histograma_x = zeros(pixeles_x + 1, pixeles_r);

for i = 1:pixeles_r
    histograma_x(:, i) = histc(datos_x(:, i), grupos_x);
endfor;

colormap(flipud(gray(256)));
brighten(-0.8);
cmap = colormap;
im = image([grupos_r(1) grupos_r(end)], [grupos_x(1) grupos_x(end)], histograma_x);
set(gca,'YDir','normal');
xlabel('r','FontSize',14);
ylabel('x','FontSize',14);
title('Gráfico de Bifurcación para la Ecuación Logística','FontSize',16)