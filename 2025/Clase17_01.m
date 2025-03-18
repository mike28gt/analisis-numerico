%edad = input("Ingrese la edad: ");

%if edad <= 0 || edad > 120
%    edad = input("Ingrese la edad: ");
%   if edad <=0 || edad > 120
%        edad = input("Ingrese la edad: ");
%        if edad <=0 || edad > 120
%            edad = input("Ingrese la edad: ");
%           if edad <=0 || edad > 120
%                edad = input("Ingrese la edad: ");
%            else
%                disp("La edad ingresada es válida");
%            end
%        else
%            disp("La edad ingresada es válida");
%        end
%    else
%        disp("La edad ingresada es válida");
%    end
%else
%    disp("La edad ingresada es válida");
%end

edad = input("Ingrese una edad: ");

while edad <= 0 || edad > 120
    edad = input("Ingrese una edad: ");
end

disp("La edad ingresada es válida.");