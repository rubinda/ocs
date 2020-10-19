% Inicializiraj spremenljivke za simbolicne funkcije
syms x y

% Definiraj neko funkcijo 
f = x^4 - 16*x^2 - 5*x + y^4 - 16*y^2 - 5*y;

% Odvajaj parcialni odvod 1. stopnje po 'x'
diff(f, x, 1);

% jacobian -> v dveh stopnjah za pridobitev matrike
%jacobian(jacobian(f));

% Vstavi vrednost 3 v funkcijo in ostane samo spremenljivka 'y'
simpleF = subs(f,x,3);
% Vstavi se vrednost v 'y' in ostane nam neka vrednost
subs(simpleF, 4);

% roots izracuna nicle - tukaj imamo kompleksne nicle (f ne seka X osi)
roots([3 4 29 4 2 9])

% Izrisi graf na intervalu -5 5
fmesh(f, [-5, 5]);
