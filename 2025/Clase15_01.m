numero = input('Ingrese un número (1-7) para conocer el día de la semana: ');

switch numero
    case 1
        disp("Lunes");
    case 2
        disp("Martes");
    case 3
        disp("Miércoles");
    case 4
        disp("Jueves");
    case 5
        disp("Viernes");
    case 6
        disp("Sábado");
    case 7
    disp("Domingo");
    otherwise
        disp("Error: debe ingresar un número entre 1-7.");
end