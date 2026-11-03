% Task 1: (A AND B) OR ((NOT A) AND (NOT B))
and(true,  true,  true).
and(true,  false, false).
and(false, true,  false).
and(false, false, false).

or(true,  true,  true).
or(true,  false, true).
or(false, true,  true).
or(false, false, false).

not(true, false).
not(false, true).

expression(A, B, Result) :-
    and(A, B, Both),
    not(A, NotA),
    not(B, NotB),
    and(NotA, NotB, Neither),
    or(Both, Neither, Result).

% Example queries (each has one answer):
% ?- expression(true, true, R).     % R = true.
% ?- expression(true, false, R).    % R = false.
% ?- expression(false, true, R).    % R = false.
% ?- expression(false, false, R).   % R = true.

% Task 2: Sum a list using recursion.
sumlist([], 0).
sumlist([Head|Tail], Sum) :-
    sumlist(Tail, TailSum),
    Sum is Head + TailSum.

% ?- sumlist([1,2,5,7], S).         % S = 15.
% ?- sumlist([], S).                % S = 0.

% Task 3: Run total_average. and enter each number followed by a period.
total_average :-
    writeln('Enter the first number:'),
    read(A),
    writeln('Enter the second number:'),
    read(B),
    writeln('Enter the third number:'),
    read(C),
    Total is A + B + C,
    Average is Total / 3,
    format('Total = ~w~nAverage = ~w~n', [Total, Average]).
