/*****************************************************************************

		Copyright (c) My Company

 Project:  LR1_ANDREEVA_6313
 FileName: LR1_ANDREEVA_6313.PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/

include "lr1_andreeva_6313.inc"

domains
         list=integer*
 
predicates
         delete(integer,list,list).
         
clauses
       	 delete(1,[Head|Tail],Tail):- !.
 	 delete(X,[Head|Tail],[Head|Tail_1]):- X1 = X-1, delete(X1,Tail,Tail_1).

          
goal
         delete(3, [0, 1, 2, 3, 4, 5], Result), nl.
