%% u(x,y) = x^2 + xy - 10 = 0
%% v(x,y) = y + 3xy^2 - 57 = 0
fprintf("****Iteracion 1\n")
x = 1.5
y = 3.5

%% Derivadas parciales
%% Derivada de u con respecto a x
%u(x,y) = x^2 + xy - 10
du_dx = 2*x + y

%% Derivada de u con respecto a y
%u(x,y) = x^2 + xy - 10
du_dy = x

%% Derivada de v con respecto a x
%% v(x,y) = y + 3xy^2 - 57 = 0
dv_dx = 3*y^2

%% Derivada de v con respecto a y
%% v(x,y) = y + 3xy^2 - 57 = 0
dv_dy = 1 + 6*x*y

%% Encontrar el determinante jacobiano (denominador de la fórmula)
det_jacobiano = du_dx * dv_dy - du_dy * dv_dx

%% Evaluar las funciones con las aproximaciones actuales
u = x^2 + x*y - 10
v = y + 3*x*y^2 - 57

%% Calcular las nuevas aproximaciones de la raíz para x y y
x = x - ((u * dv_dy - v * du_dy) / det_jacobiano)
y = y - ((v * du_dx - u * dv_dx) / det_jacobiano)


fprintf("****Iteracion 2\n")

%% Derivadas parciales
%% Derivada de u con respecto a x
%u(x,y) = x^2 + xy - 10
du_dx = 2*x + y

%% Derivada de u con respecto a y
%u(x,y) = x^2 + xy - 10
du_dy = x

%% Derivada de v con respecto a x
%% v(x,y) = y + 3xy^2 - 57 = 0
dv_dx = 3*y^2

%% Derivada de v con respecto a y
%% v(x,y) = y + 3xy^2 - 57 = 0
dv_dy = 1 + 6*x*y

%% Encontrar el determinante jacobiano (denominador de la fórmula)
det_jacobiano = du_dx * dv_dy - du_dy * dv_dx

%% Evaluar las funciones con las aproximaciones actuales
u = x^2 + x*y - 10
v = y + 3*x*y^2 - 57

%% Calcular las nuevas aproximaciones de la raíz para x y y
x = x - ((u * dv_dy - v * du_dy) / det_jacobiano)
y = y - ((v * du_dx - u * dv_dx) / det_jacobiano)

fprintf("****Iteracion 3\n")

%% Derivadas parciales
%% Derivada de u con respecto a x
%u(x,y) = x^2 + xy - 10
du_dx = 2*x + y

%% Derivada de u con respecto a y
%u(x,y) = x^2 + xy - 10
du_dy = x

%% Derivada de v con respecto a x
%% v(x,y) = y + 3xy^2 - 57 = 0
dv_dx = 3*y^2

%% Derivada de v con respecto a y
%% v(x,y) = y + 3xy^2 - 57 = 0
dv_dy = 1 + 6*x*y

%% Encontrar el determinante jacobiano (denominador de la fórmula)
det_jacobiano = du_dx * dv_dy - du_dy * dv_dx

%% Evaluar las funciones con las aproximaciones actuales
u = x^2 + x*y - 10
v = y + 3*x*y^2 - 57

%% Calcular las nuevas aproximaciones de la raíz para x y y
x = x - ((u * dv_dy - v * du_dy) / det_jacobiano)
y = y - ((v * du_dx - u * dv_dx) / det_jacobiano)


fprintf("****Iteracion 4\n")

%% Derivadas parciales
%% Derivada de u con respecto a x
%u(x,y) = x^2 + xy - 10
du_dx = 2*x + y

%% Derivada de u con respecto a y
%u(x,y) = x^2 + xy - 10
du_dy = x

%% Derivada de v con respecto a x
%% v(x,y) = y + 3xy^2 - 57 = 0
dv_dx = 3*y^2

%% Derivada de v con respecto a y
%% v(x,y) = y + 3xy^2 - 57 = 0
dv_dy = 1 + 6*x*y

%% Encontrar el determinante jacobiano (denominador de la fórmula)
det_jacobiano = du_dx * dv_dy - du_dy * dv_dx

%% Evaluar las funciones con las aproximaciones actuales
u = x^2 + x*y - 10
v = y + 3*x*y^2 - 57

%% Calcular las nuevas aproximaciones de la raíz para x y y
x = x - ((u * dv_dy - v * du_dy) / det_jacobiano)
y = y - ((v * du_dx - u * dv_dx) / det_jacobiano)
