## Copyright (C) 2022 Miguel Catalan
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} Muller (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Miguel Catalan <miguelcatalan@Miguels-MacBook-Air.local>
## Created: 2022-11-07

function retval = Muller (x_0, x_1, x_2, eps, maxit)
  x_2 = x_2;
  x_1 = x_1;
  x_0 = x_0;
  iter = 0;
  do
    iter = iter + 1;
    fprintf("Iteración %d \n", iter);
    fprintf("     x_0 = %d \n", x_0);
    fprintf("     x_1 = %d \n", x_1);
    fprintf("     x_2 = %d \n", x_2);

    h_0 = x_1 - x_0;
    fprintf("     h_0 = %d \n", h_0);
    h_1 = x_2 - x_1;
    fprintf("     h_1 = %d \n", h_1);
    d_0 = (f(x_1) - f(x_0)) / (h_0);
    fprintf("     d_0 = %d \n", d_0);
    d_1 = (f(x_2) - f(x_1)) / (h_1);
    fprintf("     d_1 = %d \n", d_1);

    %%   Determinar a
    a = (d_1 - d_0) / (h_1 + h_0);
    fprintf("     a = %d \n", a);
    %%   Determinar b
    b = a*h_1 + d_1;
    fprintf("     b = %d \n", b);
    %%   Determinar c
    c = f(x_2);
    fprintf("     c = %d \n", c);

    %% Encontra rel valor del determinante mediante la sección
    %% de la fórmula cuadrática siguiente: sqrt(b^2 - 4*a*c)
    discriminante = sqrt(b^2 - 4*a*c);

    if (abs(b + discriminante) > abs(b - discriminante))
      den = b + discriminante;
    else
      den = b - discriminante;
    endif
    fprintf("     den = %d \n", den);

    x_3 = x_2 + ((-2*c) / den);
    fprintf("     x_3 = %d \n", x_3);

    es = abs((x_3 - x_2) / x_3) * 100;
    fprintf("     es = %d \n", es);

    x_0 = x_1;
    x_1 = x_2;
    x_2 = x_3;

  until (es < eps && iter < maxit);
endfunction
