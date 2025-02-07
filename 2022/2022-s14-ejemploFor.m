clear all; close all;
r = 2.5;
x = 0.1;

%r = input("Ingrese un valor para r: ");
%x = input("Ingrese un valor para x: ");


limiteSuperior = 5;
limiteInferior = 1;
for i = limiteInferior:limiteSuperior
  fprintf("i=%d\n", i);
  y = i^2
  x = r*x*(1 - x)
endfor
