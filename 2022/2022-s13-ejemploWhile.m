clear all; close all;

%n = 15;
%resultado = n < 10

n = 7;
while n < 10 && n > 5
  fprintf("%d < 10: %d\n", n, (n<10));
  n = n + 1;
endwhile
