%contador = 1;

%m = input("Ingrese la tabla de multiplicación que desea generar: ");
%n = input("¿Hasta que número desea generar la tabla de multiplicación? ");

%while contador <= n
%    resultado = contador * m;
    
%    fprintf("%d * %d = %d\n",contador, m, resultado);

%    contador = contador + 1;
%end


m = input("Ingrese la tabla de multiplicación que desea generar: ");
n = input("¿Hasta que número desea generar la tabla de multiplicación? ");

for contador = 1:1:n
    resultado = contador * m;
    
    fprintf("%d * %d = %d\n",contador, m, resultado);
end