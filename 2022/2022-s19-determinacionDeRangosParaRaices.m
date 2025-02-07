%f'(0) = r
%|f'(x_*)| < 1 entonces el punto fijo es estable
%|f'(x_*)| > 1 entonces el punto fijo es inestable

%fprintf("Análisis del punto fijo r \n");
%for r = 0:0.1:4
%  if abs(r) < 1
%    fprintf("El valor de f'(0) es estable en el valor %d \n", r);
%  else
%    fprintf("El valor de f'(0) es inestable en el valor %d \n", r);
%  endif
%endfor


%f'(1 - (1/r)) = 2 - r
%|f'(x_*)| < 1 entonces el punto fijo es estable
%|f'(x_*)| > 1 entonces el punto fijo es inestable
fprintf("Análisis del punto fijo 2- r \n");
for r = 0:0.01:4
  punto_fijo = 2 - r;
  if abs(punto_fijo) < 1
    fprintf("El valor de f'(0) es estable en el valor %d \n", r);
  else
    fprintf("El valor de f'(0) es inestable en el valor %d \n", r);
  endif
endfor


