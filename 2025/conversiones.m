function conversiones
    metros = input("Ingrese cantidad de metros: ");
    disp("1. centímetros | 2. milímetros | 3. pulgadas | 4. pies | 5. yardas")
    unidad_conversion = input("Ingrese la unidad de conversión: ");
    
    switch unidad_conversion
        case 1
            resultado = metros_a_centimetros(metros);
        case 2
            resultado = metros_a_milimetros(metros);
        case 3
            resultado = metros_a_pulgadas(metros);
        case 4
            resultado = metros_a_pies(metros);
        case 5
            resultado = metros_a_yardas(metros);
        otherwise
            disp("La unidad de conversión ingresada no es válida.");
    end

    disp(resultado);
end