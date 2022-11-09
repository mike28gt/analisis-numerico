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

function [retval1, retval2] = NewtonRaphsonSistemasEcuacionesNoLineales (x0, y0, imax, ea)
  clc; clear var; close all;

  fprintf("Aproximación inicial de x: %d\n", x0);
  fprintf("Aproximación inicial de y: %d\n", y0);
  fprintf("Error requerido: %d\n", ea);
  fprintf("Cantidad de iteraciones maxima: %i\n", imax);
  x_r = x0;
  y_r = y0;
  iteracion = 0;

  do
    fprintf("Iteracion %i \n", iteracion);
    x_r_old = x_r;
    y_r_old = y_r;

    %% Aquí cambia la fórmula para determinar la siguiente aproximación
    det_jacobiano = du_dx(x_r_old, y_r_old) * dv_dy(x_r_old, y_r_old) - du_dy(x_r_old, y_r_old) * dv_dx(x_r_old, y_r_old);
    x_r = x_r_old - ((u(x_r_old, y_r_old) * dv_dy(x_r_old, y_r_old) - v(x_r_old, y_r_old) * du_dy(x_r_old, y_r_old)) / det_jacobiano);
    x_y = y_r_old - ((v(x_r_old, y_r_old) * du_dx(x_r_old, y_r_old) - u(x_r_old, y_r_old) * dv_dx(x_r_old, y_r_old)) / det_jacobiano);
    fprintf("     Nuevo valor de x_r: %d \n", x_r);
    fprintf("     Nuevo valor de y_r: %d \n", y_r);

    iteracion = iteracion + 1;

    if (x_r != 0 || y_r != 0)
      %% Cálculo del estimado
      es_x = abs((x_r - x_r_old) / x_r) * 100;
      es_y = abs((y_r - y_r_old) / y_r) * 100;
      fprintf("     Error aproximado de x_r: %d \n", es_x);
      fprintf("     Error aproximado de y_r: %d \n", es_y);
    endif

  until ((es_x < ea || es_y < ea) && iteracion <= imax)

  retval1 = x_r;
  retval2 = x_y;

endfunction
