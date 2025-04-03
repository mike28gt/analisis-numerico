total = 0;
respuesta = "si";

while respuesta == "si"
    precio = input("Ingrese precio del artículo: ");
    total = total + precio;
    respuesta = input("¿Desea ingresar más artículos? (si/no) ", "s");
end

disp(total);