% ==========================================
% BASE DE HECHOS
% ==========================================

desendiente(hominoidea, hominidea).
desendiente(hominoidea, hylobatidae).
desendiente(hominidea, homininae).
desendiente(hominidea, poginae).
desendiente(poginae,pongo).
desendiente(pongo, orangutan).
desendiente(homininae,gorilini).
desendiente(homininae,hominini).
desendiente(gorilini,gorilla).
desendiente(hominini, pan).
desendiente(pan,bonobo).
desendiente(pan,chinpanzee).
desendiente(hominini,homo).
desendiente(homo,human).
desendiente(hylobatidae,hylobates).
desendiente(hylobates,gibbon).

categoria(superfamily,hominoidea).
categoria(family,hominidea).
categoria(family,hylobatidae).
categoria(subfamily,homininae).
categoria(subfamily,poginae).
categoria(tribe,hominini).
categoria(tribe,gorilini).
categoria(genus,homo).
categoria(genus,pan).
categoria(genus,gorilla).
categoria(genus,pongo).
categoria(genus,hylobates).


% ==========================================
% 1- Es el gorila descendiente de hominini?
% ==========================================

% desendiente(hominini,gorilla).
% false.


% ==========================================
% 2- ¿Es el Homo hermano del gorila?
% ==========================================

% ?- desendiente(X,homo),desendiente(Y,gorilla).
% X = hominini,
% Y = gorilini.


% ==========================================
% 3- ¿Son el Homo y el Gorilla de la misma subfamilia?
% ==========================================

misma_subfamilia(X,Y):-desendiente(A,X),desendiente(B,A),categoria(subfamily,B),desendiente(C,Y),desendiente(D,C),categoria(subfamily,D),B=D.

% ?- misma_subfamilia(homo,gorilla).
% true.


% ==========================================
% 4- ¿Tiene Hominini la misma familia que Pongo?
% ==========================================

misma_familia(X,Y):-desendiente(A,X),categoria(family,A),desendiente(B,Y),categoria(family,B),A=B.

% ?- misma_familia(hominini,pongo).
% true.


% ==========================================
% 5- ¿Quiénes son los descendientes directos de una tribu?
% ==========================================

% ?- desendiente(hominini,X).
% X = pan ;
% X = homo.


% ==========================================
% 6- ¿Cuál es la superfamilia a la que pertenece Hylobates?
% ==========================================

superfamilia(X,SF):-desendiente(SF,X),categoria(superfamily,SF).

% ?- superfamilia(hylobates,SF).
% SF = hominoidea.


% ==========================================
% 7- ¿Qué géneros comparten la misma subfamilia con Pan?
% ==========================================

mismos_generos_subfamilia_pan(G):-categoria(genus,G),desendiente(S,G),desendiente(S,pan),categoria(subfamily,S),G\=pan.

% ?- mismos_generos_subfamilia_pan(G).
% G = gorilla ;
% G = homo.


% ==========================================
% 8- ¿Cuál es el ancestro común más cercano entre Homo y Gorilla?
% ==========================================

ancestro_comun(X,Y,A):-desendiente(A,X),desendiente(A,Y).

% ?- ancestro_comun(homo,gorilla,A).
% A = homininae ;
% A = hominoidea.


% ==========================================
% 9- ¿Es el orangután un homínido?
% ==========================================

es_hominido(X):-desendiente(F,X),categoria(family,F).

% ?- es_hominido(orangutan).
% true.


% ==========================================
% 10- ¿Qué especies pertenecen a la familia Hominidae?
% ==========================================

% En tu base Hominidae = hominidea

% ?- desendiente(hominidea,X),desendiente(X,Y),desendiente(Y,Z).
% X = homininae, Y = hominini, Z = pan ;
% X = homininae, Y = hominini, Z = homo ;
% X = homininae, Y = gorilini, Z = gorilla ;
% X = poginae, Y = pongo, Z = orangutan.


% ==========================================
% 11- ¿Qué géneros son hermanos taxonómicos de Homo?
% ==========================================

hermanos_homo(G):-categoria(genus,G),desendiente(S,G),desendiente(S,homo),G\=homo.

% ?- hermanos_homo(G).
% G = pan.


% ==========================================
% 12- ¿Comparten Homo y Hylobates la misma familia?
% ==========================================

misma_familia2(X,Y):-desendiente(A,X),categoria(family,A),desendiente(B,Y),categoria(family,B),A=B.

% ?- misma_familia2(homo,hylobates).
% false.


% ==========================================
% 13- ¿Cuáles son los descendientes directos de la subfamilia Homininae?
% ==========================================

% ?- desendiente(homininae,X).
% X = gorilini ;
% X = hominini.


% ==========================================
% 14- ¿Qué géneros están bajo la familia Hominidae?
% ==========================================

% hominidae = hominidea en tu base

% ?- desendiente(hominidea,X),categoria(genus,X).
% X = homo ;
% X = pan ;
% X = gorilla.


% ==========================================
% 15- ¿Cuál es la ruta taxonómica completa desde Homo hasta la superfamilia?
% ==========================================

ruta_homo([X,A,B,C]):-desendiente(A,X),desendiente(B,A),desendiente(C,B),categoria(superfamily,C).

% ?- ruta_homo(R).
% R = [homo, hominini, homininae, hominoidea].
