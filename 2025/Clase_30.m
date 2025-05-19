m =	68.1;
v =	40;
t =	10;
g = 9.81;
c = 1:1:20;

f_c = ((g.*m)./c).*(1-exp(-(c/m)*t))-v;

plot(c, f_c);

title('Gráfica de coeficiente de resistencia');
xlabel('c');
ylabel('f(c)');
grid on;

