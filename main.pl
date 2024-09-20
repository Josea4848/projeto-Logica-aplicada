% Fatos
gosta_de(maria, 'chocolate').
gosta_de(joao, morango).
gosta_de(ana, chocolate).

% Regras
gosta_de(X, X) :- X = chocolate.
gosta_de(X, Y) :- gosta_de(X, Y).

% Consultas
% Para perguntar se Maria gosta de algo:
% ?- gosta_de(maria, O).
