
% OPERACIONES ARITMÉTICAS EN PROLOG 


% SUMA
oper_suma(A,B,R):- R is A + B.
% ?- oper_suma(7,3,R).
% R = 10.

% RESTA
calc_resta(A,B,R):- R is A - B.
% ?- calc_resta(10,4,R).
% R = 6.

% MULTIPLICACIÓN
mult_val(A,B,R):- R is A * B.
% ?- mult_val(6,5,R).
% R = 30.

% DIVISIÓN REAL
division_real(A,B,R):- R is A / B.
% ?- division_real(9,3,R).
% R = 3.0.

% DIVISIÓN ENTERA
division_ent(A,B,R):- R is A div B.
% ?- division_ent(11,2,R).
% R = 5.

% RESTO (MOD)
residuo_mod(A,B,R):- R is A mod B.
% ?- residuo_mod(11,4,R).
% R = 3.

% POTENCIA
potencia(A,B,R):- R is A ** B.
% ?- potencia(3,3,R).
% R = 27.

% NEGACIÓN
neg_val(A,R):- R is -A.
% ?- neg_val(8,R).
% R = -8.

% VALOR ABSOLUTO
valor_abs(A,R):- R is abs(A).
% ?- valor_abs(-9,R).
% R = 9.

% ARCO COSENO
arc_cos(A,R):- R is acos(A).
% ?- arc_cos(0.4,R).
% R ≈ 1.159279.

% ARCO SENO
arc_sin(A,R):- R is asin(A).
% ?- arc_sin(0.4,R).
% R ≈ 0.411516.

% ARCO TANGENTE
arc_tan(A,R):- R is atan(A).
% ?- arc_tan(0.4,R).
% R ≈ 0.380506.

% COSENO
cos_val(A,R):- R is cos(A).
% ?- cos_val(1,R).
% R ≈ 0.540302.

% EXPONENCIAL
exp_val(A,R):- R is exp(A).
% ?- exp_val(2,R).
% R ≈ 7.389056.

% LOG NATURAL (NEPERIANO)
log_nat(A,R):- R is log(A).
% ?- log_nat(10,R).
% R ≈ 2.302585.

% LOG BASE 2
log_base2(A,R):- R is log(A)/log(2).
% ?- log_base2(10,R).
% R ≈ 3.321928.

% SENO
sin_val(A,R):- R is sin(A).
% ?- sin_val(1,R).
% R ≈ 0.841470.

% RAÍZ CUADRADA
raiz_cuad(A,R):- R is sqrt(A).
% ?- raiz_cuad(81,R).
% R = 9.

% TANGENTE
tan_val(A,R):- R is tan(A).
% ?- tan_val(1,R).
% R ≈ 1.557407.

% REDONDEO A N DECIMALES
redondear(A,N,R):- F is 10**N, R is round(A*F)/F.
% ?- redondear(3.141592,3,R).
% R = 3.142.


% COMPARACIONES ARITMÉTICAS


% MENOR QUE
es_menor(A,B):- A < B.
% ?- es_menor(3,8).
% true.

% MAYOR QUE
es_mayor(A,B):- A > B.
% ?- es_mayor(3,8).
% false.

% MENOR O IGUAL
menor_igual(A,B):- A =< B.
% ?- menor_igual(5,5).
% true.

% MAYOR O IGUAL
mayor_igual(A,B):- A >= B.
% ?- mayor_igual(3,6).
% false.

% IGUALDAD ARITMÉTICA
igual_arit(A,B):- A =:= B.
% ?- igual_arit(5,5).
% true.

% DISTINTO ARITMÉTICO
distinto_arit(A,B):- A =\= B.
% ?- distinto_arit(5,8).
% true.



% COMPARACIONES SINTÁCTICAS 


% EXPRESIÓN IGUAL
exp_igual(X,Y):- X == Y.
% ?- exp_igual(juan,juan).
% true.

% EXPRESIÓN DISTINTA
exp_distinta(X,Y):- X \== Y.
% ?- exp_distinta(juan,pedro).
% true.

% MENOR EN ORDEN DE TÉRMINOS
term_menor(X,Y):- X @< Y.
% ?- term_menor(2,3).
% true.

% MAYOR EN ORDEN DE TÉRMINOS
term_mayor(X,Y):- X @> Y.
% ?- term_mayor(2,3).
% false.

% MENOR O IGUAL EN ORDEN DE TÉRMINOS
term_menor_igual(X,Y):- X @=< Y.
% ?- term_menor_igual(2,2).
% true.

% MAYOR O IGUAL EN ORDEN DE TÉRMINOS
term_mayor_igual(X,Y):- X @>= Y.
% ?- term_mayor_igual(3,2).
% true.
