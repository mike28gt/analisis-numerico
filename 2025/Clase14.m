x = input("Ingrese un valor para x: ");

if x < pi
    g = sin(x);
    disp(g);
elseif x >= pi && x <= 10
    g = log10(x);
    disp(g);
elseif x > 10
    g = x^3 - 5*x;
    disp(g);
end
