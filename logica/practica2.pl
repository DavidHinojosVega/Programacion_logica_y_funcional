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
desendiente(hominoidea, hylobatidae).
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







%1- Es el gorila descendiente de hominini?

%desendiente(hominini,gorilla).
%false.

%2- ¿Es el Homo hermano del gorila?

%?- desendiente(X,homo),desendiente(Y,gorilla).
%X = hominini,
%Y = gorilini.

%3- ¿Son el Homo y el Gorilla de la misma subfamilia?
%subfamilia(X,Y):- desendiente(A,X),desendiente(B,A),desendiente(C,Y),desendietne(D,C), categoria(Z,D),categoria(H,B)



%4- ¿Tiene Hominini la misma familia que Pongo?

%5- ¿Quiénes son los descendientes directos de una tribu?

%6- ¿Cuál es la superfamilia a la que pertenece Hylobates?

%7- ¿Qué géneros comparten la misma subfamilia con Pan?

%8- ¿Cuál es el ancestro común más cercano entre Homo y Gorilla?

%9- ¿Es el orangután un homínido?

%10- ¿Cuáles son todas las especies que pertenecen a la familia Hominidae?

%11- ¿Qué géneros son hermanos taxonómicos de Homo?

%12 -¿Comparten Homo y Hylobates la misma familia?

%13- ¿Cuáles son los descendientes directos de la subfamilia Homininae?

%14- ¿Qué géneros están bajo la familia Hominidae?

%15- ¿Cuál es la ruta taxonómica completa desde Homo hasta la superfamilia?