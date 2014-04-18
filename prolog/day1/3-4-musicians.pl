% 3. Make a knowledge base representing musicians and their instruments
%    Also represent musicians and their genre of music

% This is the verbose way of defining the data
musician(lennart).
musician(bas).
musician(remco).
musician(judith).

instrument(guitar).
instrument(ableton).

plays_instrument(lennart, guitar).
plays_instrument(lennart, ableton).
plays_instrument(bas, guitar).
plays_instrument(remco, ableton).
plays_instrument(judith, ableton).

genre(rock).
genre(metal).
genre(ambient).
genre(house).

plays_genre(lennart, rock).
plays_genre(lennart, ambient).
plays_genre(bas, metal).
plays_genre(remco, ambient).
plays_genre(judith, house).

% 4. Find all musicians that play the guitar
% plays_instrument(Name, guitar).

% This is the simple way
% Format: ([name], [instrument], [genre])
musician2(bas, guitar, rock).
musician2(bas, ableton, ambient).
musician2(lennart, guitar, metal).
musician2(remco, ableton, house).
musician2(judith, ableton, house).

% 4. Find all musicians that play the guitar
% musician2(Name, guitar, Genre).

