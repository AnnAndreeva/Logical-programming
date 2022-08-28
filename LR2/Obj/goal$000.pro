/*****************************************************************************

		Copyright (c) My Company

 Project:  LR_2_ANDREEVA_6313
 FileName: LR_2_ANDREEVA_6313.PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/

include "lr_2_andreeva_6313.inc"

domains
watcher = w(name, cinema, genre, dist)
watchers = watcher*
name, cinema, genre = string
dist = integer

predicates
nondeterm name(name)
nondeterm cinema(cinema)
nondeterm genre(genre)
nondeterm dist(dist)
nondeterm add_list(watcher, watchers)
nondeterm result(watchers)

clauses
name("Bob").
name("Jack").
name("Ronald").

cinema("Zvezda").
cinema("Samara").
cinema("Ogonek").

genre("Action").
genre("Comedy").
genre("Triller").

dist(1).
dist(2).
dist(3).

add_list(H, [H|_]) :-!.
add_list(H, [_|T]) :- add_list(H, T).

result(Watchers):- Watchers = [w(Xn, Xc, Xg, Xd), w(Yn, Yc, Yg, Yd), w(Zn, Zc, Zg, Zd)],
name(Xn), name(Yn), name(Zn), Xn <> Yn, Xn <> Zn, Yn <> Zn,
cinema(Xc), cinema(Yc), cinema(Zc), Xc <> Yc, Xc <> Zc, Yc <> Zc,
genre(Xg), genre(Yg), genre(Zg), Xg <> Yg, Xg <> Zg, Yg <> Zg,
dist(Xd), dist(Yd), dist(Zd), Xd <> Yd, Xd <> Zd, Yd <> Zd,

add_list(w("Jack", _, "Comedy", Jd), Watchers),
add_list(w(_, "Zvezda", _, Zd), Watchers), Jd < Zd,
add_list(w(_, _, "Triller", Td), Watchers),
add_list(w("Bob", "Samara", _, Bd), Watchers), Bd < Td,
add_list(w(_, _, "Action", 1), Watchers),
add_list(w(_, "Ogonek", _, _), Watchers),!.

goal
result(Watchers).
