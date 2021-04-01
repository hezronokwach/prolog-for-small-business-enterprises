 

%'PROGRAM THAT ASSISTS A VEGETABLE KIOSK OWNER MANAGE SOME OF HER OPERATIONS'


%'vegetable types available'
veges(kales).
veges(cabbage).
veges(spinach).
veges(tomatoes).
veges(managu).
veges(onions).


%'vegetable,price'

amount(kales,80).
amount(cabbage,50).
amount(spinach,80).
amount(tomatoes,200).
amount(managu,60).
amount(onions,150).


%'vehetable,quantity in bags'
size(kales,2).
size(cabbage,3).
size(spinach,2).
size(tomatoes,3).
size(onions,5).
size(managu,6).

%'person,number,personCategory'
person( carol,  0701024798, kalessupplier).
person( karol,  0701024798, onionssupplier).
person( purray, 0721456789, cabbageSupplier).
person( kariz, 0717234956, managuSupplier).
person( faith, 0714738956, spinachSupplier).
person( sydney, 0720234956, tomatoesSupplier).
person( santa, 0714634856, debtor).
person( caston, 0722756490, debtor).

%'amount,,type of fee,name of person'
fee(1000,debt,santa).
fee(1000,debt,caston).
fee(1000,supply,managuSupplier).
fee(2000,supply,kalesSupplier).
fee(5000,supply,spinachSupplier).

%'amount of money,month'
sales(18000,'july').
sales(20000,'august').
sales(25000,'september').
sales(15000,'october').
sales(20000,'november').


%'function to query the vegetable available'
findVeges:-

write('which vegetable do you want to know?'),nl,
read(X),nl,
veges(X),nl,
write(X),
write(' is available').

%'function to query vegetable if does not exist'
findVeges:-

write('Sorry, that vegetable is not available'). 

%'function to query the vegetable price'
findPrice:-

write('Which vegetable price do you want to know?'),nl,
read(X),nl,
amount(X,Y),nl,
write('The price of '),write(X),
write(' is '),
write(Y).

%'function to query the vegetable stock available'
findQuantity:-

write('Which vegetable stock size do you want to know?'),nl,
read(X),nl,
size(X,Y),nl,
write('The stock available of'),
write(X),
write(' is '),
write(Y).

%addstock
add(Veges,X):- size(Veges,Y),N is Y+X,write(' New stock of '),write( Veges ),write(' is '),write( N ).

%subtractstock
subtract(Veges,X):- size(Veges,Y),N is Y-X,write(' New stock of '),write( Veges ),write(' is '),write( N ).


%'function to query the people available'
queryPerson:-
write('Enter a name of person: '), read(X), person(X, Y, Z),
write('The mobile number of '), write(X), write(' is '), write(Y), write(' and is a '), write(Z).

%'function to query the if  person does not exist'
queryPerson:-
write('Sorry, that person does not exist in the records'). 

%'function to query the amount of money available for people'
queryFees:-
write('Enter the name of person you want to look up: '), read(Z), fee(X, Y ,Z),
write('The '), write( Y ), write(' of '), write( Z ), write(' is '), write(X).

%'function to query person that does not have any balance'
queryFees:-
write('Sorry, that person does not have any pending amount'). 

%'function to query the sales made'
querySales:-

write('Enter the month: '), read(Y), sales(X, Y),
write('The sales of '), write(Y), write(' is '), write(X).

%'function to query the details of the vegetables'
queryAll:-
	write('Which vegetable details  do you want to know?'), nl ,read(X) ,veges(X),
    amount(X,Y), size(X, Z),
    write('The price of '),   
	write(X),
	write(' is '),
	write( Y ),
	write(' and the stock available is '),  
	write( Z ).
        