% Atomy
kazimierz_II_Sprawiedliwy.
leszek_Biały.
bolesław_V_Wstydliwy.
konrad_I_Mazowiecki.
bolesław.
kazimierz_I.
siemowit_I.
leszek_Czarny.
siemomysł.
władysław_I_Łokietek.
kazimierz_II.
siemowit.
leszek.
przemysł.
kazimierz_III.
kazimierz_III_Wielki.
władysław_Garbaty.
bolesław_II.
władysław_Biały.
książęta_mazowieccy.

% Fakty

person(kazimierz_II_Sprawiedliwy).
person(leszek_Biały).
person(bolesław_V_Wstydliwy).
person(konrad_I_Mazowiecki).
person(bolesław).
person(kazimierz_I).
person(siemowit_I).
person(leszek_Czarny).
person(siemomysł).
person(władysław_I_Łokietek).
person(kazimierz_II).
person(siemowit).
person(leszek).
person(przemysł).
person(kazimierz_III).
person(kazimierz_III_Wielki).
person(władysław_Garbaty).
person(bolesław_II).
person(władysław_Biały).
person(książęta_mazowieccy).

child(leszek_Biały, kazimierz_II_Sprawiedliwy).
child(konrad_I_Mazowiecki, kazimierz_II_Sprawiedliwy).
child(bolesław_V_Wstydliwy, leszek_Biały).
child(bolesław, konrad_I_Mazowiecki).
child(kazimierz_I, konrad_I_Mazowiecki).
child(siemowit_I, konrad_I_Mazowiecki).
child(książęta_mazowieccy, siemowit_I).
child(leszek_Czarny, kazimierz_I).
child(siemomysł, kazimierz_I).
child(władysław_I_Łokietek, kazimierz_I).
child(kazimierz_II, kazimierz_I).
child(siemowit, kazimierz_I).
child(leszek, siemomysł).
child(przemysł, siemomysł).
child(kazimierz_III, siemomysł).
child(władysław_Biały,kazimierz_III).
child(kazimierz_III_Wielki, władysław_I_Łokietek).
child(władysław_Garbaty, siemowit).
child(bolesław_II, siemowit).

% Reguły

parent(X,Y) :- child(X,Y).
ancestor(X,Y) :- parent(X,Y); ( parent(X,Z), ancestor(Z,Y)).
descendand(X,Y) :- ancestor(Y,X).
brother(X,Y) :-     child(X, Parent), child(Y, Parent), X\=Y .
grandfather(Z,X) :- parent(X,Y), parent(Y,Z).
grandchild(Z,X) :- grandfather(Z,X).


