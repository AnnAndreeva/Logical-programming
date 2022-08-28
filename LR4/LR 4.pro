/*****************************************************************************

		Copyright (c) My Company

 Project:  LR 4
 FileName: LR 4.PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/

include "lr 4.inc"

domains
set=integer* %(������)��������� ����� ���������
sum=integer %����� ��������� ���������

 
predicates
nondeterm pred(set,set,set). %�������� � ����������� - ����� �����������
nondeterm p(set,set,set,sum,sum).%�������� � ����������� - ����� ����������� � ������� ��������� ��������
 
clauses
pred(A,B,C):-p(A,B,C,Sum,Sum). %�������, ��� �������� ������ �� ���������, � ������� ����� �����
 
p([],[],[],0,0).
%������������ ������ � �� ������� � � �, ������������ ������ ����� ��������� � � �
p([H|Tail],[H|B],C,SumB1,SumC):-p(Tail,B,C,SumB,SumC),SumB1=SumB+H. %������������ �������� � ������ �
p([H|Tail],B,[H|C],SumB,SumC1):-p(Tail,B,C,SumB,SumC),SumC1=SumC+H. %������������ �������� � ������ �
 
goal
pred([1,2,3,4,5,6,7],B, C).