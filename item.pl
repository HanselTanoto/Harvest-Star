/* Deklarasi fakta */
/* Jenis tanaman : wortel, kentang, gandum,padi, singkong, jagung */
tanaman(carrot).
tanaman(potato).
tanaman(wheat).
tanaman(paddy).
tanaman(cassava).
tanaman(corn).

seed(carrot).
seed(potato).
seed(wheat).
seed(paddy).
seed(cassava).
seed(corn).


ikan(goldfish).
ikan(catfish).
ikan(gurame).
ikan(tilapia).
ikan(parrotfish).


:- dynamic(equipment/3).

/*equipment(knive,ranching,1).*/

increase_level_of_equipment(X,Y) :-
    (equipment(X,Y,Z) ->
    Z1 is Z+1,
    retractall(equipment(X,Y,Z)),
    asserta(equipment(X,Y,Z1));
    asserta(equipment(X,Y,1))
    ).

displayEquipment :-
    forall(equipment(X,_,Z),writeEquipment(X,_,Z)).

writeEquipment(X,_,Z) :-
    write('Level '),
    write(Z),
    write(' '),
    write(X),
    nl,!.