jefe(mark,sheryl).
jefe(sheryl,david).
jefe(sheryl,timothy).
jefe(sheryl,mike).
jefe(sheryl,elliot).
jefe(sheryl,lori).
jefe(elliot,rebecca).
jefe(elliot,heather).

% ¿Quién es el jefe del Rebecca? Eliot

%jefe(X,rebecca).
%X = elliot.

% ¿Es jefe Mark del jefe de Rebecca?

%jefe(X,rebecca),jefe(Y,X),jefe(Z,Y).
%X = elliot,
%Y = sheryl,
%Z = mark

% ¿Es Lori jefe de alguien?

%jefe(lori,X).
%false.

% Mostrar empleados del jefe de Heather

%jefe(X,heather),jefe(X,Y).
%X = elliot,
%Y = rebecca ;


% ¿Es Timothy jefe de Rebecca?

%jefe(timothy,rebecca).
%false.

% Mostrar compañeros de nivel de Mike

%jefe(X,mike),jefe(X,Y).
%X = sheryl,
%Y = david ;
%X = sheryl,
%Y = timothy ;
%X = sheryl,
%Y = mike ;
%X = sheryl,
%Y = elliot ;
% = sheryl,
%Y = lori.

% ¿Es el jefe de Rebeca compañero de nivel de David?

%jefe(X,rebecca),jefe(Y,X),jefe(Y,Z).
%X = elliot,
%Y = sheryl,
%Z = david ;
%X = elliot,
%Y = sheryl,
%Z = timothy ;
%X = elliot,
%Y = sheryl,
%Z = mike ;
%X = Z, Z = elliot,
%Y = sheryl 

% Es compañero de nivel Mike de Lori?

%jefe(X,mike),jefe(X,Y).
%X = sheryl,
%Y = david ;
%X = sheryl,
%Y = timothy ;
%X = sheryl,
%Y = mike ;
%X = sheryl,
%Y = elliot ;
%X = sheryl,
% = lori.