% FUNCIONES DE COMPARACIÓN EN PROLOG


% ----------- 1. COMPARAR ÁREA DE UN CÍRCULO -----------
area_de_circulo(R,A):- A is pi * R**2.

evaluar_area_circulo(R,Lim,Res):-
    area_de_circulo(R,A),
    ( A > Lim -> Res = 'Mayor';
      A =:= Lim -> Res = 'Igual';
      Res = 'Menor'
    ).

% ?- evaluar_area_circulo(10,12,R).
% R = 'Mayor'.


% ----------- 2. COMPARAR PERÍMETRO DE UN CUADRADO -----------
evaluar_perimetro_cuadrado(L,Lim,Res):-
    P is L*4,
    ( P > Lim -> Res='Mayor';
      P =:= Lim -> Res='Igual';
      Res='Menor'
    ).

% ?- evaluar_perimetro_cuadrado(5,20,R).
% R = 'Igual'.


% ----------- 3. CLASIFICAR NÚMERO (POS, NEG, CERO) -----------
clasificar_numero(N,Res):-
    ( N > 0 -> Res='Positivo';
      N =:= 0 -> Res='Cero';
      Res='Negativo'
    ).

% ?- clasificar_numero(-3,R).
% R = 'Negativo'.


% ----------- 4. COMPARAR RAÍZ CUADRADA CON UN LÍMITE -----------
comparar_raiz_valor(X,Lim,Res):-
    R is sqrt(X),
    ( R > Lim -> Res='Mayor';
      R =:= Lim -> Res='Igual';
      Res='Menor'
    ).

% ?- comparar_raiz_valor(81,9,R).
% R = 'Igual'.


% ----------- 5. ÁREA DE TRIÁNGULO Y COMPARAR -----------
area_triang(B,H,A):- A is (B*H)/2.

evaluar_area_triangulo(B,H,Res):-
    area_triang(B,H,A),
    ( A > 50 -> Res='Mayor';
      A =:= 50 -> Res='Igual';
      Res='Menor'
    ).

% ?- evaluar_area_triangulo(10,10,R).
% R = 'Igual'.


% ----------- 6. NÚMERO PAR O IMPAR -----------
par_o_impar(N,Res):-
    R is N mod 2,
    ( R =:= 0 -> Res='Par';
      Res='Impar'
    ).

% ?- par_o_impar(7,R).
% R = 'Impar'.


% ----------- 7. COMPARAR LOG NATURAL -----------
evaluar_log(X,L,Res):-
    V is log(X),
    ( V > L -> Res='Mayor';
      V =:= L -> Res='Igual';
      Res='Menor'
    ).

% ?- evaluar_log(10,2.3,R).
% R = 'Mayor'.


% ----------- 8. COMPARAR POTENCIA CON UN UMBRAL -----------
comparar_potencia_valor(B,E,Res):-
    P is B**E,
    ( P > 100 -> Res='Mayor';
      P =:= 100 -> Res='Igual';
      Res='Menor'
    ).

% ?- comparar_potencia_valor(3,4,R).
% R = 'Mayor'.
