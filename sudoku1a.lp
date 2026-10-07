% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

1 { sudoku(X,Y,N) : N=1..4 } 1 :- X=1..4, Y=1..4.
sudoku(X,Y,N) :- initial(X,Y,N).

:- sudoku(X,Y,N), sudoku(X,Y2,N), Y != Y2.
:- sudoku(X,Y,N), sudoku(X2,Y,N), X != X2.

#show sudoku/3.
