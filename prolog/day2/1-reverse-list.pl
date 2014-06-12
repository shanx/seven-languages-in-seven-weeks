% This is reverse list using an accumulator var and providing a two var api
rl_acc([X|Y],Z,W) :- rl_acc(Y,[X|Z],W).
rl_acc([],X,X).
rl_acc(X, Y) :- rl_acc(X, [], Y).

% This reverse list doesn't use an accumulator variable but instead uses append
rl_app([], []).
rl_app([X], [X]).
rl_app([X|R], Y) :- rl_app(R, Result), append(Result, [X], Y).


