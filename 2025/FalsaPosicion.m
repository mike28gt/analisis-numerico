function x_r = FalsaPosicion(x_l, x_u, e_s, maximo_iteraciones)
	no_iteracion = 0;
	x_r = 0;
	e_a = 100;
	
    f_l = f(x_l);
    f_u = f(x_u);

	while true
		x_r_anterior = x_r;
		x_r = x_u - ((f_u * (x_l - x_u))/(f_l - f_u));
        f_r = f(x_r);
		no_iteracion = no_iteracion + 1;

		if x_r ~= 0
			e_a = abs((x_r - x_r_anterior) / x_r) * 100;
        end

        test = f_l * f_r;

		if test < 0
			x_u = x_r;
            f_u = f_r;
        elseif test > 0
			x_l = x_r;
            f_l = f_r;
        else
			e_a = 0;
        end

		if e_a <= e_s || no_iteracion >= maximo_iteraciones
			break;
        end
    end
    disp(no_iteracion);
end


function f_c = f(c)
    g = 9.81;
    m = 68.1;
    t = 10;
    v = 40;

    f_c = ((g*m)/c)*(1-exp(-(c/m)*t))-v;
end