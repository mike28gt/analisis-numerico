%contador = 0;

%while contador < 10
%    contador = contador + 1;%

%    if contador < 6
%        continue;
%    end

%    disp(contador);
%end


% Inicialización de contadores
count_A = 0;
count_B = 0;
count_C = 0;
count_D = 0;
count_F = 0;

% Ingreso de calificaciones
disp('Ingrese las calificaciones una por una. Ingrese un número negativo para finalizar.');
while true
    calificacion = input('Ingrese una calificación (0-100): ');
    
    % Verificar si se debe terminar el programa
    if calificacion < 0
        break;
    end
    
    % Clasificación de calificaciones con switch-case
    switch true
        case (calificacion >= 90 && calificacion <= 100)
            count_A = count_A + 1;
        case (calificacion >= 80 && calificacion < 90)
            count_B = count_B + 1;
        case (calificacion >= 70 && calificacion < 80)
            count_C = count_C + 1;
        case (calificacion >= 60 && calificacion < 70)
            count_D = count_D + 1;
        case (calificacion >= 0 && calificacion < 60)
            count_F = count_F + 1;
        otherwise
            disp('Calificación fuera de rango. Intente de nuevo.');
    end
end

% Mostrar resultados
disp('Resumen de calificaciones:');
disp(['A: ', num2str(count_A)]);
disp(['B: ', num2str(count_B)]);
disp(['C: ', num2str(count_C)]);
disp(['D: ', num2str(count_D)]);
disp(['F: ', num2str(count_F)]);