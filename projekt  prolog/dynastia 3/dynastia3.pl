%Atomy
karol_de_Valois.
filip_VI.
jan_II_Dobry.
karol_V_Mądry.
ludwik_I.
filip_II_Śmiały.
karol_VI_Szalony.
ludwik.
ludwik_II.
jan_bez_Trwogi.
karol_VII.
maria.
ludwik_III.
rene_I.
filip_III_dobry.
ludwik_XI.
karol.
jan.
jolanta.
jan_II.
karol_Zuchwały.
karol_VIII.
anna.
ludwik_XII.
karol_II.
mikołaj_I.
maria_II.
klaudia_Waleziuszka.
franciszek_I.
małgorzata.
henryk_II.
joanna_d_Albert.
franciszek_II.
karol_IX.
henryk_III.
malgorzata_Walezjuszka.
henryk_IV_de_Bourbon.

% Fakty

person(karol_de_Valois).
person(filip_VI).
person(jan_II_Dobry).
person(karol_V_Mądry).
person(ludwik_I).
person(filip_II_Śmiały).
person(karol_VI_Szalony).
person(ludwik).
person(ludwik_II).
person(jan_bez_Trwogi).
person(karol_VII).
person(maria).
person(ludwik_III).
person(rene_I).
person(filip_III_dobry).
person(ludwik_XI).
person(karol).
person(jan).
person(jolanta).
person(jan_II).
person(karol_Zuchwały).
person(karol_VIII).
person(anna).
person(ludwik_XII).
person(karol_II).
person(mikołaj_I).
person(maria_II).
person(klaudia_Waleziuszka).
person(franciszek_I).
person(małgorzata).
person(henryk_II).
person(joanna_d_Albert).
person(franciszek_II).
person(karol_IX).
person(henryk_III).
person(malgorzata_Walezjuszka).
person(henryk_IV_de_Bourbon).

male(karol_de_Valois).
male(filip_VI).
male(jan_II_Dobry).
male(karol_V_Mądry).
male(ludwik_I).
male(filip_II_Śmiały).
male(karol_VI_Szalony).
male(ludwik).
male(ludwik_II).
male(jan_bez_Trwogi).
male(karol_VII).
male(ludwik_III).
male(rene_I).
male(filip_III_dobry).
male(ludwik_XI).
male(karol).
male(jan).
male(henryk_IV_de_Bourbon).
male(jan_II).
male(karol_Zuchwały).
male(karol_VIII).
male(ludwik_XII).
male(karol_II).
male(mikołaj_I).
male(franciszek_I).
male(henryk_II).
male(franciszek_II).
male(karol_IX).
male(henryk_III).

female(maria).
female(malgorzata_Walezjuszka).
female(jolanta).
female(anna).
female(maria_II).
female(klaudia_Waleziuszka).
female(małgorzata).
female(joanna_d_Albert).

child(filip_VI, karol_de_Valois).
child(jan_II_Dobry, filip_VI).
child(karol_V_Mądry, jan_II_Dobry).
child(ludwik_I, jan_II_Dobry).
child(filip_II_Śmiały, jan_II_Dobry).
child(karol_VI_Szalony, karol_V_Mądry).
child(ludwik, karol_V_Mądry).
child(ludwik_II, ludwik_I).
child(jan_bez_Trwogi, filip_II_Śmiały).
child(karol_VII, karol_VI_Szalony).
child(maria, ludwik_II).
child(ludwik_III, ludwik_II).
child(rene_I, ludwik_II).
child(filip_III_dobry, jan_bez_Trwogi).
child(karol, ludwik).
child(jan, ludwik).
child(ludwik_XI, karol_VII).
child(karol_Zuchwały, filip_III_dobry).
child(maria_II, karol_Zuchwały).
child(karol_VIII, ludwik_XI).
child(ludwik_XII, karol).
child(klaudia_Waleziuszka, ludwik_XII).
child(klaudia_Waleziuszka, anna).
child(karol_II, jan).
child(franciszek_I, karol_II).
child(małgorzata, karol_II).
child(jolanta, rene_I).
child(jan_II, rene_I).
child(mikołaj_I, jan_II).
child(henryk_II, klaudia_Waleziuszka).
child(henryk_II, franciszek_I).
child(franciszek_II, henryk_II).
child(karol_IX, henryk_II).
child(henryk_III, henryk_II).
child(malgorzata_Walezjuszka, henryk_II).
child(joanna_d_Albert, małgorzata).
child(henryk_IV_de_Bourbon, joanna_d_Albert).

maried(karol_VIII, anna).
maried(anna, ludwik_XII).
maried(franciszek_I, klaudia_Waleziuszka).
maried(henryk_IV_de_Bourbon, malgorzata_Walezjuszka).

% Reguły

parent(Y,X) :- child(X,Y).
ancestor(X,Y) :- parent(X,Y); ( parent(X,Z), ancestor(Z,Y)).
descendand(X,Y) :- ancestor(Y,X).
brother(X,Y) :- male(Y), child(X, Parent), child(Y, Parent), X\=Y .
sister(X,Y) :- female(Y), child(X, Parent), child(Y, Parent), X\=Y .
grandfather(X,Z) :- male(Z), parent(Y,X), parent(Z,Y).
grandmother(X,Z) :- female(Z), parent(Y,X), parent(Z,Y).
grandchild(X,Y) :- grandfather(Y,X).
father(X, Y) :- male(Y), parent(X, Y).
mother(X, Y) :- female(Y), parent(X, Y).