metros = input("Ingrese cantidad de metros: ");
disp("1. centímetros | 2. milímetros | 3. pulgadas | 4. pies | 5. yardas")
unidad_conversion = input("Ingrese la unidad de conversión: ");

switch unidad_conversion
    case 1
        resultado = metros * 100;
        disp(resultado);
    case 2
        resultado = metros * 1000;
        disp(resultado);
    case 3
        resultado = metros * 39.37;
        disp(resultado);
    case 4
        resultado = metros * 3.281;
        disp(resultado);
    case 5
        resultado = metros * 1.094;
        disp(resultado);
    otherwise
        disp("La unidad de conversión ingresada no es válida.");
end