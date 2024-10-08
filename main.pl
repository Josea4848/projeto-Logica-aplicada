/*
================= Integrantes ===================
 * Emanuel Thadeu Dos Santos Conrado Mat: 20220024070
 * João Paulo Alves Leal Borges Mat: 20230156289
 * José Alves de Oliveira Neto Mat: 20220023832
=================================================
*/

%módulo para sleep
:- use_module(library(unix)).

%usuarios
usuario('Emanuel', '123456').
usuario('Joao Paulo', '123456').
usuario('Jose Alves', '123456').

%limpa terminal
limpar_terminal :-
(   current_prolog_flag(unix, true) -> shell('clear')   
;   shell('cls')                                     
).


:- dynamic(logado/1).
logado(false).

%Mensagem para usuário que foi deslogado
deslogar :- retract(logado(true)),
assertz(logado(false)),
write("Deslogando..."), nl.

%Mensagem inicial para usuário logado
iniciar :- write("Bem vindo prologfy"), nl,
login.

%Encerra aplicação
fechar :- 
  write('Obrigado por usar prologfy'), nl,
  halt.

%Sistema de login de usuários
login :-
    write('Nome de usuário: '),
    read(Usuario),
    write('Senha: '),
    read(Senha),
    (   usuario(Usuario, Senha)
    ->  retract(logado(false)), assertz(logado(true)),
        write('Login bem-sucedido!'), nl,
        menu;
        write('Usuário ou senha incorretos.'), nl,
        login
    ).

%Menu principal para usuário
menu :-
    logado(true),
    limpar_terminal,
    write('=============== Menu Principal ==============='), nl,
    write('1. Menu de Recomendação'), nl,
    write('2. Sair'), nl,
    write('3. Fechar programa'), nl,
    write('4. Para avaliação'), nl,
    read(Op),
    limpar_terminal,
    (   Op = 1 -> hub_de_busca;
        Op = 2 -> deslogar;
        Op = 3 -> fechar;
        Op = 4 -> avaliacao;
        write('Opção inválida.'), nl, menu
    ).

avaliacao :-
    logado(true),
    limpar_terminal,
    write('=============== Avaliação ==============='), nl,
    write('Nos dê uma nota de 0 a 10'), nl,
    read(Op),
    limpar_terminal,
    (   Op < 4, Op > -1 -> write('Desculpa por não ter alcançado suas expectativa.'), nl; 
        Op < 7, Op > 3 -> write('Obrigado pela avaliação, iremos melhorar o sistema.'), nl;
        Op > 6, Op < 11 -> write('Estamos felizes por você ter gostado.'), nl;
        write('Opção inválida. Tente novamente'), nl, sleep(2), avaliacao
    ),
    write('Voltando para o menu...'), nl,
    sleep(3), 
    menu.

%Menu para exibir opções ao usuário
hub_de_busca :- write('| Para recomendações por musica: \t recomendacao_musica(Nome_da_Musica, Relacionada).\n'), nl,
write('| Para recomendações por gênero: \t recomendacao_genero(gênero_da_Musica, Relacionada).\n'), nl,
write('| Para recomendações por cantor: \t recomendacao_cantor(Cantor, musica).\n'),nl,
write('| Para exibir as músicas por álbum: \t exibe_album(Album, Musica).\n'),nl,
write('| Para exibir músicas por ano:      \t recomendacao_por_ano(Ano, Musica).\n'),nl.

    
%Gênero
genero('Blinding Lights', pop).
genero('Shape of You', pop).
genero('Smells Like Teen Spirit', rock).
genero('Bohemian Rhapsody', rock).
genero('Rolling in the Deep', soul).
genero('Lose Yourself', rap).
genero('Levitating', pop).
genero('Hotel California', rock).
genero('Billie Jean', pop).
genero('Blowin\' in the Wind', folk).
genero('Imagine', rock).
genero('Back in Black', rock).
genero('Humble', rap).
genero('Like a Rolling Stone', folk).
genero('Thinking Out Loud', pop).
genero('Shallow', pop).
genero('Purple Rain', rock).
genero('One Dance', afrobeat).
genero('Wonderwall', rock).
genero('Superstition', soul).
genero('Hey Jude', rock).
genero('Billie Jean', pop).
genero('Beat It', pop).
genero('Smooth Criminal', pop).
genero('Bohemian Rhapsody', rock).
genero('Don\'t Stop Me Now', rock).
genero('Good Times', disco).
genero('Uptown Funk', funk).
genero('Rolling in the Deep', pop).
genero('Someone Like You', pop).

%Ano da música
ano('Blinding Lights', 2019).
ano('Shape of You', 2017).
ano('Smells Like Teen Spirit', 1991).
ano('Bohemian Rhapsody', 1975).
ano('Lose Yourself', 2002).
ano('Levitating', 2020).
ano('Hotel California', 1976).
ano('Billie Jean', 1982).
ano('Blowin\' in the Wind', 1963).
ano('Imagine', 1971).
ano('Back in Black', 1980).
ano('Humble', 2017).
ano('Like a Rolling Stone', 1965).
ano('Thinking Out Loud', 2014).
ano('Shallow', 2018).
ano('Purple Rain', 1984).
ano('One Dance', 2016).
ano('Wonderwall', 1995).
ano('Superstition', 1972).
ano('Hey Jude', 1968).
ano('Billie Jean', 1982).
ano('Beat It', 1982).
ano('Smooth Criminal', 1987).
ano('Bohemian Rhapsody', 1975).
ano('Don\'t Stop Me Now', 1978).
ano('Good Times', 1979).
ano('Uptown Funk', 2014).
ano('Rolling in the Deep', 2010).
ano('Someone Like You', 2010).

%Álbum
album('After Hours', ['Blinding Lights']).
album('Divide', ['Shape of You']).
album('Nevermind', ['Smells Like Teen Spirit']).
album('A Night at the Opera', ['Bohemian Rhapsody', 'Don\'t Stop Me Now']).
album('21', ['Rolling in the Deep', 'Someone Like You']).
album('8 Mile Soundtrack', ['Lose Yourself']).
album('Future Nostalgia', ['Levitating']).
album('Hotel California', ['Hotel California']).
album('Thriller', ['Billie Jean', 'Beat It']).
album('The Freewheelin\' Bob Dylan', ['Blowin\' in the Wind']).
album('Imagine', ['Imagine']).
album('Back in Black', ['Back in Black']).
album('DAMN.', ['Humble']).
album('Highway 61 Revisited', ['Like a Rolling Stone']).
album('X', ['Thinking Out Loud']).
album('A Star is Born', ['Shallow']).
album('Purple Rain', ['Purple Rain']).
album('Views', ['One Dance']).
album('(What\'s the Story) Morning Glory?', ['Wonderwall']).
album('Talking Book', ['Superstition']).
album('Hey Jude', ['Hey Jude']).
album('Bad', ['Smooth Criminal']).
album('Risqué', ['Good Times']).
album('Uptown Special', ['Uptown Funk']).

% Definição dos cantores
cantor('The Weeknd', 'Blinding Lights').
cantor('Ed Sheeran', 'Shape of You').
cantor('Nirvana', 'Smells Like Teen Spirit').
cantor('Queen', 'Bohemian Rhapsody').
cantor('Adele', 'Rolling in the Deep').
cantor('Eminem', 'Lose Yourself').
cantor('Dua Lipa', 'Levitating').
cantor('Eagles', 'Hotel California').
cantor('Michael Jackson', 'Billie Jean').
cantor('Bob Dylan', 'Blowin\' in the Wind').
cantor('John Lennon', 'Imagine').
cantor('AC/DC', 'Back in Black').
cantor('Kendrick Lamar', 'Humble').
cantor('Bob Dylan', 'Like a Rolling Stone').
cantor('Ed Sheeran', 'Thinking Out Loud').
cantor('Lady Gaga', 'Shallow').
cantor('Prince', 'Purple Rain').
cantor('Drake', 'One Dance').
cantor('Oasis', 'Wonderwall').
cantor('Stevie Wonder', 'Superstition').
cantor('The Beatles', 'Hey Jude').
cantor('Michael Jackson', 'Beat It').
cantor('Michael Jackson', 'Smooth Criminal').
cantor('Queen', 'Don\'t Stop Me Now').
cantor('Chic', 'Good Times').
cantor('Bruno Mars', 'Uptown Funk').
cantor('Adele', 'Someone Like You').

%Regras

getMusic(Album, Musica) :- album(Album, Musica).

getCantor(Cantor, Musica) :- cantor(Cantor, Musica).

recomendacao_musica(Musica, Relacionada) :- genero(Musica, Genero), genero(Relacionada, Genero), Musica \= Relacionada,nl,
write('| SpotPai Recomendação: |').

recomendacao_cantor(Cantor, Musica) :- getCantor(Cantor, Musica), nl, 
write('| SpotPai Recomendação: |').

recomendacao_genero(Genero, Relacionada) :- genero(Relacionada, Genero),nl,
write('| SpotPai Recomendação: |').

recomendacao_por_ano(Ano, Musica) :- ano(Musica, Ano),nl,
write('| SpotPai Recomendação: |').

exibe_album(Album, Musica) :- getMusic(Album, Musica).
