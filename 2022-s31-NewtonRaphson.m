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
## @deftypefn {} {@var{retval} =} NewtonRaphson (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Miguel Catalan <miguelcatalan@Miguels-MacBook-Air.local>
## Created: 2022-10-24

function retval = NewtonRaphson (x0, imax, ea)
  clc; clear var; close all;

  fprintf("Aproximación inicial de x: %d\n", x0);
  fprintf("Error requerido: %d\n", ea);
  fprintf("Cantidad de iteraciones maxima: %i\n", imax);
  x_r = x0;
  iteracion = 0;

  do
    fprintf("Iteracion %i \n", iteracion);
    x_r_old = x_r;

    x_r = x_r_old - (f(x_r_old) / f_prima(x_r_old));
    fprintf("     Nuevo valor de x_r: %d \n", x_r);

    iteracion = iteracion + 1;

    if (x_r != 0)
      %% Cálculo del estimado
      es = abs((x_r - x_r_old) / x_r) * 100;
      fprintf("     Error aproximado: %d \n", es)
    endif

  until (es < ea && iteracion <= imax)

  retval = x_r;

endfunction
