%musica
%Cantor
%Gênero
%Álbum

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
ano('Rolling in the Deep', 2010).
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

recomendacao_genero(Genero, Relacionada) :- genero(Relacionada, Genero),nl,
write('| SpotPai Recomendação: |').