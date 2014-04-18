% 1. Build a database containing books and authors
author('Aldous Huxley').
author('Emile Zola').
author('Mark Twain').

book('La Bete Humaine').
book('La Debacle').
book('Nana').

book('The Mysterious Stranger').
book('Tom Sawyer Abroad').

book('Brave New World').
book('Antic Hay').
book('Crome Yellow').

wrote('Aldous Huxley', 'Brave New World').
wrote('Aldous Huxley', 'Antic Hay').
wrote('Aldous Huxley', 'Crome Yellow').

wrote('Mark Twain', 'The Mysterious Stranger').
wrote('Mark Twain', 'Tom Sawyer Abroad').

wrote('Emile Zola', 'La Bete Humaine').
wrote('Emile Zola', 'La Debacle').
wrote('Emile Zola', 'Nana').

% 2. Find out what books where written by a specific author
% wrote('Aldous Huxley', Book).

