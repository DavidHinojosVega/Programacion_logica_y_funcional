topologia(router,red1).
topologia(router,red2).
topologia(red1,switch).
topologia(red1,velocidad).
topologia(velocidad,1000).
topologia(red2,hub).
topologia(red2,velocidad2).
topologia(velocidad2,100).
topologia(switch,pc1).
topologia(switch,pc2).
topologia(switch,pc3).
topologia(switch,pc4).
topologia(hub,pc5).
topologia(hub,pc6).
topologia(hub,pc7).
topologia(hub,s1).



%Desarrolle los hechos en base a la imagen.
% 1-------Muestre las PCs de la topología de estrella (red1).-------
%?- topologia(switch,X).
%X = pc1 ;
%X = pc2 ;
%X = pc3 ;
%X = pc4.


% 2------Desarrolle una regla que determine si un dispositivo pertenece a una red.----
grupo(X,Y,Z):-topologia(X,Y),topologia(Z,X).

%?- grupo(X,pc1,Z).
%X = switch,
%Z = red1.


%?- grupo(X,pc5,Z).
%X = hub,
%Z = red2.

% 3--------¿Puede el S1 enviar ping a la pc2?-----------
ping(X,Y,Z):-topologia(W,X), topologia(Z,W), topologia(U,Y), topologia(E,U), E==Z.

%ping(pc5,s1,Z).
%Z = red2.

%ping(pc1,s1,Z).
%false.

%Invente una regla.   4---------------Obten el ancho de banda de cada red--------------
anchoDeBanda(X,Y):-topologia(X,Y).

%anchoDeBanda(velocidad,X).
%X = 1000.

%anchoDeBanda(velocidad2,X).
%X = 100.


% 5------------Invente una regla que utilice una expresión aritmética.---------------

kbs(X,Y):- topologia(X,W), Y is W * 1000.

%Invente una regla que utilice un comparador.

compara_velocidad(X,Y,Z):-topologia(X,E), topologia(Y,Q),
(
    E > Q -> Z = 'X tiene mayor ancho de banda';
    E =:= Q -> Z = 'Ambos tienen el mismo ancho de banda';
    Z = 'Y Tiene mayor ancho de banda'


).