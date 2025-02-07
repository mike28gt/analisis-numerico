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
## @deftypefn {} {@var{retval} =} metodoDeBiseccion (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Miguel Catalan <miguelcatalan@Miguels-MacBook-Air.local>
## Created: 2022-10-07

## Se necesita la función a evaluar dentro del método de Bisección.
## Para este ejemplo la función a evaluar será creada previamente.
function retval = metodoDeBiseccion (x_l, x_u, iteraciones)
  clc;
  ## Paso 1: Se evalua si la función puede ser resuelta por medio del método
  ## de bisección.
  if (f(x_l) * f(x_u)) < 0

    contador = 1;

    while contador <= iteraciones
      fprintf("Iteracion %i \n", contador);

      ## Paso 2: Determinar un valor de x_r
      x_r = (x_l + x_u) / 2;
      fprintf("   x_r = %d \n", x_r);

      ## Paso 3: Determinar el nuevo valor para x_l o x_u en base a:
      ##      a) f(x_l) * f(x_r) < 0 entonces x_u = x_r
      ##      b) f(x_l) * f(x_r) > 0 entonces x_l = x_r
      ##      c) f(x_l) * f(x_r) = 0 entonces la raíz es igual a x_r
      ## Implementación del inciso a)
      if (f(x_l) * f(x_r)) < 0
        x_u = x_r;
        fprintf("   x_u = x_r   =>   x_u = %d \n", x_r);
      ## Implementación del inciso b)
      elseif (f(x_l) * f(x_r)) > 0
        x_l = x_r;
        fprintf("   x_l = x_r   =>   x_l = %d \n", x_r);
      ## Implementación del inciso c)
      elseif (f(x_l) * f(x_r)) == 0
        fprintf("   Se encontró el resultado: x = %d \n", x_r);
        break;
      endif

      contador = contador + 1;
    endwhile
  else
    disp("La función no puede ser resuelta con el método de bisección.");
  endif
endfunction
