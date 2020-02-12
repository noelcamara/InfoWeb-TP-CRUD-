DELETE FROM Matchs;
DELETE FROM Joueur;
DELETE FROM Equipe;

-- Pour nb_points: 2 points par victoire et 1 point par défaite
INSERT INTO Equipe(nom_equipe, nb_victoire, nb_defaite, nb_points) VALUES
    ('Espagne', 8, 0, 16),
    ('Argentine', 7, 1, 15),
    ('France', 6, 2, 14),
    ('Australie', 6, 2, 14),
    ('Serbie', 6, 2, 14),
    ('République Tchèque', 4, 4, 12),
    ('USA', 7, 2, 16),
    ('Pologne', 5, 3, 13),
    ('Lituanie', 3, 2, 8),
    ('Italie', 3, 2, 8),
    ('Grèce', 3, 2, 8),
    ('Russie', 3, 2, 8),
    ('Brésil', 3, 2, 8),
    ('Venezuela', 2, 3, 7),
    ('Porto Rico', 2, 3, 7),
    ('République Dominicaine', 2, 3, 7),
    ('Nigeria', 3, 2, 8),
    ('Allemagne', 3, 2, 8),
    ('Nouvelle-Zélande', 4, 1, 9),
    ('Tunisie', 3, 2, 8),
    ('Canada', 2, 3, 7),
    ('Turquie', 2, 3, 7),
    ('Iran', 2, 3, 7),
    ('Chine', 2, 3, 7),
    ('Monténégro', 1, 4, 6),
    ('Corée', 1, 4, 6),
    ('Angola', 1, 4, 6),
    ('Jordanie', 1, 4, 6),
    ('Côte d''Ivoire', 0, 5, 5),
    ('Sénégal', 0, 5, 5),
    ('Japon', 0, 5, 5),
    ('Philipines', 0, 5, 5);

INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES
    -- Espagne
    ('Ricky', 'Rubio', 'Meneur', 'Non', 1),
    ('Sergio', 'Llull', 'Arrière', 'Non', 1),
    ('Marc', 'Gasol', 'Pivot', 'Oui', 1),
    ('Willy', 'Hernangomez', 'Pivot', 'Non', 1),
    ('Juan', 'Hernangomez', 'Ailier fort', 'Non', 1),
    ('Rudy', 'Fernandez', 'Ailier', 'Non', 1),
    ('Pierre', 'Oriola', 'Ailier fort', 'Non', 1),
    ('Pau', 'Ribas', 'Arrière', 'Non', 1),
    ('Victor', 'Claver', 'Ailier fort', 'Non', 1),
    ('Xavi', 'Rabaseda', 'Ailier', 'Non', 1),
    ('Quino', 'Colom', 'Meneur', 'Non', 1),
    ('Javier', 'Beiran', 'Ailier', 'Non', 1),

    -- Argentine
    ('Gabriel', 'Deck', 'Ailier fort', 'Non', 2),
    ('Nicolás', 'Laprovittola', 'Meneur', 'Non', 2),
    ('Facundo', 'Campazzo', 'Meneur', 'Non', 2),
    ('Luis', 'Scola', 'Ailier fort', 'Non', 2),
    ('Nicolas', 'Brussino', 'Ailier', 'Non', 2),
    ('Lucio', 'Redivo', 'Arrière', 'Non', 2),
    ('Luca', 'Vildoza', 'Meneur', 'Non', 2),
    ('Marcos', 'Delia', 'Pivot', 'Non', 2),
    ('Maximo', 'Fjellerup','Arrière', 'Non', 2),
    ('Agustin', 'Caffaro', 'Pivot', 'Oui', 2),
    ('Patricio', 'Garino', 'Ailier', 'Non', 2),
    ('Tayavek', 'Gallizzi', 'Ailier fort', 'Non', 2),

    -- France
    ('Nando', 'De Colo', 'Meneur', 'Non', 3),
    ('Evan', 'Fournier', 'Arrière', 'Non', 3),
    ('Andrew', 'Albicy', 'Meneur', 'Non', 3),
    ('Nicolas', 'Batum', 'Ailier', 'Oui', 3),
    ('Vincent', 'Poirier', 'Pivot', 'Non', 3),
    ('Louis', 'Labeyrie', 'Ailier fort', 'Non', 3),
    ('Frank', 'Ntilikina', 'Meneur', 'Non', 3),
    ('Rudy', 'Gobert', 'Pivot', 'Non', 3),
    ('Axel', 'Toupane', 'Ailier', 'Non', 3),
    ('Amath', 'Mbaye', 'Ailier fort', 'Non', 3),
    ('Mathias', 'Lessort', 'Pivot', 'Non', 3),
    ('Paul', 'Lacombe', 'Arrière', 'Non', 3),

    -- Australie
    ('Joe', 'Ingles', 'Ailier', 'Non', 4),
    ('Patty', 'Mills', 'Meneur', 'Non', 4),
    ('Nick', 'Kay', 'Ailier fort', 'Non', 4),
    ('Aron', 'Baynes', 'Pivot', 'Non', 4),
    ('Andrew', 'Bogut', 'Pivot', 'Non', 4),
    ('Jock', 'Landale', 'Meneur', 'Non', 4),
    ('Matthew', 'Dellavedova', 'Arrière', 'Non', 4),
    ('Chris', 'Goulding', 'Ailier fort', 'Non', 4),
    ('Mitch', 'Creek', 'Ailier', 'Non', 4),
    ('Nathan', 'Sobey', 'Meneur', 'Oui', 4),
    ('Cameron', 'Gliddon', 'Ailier fort', 'Non', 4),
    ('David', 'Barlow', 'Ailier', 'Non', 4),

    -- Serbie
    ('Vasilije', 'Micic', 'Meneur', 'Non', 5),
    ('Vladimir', 'Lucic','Ailier', 'Non', 5),
    ('Marco', 'Simonovic', 'Ailier', 'Non', 5),
    ('Stefan', 'Bircevic', 'Ailier fort', 'Non', 5),
    ('Bogdan', 'Bogdanovic', 'Arrière', 'Non', 5),
    ('Nicola', 'Milutinov', 'Ailier fort', 'Non', 5),
    ('Stefan', 'Jovic', 'Meneur', 'Oui', 5),
    ('Miroslav', 'Raduljica', 'Pivot', 'Non', 5),
    ('Nikola', 'Jokic', 'Ailier fort', 'Non', 5),
    ('Boban', 'Marjanovic', 'Pivot', 'Non', 5),
    ('Marco', 'Guduric', 'Arrière', 'Non', 5),
    ('Nemanja', 'Bjelica', 'Ailier', 'Non', 5),

    -- République Tchèque
    ('Patrick', 'Auda', 'Pivot', 'Non', 6),
    ('Martin', 'Peterka', 'Pivot', 'Non', 6),
    ('Thomas', 'Satoransky', 'Meneur', 'Non', 6),
    ('Ondray', 'Balvin', 'Pivot', 'Non', 6),
    ('Vortech', 'Hruban', 'Ailier', 'Non', 6),
    ('Jaromir', 'Bohacik', 'Ailier', 'Non', 6),
    ('Pavel', 'Pumprla', 'Ailier', 'Non', 6),
    ('Lukas', 'Palyza', 'Ailier', 'Non', 6),
    ('Jacub', 'Sirina', 'Meneur', 'Non', 6),
    ('Martin', 'Kriz', 'Pivot', 'Non', 6),
    ('Thomas', 'Vyoral', 'Meneur', 'Oui', 6),
    ('Blake', 'Schlib', 'Ailier', 'Non', 6),

    -- USA
    ('Donovan', 'Mitchell', 'Meneur', 'Oui', 7),
    ('Joe', 'Harris', 'Arrière', 'Non', 7),
    ('Khris', 'Middleton', 'Ailier fort', 'Non', 7),
    ('Derrick', 'White', 'Meneur', 'Non', 7),
    ('Harrison', 'Barnes', 'Ailier', 'Non', 7),
    ('Jayson', 'Brown', 'Ailier fort', 'Non', 7),
    ('Myles', 'Turner', 'Pivot', 'Non', 7),
    ('Mason', 'Plumlee', 'Pivot', 'Non', 7),
    ('Brook', 'Lopez', 'Pivot', 'Non', 7),
    ('Marcus', 'Smart', 'Arrière', 'Non', 7),
    ('Jayson', 'Tatum', 'Ailier', 'Non', 7),
    ('Kemba', 'Walker', 'Arrière', 'Non', 7),

    -- Pologne
    ('Mateusz', 'Ponitka', 'Meneur', 'Non', 8),
    ('Adam', 'Waczynski', 'Ailier', 'Non', 8),
    ('Aaron', 'Slaughter', 'Arrière', 'Non', 8),
    ('Damian', 'Kulig', 'Arrière', 'Non', 8),
    ('Michal', 'Sokolowski', 'Ailier', 'Non', 8),
    ('Adam', 'Hrycaniuk', 'Pivot', 'Non', 8),
    ('Dominik', 'Olejniczak', 'Pivot', 'Non', 8),
    ('Aleksander', 'Balcerowski', 'Pivot', 'Oui', 8),
    ('Kamil', 'Laczynski', 'Meneur', 'Non', 8),
    ('Lukasz', 'Koszarek', 'Ailier fort', 'Non', 8),
    ('Karol', 'Gruszecki', 'Arrière', 'Non', 8),
    ('Aaron', 'Cel', 'Arrière', 'Non', 8),

    -- Lituanie
    ('Mantas', 'Kalnietis', 'Arrière', 'Oui', 9),
    ('Jonas', 'Maciulis', 'Ailier', 'Non', 9),
    ('Renaldas', 'Seibutis', 'Meneur', 'Non', 9),
    ('Domantas', 'Sabonis', 'Pivot', 'Non', 9),
    ('Paulius', 'Jankunas', 'Ailier fort', 'Non', 9),
    ('Jonas', 'Valanciunas', 'Pivot', 'Non', 9),
    ('Mindaugas', 'Kuzminskas', 'Ailier', 'Non', 9),
    ('Rokas', 'Giedraitis', 'Ailier', 'Non', 9),
    ('Marius', 'Grigonis', 'Meneur', 'Non', 9),
    ('Lukas', 'Lekavicius', 'Arrière', 'Non', 9),
    ('Arnas', 'Butkevicius', 'Ailier', 'Non', 9),
    ('Edgaras', 'Ulanovas', 'Ailier', 'Non', 9),

    -- Italie
    ('Amedeo', 'Della Valle', 'Meneur', 'Non', 10),
    ('Marco', 'Belinelli', 'Arrière', 'Non', 10),
    ('Alessandro', 'Gentile', 'Meneur', 'Non', 10),
    ('Paul', 'Biligha', 'Pivot', 'Non', 10),
    ('Luca', 'Vitali', 'Meneur', 'Non', 10),
    ('Danilo', 'Gallinari', 'Ailier fort', 'Non', 10),
    ('Daniel', 'Hackett', 'Arrière', 'Non', 10),
    ('Ariel', 'Filloy', 'Meneur', 'Non', 10),
    ('Jeff', 'Brooks', 'Ailier', 'Non', 10),
    ('Amedeo', 'Tessitori', 'Ailier fort', 'Non', 10),
    ('Awudu', 'Abass', 'Ailier', 'Non', 10),
    ('Luigi', 'Datome', 'Ailier fort', 'Oui', 10),

    -- Grèce
    ('Giannoulis', 'Larentzakis', 'Arrière', 'Non', 11),
    ('Nick', 'Calathes', 'Meneur', 'Non', 11),
    ('Loannis', 'Bourousis', 'Pivot', 'Oui', 11),
    ('Koastas', 'Sloukas', 'Meneur', 'Non', 11),
    ('Georgios', 'Papagiannis', 'Pivot', 'Non', 11),
    ('Georgios', 'Printezis', 'Ailier fort', 'Non', 11),
    ('Kostas', 'Papanikolaou', 'Ailier', 'Non', 11),
    ('Evangelos', 'Mantzaris', 'Meneur', 'Non', 11),
    ('Loannis', 'Papapetrou', 'Meneur', 'Non', 11),
    ('Panagiotis', 'Vasilopoulos', 'Ailier fort', 'Non', 11),
    ('Giannis', 'Antekokounmpo', 'Ailier', 'Non', 11),
    ('Thanasis', 'Antekokounmpo', 'Ailier fort', 'Non', 11),

    -- Russie
    ('Andrei', 'Sopin', 'Meneur', 'Non', 12),
    ('Sergey', 'Karasev', 'Arrière', 'Non', 12),
    ('Evgenii', 'Baburin', 'Meneur', 'Non', 12),
    ('Grigory', 'Motovilov', 'Meneur', 'Non', 12),
    ('Vitaly', 'Fridzon', 'Arrière', 'Non', 12),
    ('Vladimir', 'Ivlev', 'Pivot', 'Oui', 12),
    ('Semen', 'Antonov', 'Ailier fort', 'Non', 12),
    ('Andrey', 'Zubkov', 'Ailier fort', 'Non', 12),
    ('Andrey', 'Vorontsevich', 'Ailier fort', 'Non', 12),
    ('Mikhail', 'Kulagin', 'Meneur', 'Non', 12),
    ('Evgeny', 'Valiev', 'Ailier fort', 'Non', 12),
    ('Nikita', 'Kurbanov', 'Ailier', 'Non', 12),

    -- Brésil
    ('Yago', 'Mateus', 'Meneur', 'Non', 13),
    ('Rafa', 'Luz', 'Meneur', 'Non', 13),
    ('Cristiano', 'Felicio', 'Pivot', 'Non', 13),
    ('Vitor', 'Benite', 'Arrière', 'Oui', 13),
    ('Marcelinho', 'Huertas', 'Meneur', 'Non', 13),
    ('Alex', 'Garcia', 'Ailier', 'Non', 13),
    ('Anderson', 'Varejao', 'Pivot', 'Non', 13),
    ('Marquinhos', 'Sousa', 'Ailier', 'Non', 13),
    ('Leandrinho', 'Barbosa', 'Ailier', 'Non', 13),
    ('Augusto', 'Lima', 'Pivot', 'Non', 13),
    ('Didi', 'Louzada', 'Arrière', 'Non', 13),
    ('Bruno', 'Caboclo', 'Ailier', 'Non', 13),

    -- Venezuela
    ('Gregory', 'Vargas', 'Meneur', 'Oui', 14),
    ('Jhornan', 'Zamora', 'Arrière', 'Non', 14),
    ('Pedro', 'Chourio', 'Arrière', 'Non', 14),
    ('Jose', 'Vargas', 'Ailier', 'Non', 14),
    ('Luis', 'Bethelmy', 'Ailier fort', 'Non', 14),
    ('Anthony', 'Perez', 'Ailier', 'Non', 14),
    ('Miguel', 'Ruiz', 'Ailier fort', 'Non', 14),
    ('Windi', 'Graterol', 'Pivot', 'Non', 14),
    ('Heissler', 'Guillent', 'Meneur', 'Non', 14),
    ('Dwight', 'Lewis', 'Ailier', 'Non', 14),
    ('Michael', 'Carrera', 'Ailier fort', 'Non', 14),
    ('Nestor', 'Colmenares', 'Ailier fort', 'Non', 14),

    -- Porto Rico
    ('Isaiah', 'Pineiro', 'Ailier', 'Non', 15),
    ('Ramon', 'Clemente', 'Ailier fort', 'Non', 15),
    ('Devon', 'Collier', 'Ailier', 'Non', 15),
    ('Gary', 'Browne', 'Arrière', 'Non', 15),
    ('Jorge Bryan', 'Diaz', 'Pivot', 'Non', 15),
    ('Angel', 'Rodriguez', 'Meneur', 'Non', 15),
    ('Gian', 'Clavell', 'Arrière', 'Non', 15),
    ('David', 'Huertas', 'Arrière', 'Oui', 15),
    ('Renaldo', 'Balkman', 'Ailier fort', 'Non', 15),
    ('Alexander', 'Franklin', 'Ailier', 'Non', 15),
    ('Christopher', 'Brady', 'Pivot', 'Non', 15),
    ('Javier', 'Mojica', 'Arrière', 'Non', 15),

    -- République Dominicaine
    ('Dagoberto', 'Pena', 'Arrière', 'Non', 16),
    ('Rigoberto', 'Mendoza', 'Arrière', 'Non', 16),
    ('Victor', 'Liz', 'Arrière', 'Non', 16),
    ('Sadiel', 'Rojas', 'Ailier', 'Non', 16),
    ('Juan Miguel', 'Suero', 'Ailier', 'Non', 16),
    ('Eloy', 'Vargas', 'Pivot', 'Non', 16),
    ('Eulis', 'Baez', 'Ailier', 'Non', 16),
    ('Ronald', 'Ramon', 'Meneur', 'Non', 16),
    ('Gelvis', 'Solano', 'Meneur', 'Oui', 16),
    ('Ronald', 'Roberts', 'Ailier fort', 'Non', 16),
    ('Juan', 'Garcia', 'Ailier fort', 'Non', 16),
    ('Luis', 'Montero', 'Arrière', 'Non', 16),

    -- Nigeria
    ('Ike', 'Iroegbu', 'Meneur', 'Non', 17),
    ('Ben', 'Uzoh', 'Meneur', 'Non', 17),
    ('Stan', 'Okoye', 'Arrière', 'Non', 17),
    ('Ike', 'Diogu', 'Ailier fort', 'Oui', 17),
    ('Al-Farouq', 'Aminu', 'Ailier', 'Non', 17),
    ('Ekpe', 'Udoh', 'Ailier fort', 'Non', 17),
    ('Chimezie', 'Metu', 'Ailier', 'Non', 17),
    ('Talib', 'Zanna', 'Ailier fort', 'Non', 17),
    ('Josh', 'Okogie', 'Arrière', 'Non', 17),
    ('Nnamdi', 'Vincent', 'Arrière', 'Non', 17),
    ('Jordan', 'Nwora', 'Ailier', 'Non', 17),
    ('Micheal', 'Eric', 'Pivot', 'Non', 17),

    -- Allemagne
    ('Maodo', 'Lo', 'Meneur', 'Non', 18),
    ('Niels', 'Giffey', 'Ailier', 'Non', 18),
    ('Johannes', 'Voigtmann', 'Pivot', 'Non', 18),
    ('Ismet', 'Akpinar', 'Meneur', 'Non', 18),
    ('Daniel', 'Theis', 'Ailier fort', 'Non', 18),
    ('Robin', 'Benzing', 'Ailier', 'Non', 18),
    ('Dennis', 'Schroder', 'Meneur', 'Non', 18),
    ('Paul', 'Zipser', 'Ailier', 'Oui', 18),
    ('Danilo', 'Barthel', 'Ailier fort', 'Non', 18),
    ('Maximilian', 'Kleber', 'Ailier fort', 'Non', 18),
    ('Johannes', 'Thiemann', 'Ailier fort', 'Non', 18),
    ('Andreas', 'Obst', 'Ailier', 'Non', 18),

    -- Nouvelle-Zélande
    ('Tai', 'Webster', 'Meneur', 'Non', 19),
    ('Finn', 'Delany', 'Ailier fort', 'Non', 19),
    ('Shea', 'Ili', 'Meneur', 'Non', 19),
    ('Jarrod', 'Kenny', 'Meneur', 'Non', 19),
    ('Corey', 'Webster', 'Arrière', 'Non', 19),
    ('Tom', 'Abercrombie', 'Ailier', 'Non', 19),
    ('Rob', 'Loe', 'Pivot', 'Non', 19),
    ('Tohi', 'Smith-Milner', 'Ailier fort', 'Non', 19),
    ('Jordan', 'Ngatai', 'Ailier', 'Non', 19),
    ('Esthan', 'Rusbatch', 'Arrière', 'Non', 19),
    ('Alex', 'Pledger', 'Pivot', 'Non', 19),
    ('Isaac', 'Fotu', 'Ailier fort', 'Oui', 19),

    -- Tunisie
    ('Omar', 'Abada', 'Meneur', 'Non', 20),
    ('Ziyed', 'Chennoufi', 'Arrière', 'Non', 20),
    ('Mourad', 'El Mabrouk', 'Arrière', 'Non', 20),
    ('Omar', 'Mouhli', 'Arrière', 'Non', 20),
    ('Mohamed', 'Hadidane', 'Ailier fort', 'Non', 20),
    ('Mokhtar', 'Ghyaza', 'Pivot', 'Non', 20),
    ('Makram', 'Ben Romdhane', 'Ailier fort', 'Non', 20),
    ('Mohamed', 'Abbrassi', 'Pivot', 'Non', 20),
    ('Michael', 'Roll', 'Arrière', 'Non', 20),
    ('Radhouane', 'Slimane', 'Ailier', 'Oui', 20),
    ('Salah', 'Mejri', 'Pivot', 'Non', 20),
    ('Nizar', 'Knioua', 'Meneur', 'Non', 20),

    -- Canada
    ('Kevin', 'Pangos', 'Meneur', 'Non', 21),
    ('Melvin', 'Ejim', 'Ailier', 'Non', 21),
    ('Brady', 'Heslip', 'Arrière', 'Non', 21),
    ('Cory', 'Joseph', 'Meneur', 'Non', 21),
    ('Kaza', 'Kajama-Keane', 'Arrière', 'Non', 21),
    ('Andrew', 'Nembhard', 'Meneur', 'Oui', 21),
    ('Conor', 'Morgan', 'Ailier', 'Non', 21),
    ('Owen', 'Klassen', 'Pivot', 'Non', 21),
    ('Thomas', 'Scrubb', 'Ailier', 'Non', 21),
    ('Phil', 'Scrubb', 'Arrière', 'Non', 21),
    ('Khem', 'Birch', 'Pivot', 'Non', 21),
    ('Kyle', 'Wiltjer', 'Pivot', 'Non', 21),

    -- Turquie
    ('Scott', 'Wilbekin', 'Meneur', 'Non', 22),
    ('Dogus', 'Balbay', 'Meneur', 'Non', 22),
    ('James Metecan', 'Birsen', 'Ailier', 'Non', 22),
    ('Cedi', 'Osman', 'Ailier', 'Non', 22),
    ('Ersan', 'Ilyasova', 'Ailier fort', 'Non', 22),
    ('Semih', 'Erden', 'Pivot', 'Non', 22),
    ('Melih', 'Mahmutoglu', 'Arrière', 'Non', 22),
    ('Ege', 'Arar', 'Ailier fort', 'Non', 22),
    ('Bugrahan', 'Tuncer', 'Arrière', 'Oui', 22),
    ('Sertac', 'Sanli', 'Pivot', 'Non', 22),
    ('Furkan', 'Forkmaz', 'Arrière', 'Non', 22),
    ('Yigit', 'Arslan', 'Arrière', 'Non', 22),

    -- Iran
    ('Rasoul', 'Mozafarivanani', 'Arrière', 'Non', 23),
    ('Meisam', 'Mirzaeitalarposhti', 'Pivot', 'Non', 23),
    ('Sajjad', 'Mashayekhi', 'Meneur', 'Non', 23),
    ('Hamed', 'Hosseinzadeh', 'Meneur', 'Non', 23),
    ('Mohammad', 'Hassanzadeh', 'Ailier fort', 'Non', 23),
    ('Behnam', 'Yakhchalidehkordi', 'Arrière', 'Non', 23),
    ('Arman', 'Zangeneh', 'Ailier fort', 'Non', 23),
    ('Mohammad', 'Jamshidijafarabadi', 'Arrière', 'Non', 23),
    ('Mohammadsamad', 'Nik Khahbahrami', 'Ailier', 'Non', 23),
    ('Hamed', 'Haddadi', 'Pivot', 'Oui', 23),
    ('Michael', 'Rostampour', 'Ailier fort', 'Non', 23),
    ('Aaron', 'Geramipoor', 'Pivot', 'Non', 23),

    -- Chine
    ('Rui', 'Zhao', 'Arrière', 'Non', 24),
    ('Shuo', 'Fang', 'Arrière', 'Non', 24),
    ('Ailun', 'Guo', 'Arrière', 'Non', 24),
    ('Xiaochuan', 'Zhai', 'Ailier', 'Oui', 24),
    ('Jianlian', 'Yi', 'Pivot', 'Non', 24),
    ('Kelanbaike', 'Makan', 'Ailier', 'Non', 24),
    ('Qi', 'Zhou', 'Pivot', 'Non', 24),
    ('Minghui', 'Sun', 'Arrière', 'Non', 24),
    ('Junfei', 'Ren', 'Pivot', 'Non', 24),
    ('Abudushalamu', 'Abudurexiti', 'Ailier', 'Non', 24),
    ('Jiwei', 'Zhao', 'Meneur', 'Non', 24),
    ('Zhelin', 'Wang', 'Pivot', 'Non', 24),

    -- Monténégro
    ('Nikola', 'Vucevic', 'Pivot', 'Non', 25),
    ('Derek', 'Needham', 'Meneur', 'Non', 25),
    ('Suad', 'Sehovic', 'Ailier', 'Non', 25),
    ('Nemanja', 'Radovic', 'Ailier fort', 'Non', 25),
    ('Sead', 'Sehovic', 'Ailier', 'Non', 25),
    ('Aleksa', 'Popovic', 'Ailier', 'Oui', 25),
    ('Marko', 'Todorovic', 'Pivot', 'Non', 25),
    ('Bojan', 'Dubljevic', 'Ailier fort', 'Non', 25),
    ('Nikola', 'Ivanovic', 'Meneur', 'Non', 25),
    ('Dino', 'Radoncic', 'Ailier', 'Non', 25),
    ('Petar', 'Popovic', 'Arrière', 'Non', 25),
    ('Milko', 'Bjelica', 'Ailier fort', 'Non', 25),

    -- Corée
    ('Chan Heee', 'Park', 'Arrière', 'Non', 26),
    ('Junyong', 'Choi', 'Ailier', 'Non', 26),
    ('Junghyun', 'Lee', 'Arrière', 'Non', 26),
    ('Sunhyung', 'Kim', 'Arrière', 'Non', 26),
    ('Hoon', 'Heo', 'Arrière', 'Non', 26),
    ('Heejong', 'Yang', 'Ailier', 'Non', 26),
    ('Hyogeun', 'Jeong', 'Ailier', 'Non', 26),
    ('Sangjae', 'Kang', 'Pivot', 'Non', 26),
    ('Jongkyu', 'Kim', 'Pivot', 'Oui', 26),
    ('Guna', 'Ra', 'Pivot', 'Non', 26),
    ('Seounghyun', 'Lee', 'Pivot', 'Non', 26),
    ('Daesung', 'Lee', 'Arrière', 'Non', 26),

    -- Angola
    ('Gerson', 'Domingos', 'Arrière', 'Non', 27),
    ('Yanick', 'Moeira', 'Pivot', 'Oui', 27),
    ('Jerson', 'Goncalves', 'Arrière', 'Non', 27),
    ('Olimpio', 'Cipriano', 'Arrière', 'Non', 27),
    ('Carlos', 'Morais', 'Arrière', 'Non', 27),
    ('Leonel', 'Paulo', 'Ailier', 'Non', 27),
    ('Jose', 'Antonio', 'Ailier', 'Non', 27),
    ('Eduardo', 'Mingas', 'Ailier fort', 'Non', 27),
    ('Hermeneglido Divaldo', 'Mbunga', 'Pivot', 'Non', 27),
    ('Reggie', 'Moore', 'Ailier fort', 'Non', 27),
    ('Valdélicio', 'Joaquim', 'Pivot', 'Non', 27),
    ('Jaques', 'Conceicao', 'Arrière', 'Non', 27),

    -- Jordanie
    ('Mahmoud', 'Abdeen', 'Meneur', 'Non', 28),
    ('Amin', 'Abu Hawwas', 'Arrière', 'Non', 28),
    ('Dar', 'Tucker', 'Arrière', 'Non', 28),
    ('Jordan', 'Al-Dasuqi', 'Meneur', 'Non', 28),
    ('Freddy', 'Ibrahim', 'Arrière', 'Non', 28),
    ('Ahmad', 'Alhamarsheh', 'Ailier', 'Non', 28),
    ('Ahmad', 'Obeid', 'Ailier fort', 'Non', 28),
    ('Yousef', 'Abuwazaneh', 'Pivot', 'Non', 28),
    ('Mohammad', 'Hussein', 'Pivot', 'Non', 28),
    ('Zaid', 'Abbas', 'Ailier fort', 'Non', 28),
    ('Mousa', 'Alawadi', 'Arrière', 'Oui', 28),
    ('Ahmad', 'Al Dwairi', 'Pivot', 'Non', 28),

    -- Côte d''Ivoire
    ('Charles', 'Abouo', 'Arrière', 'Non', 29),
    ('Bryan', 'Pamba', 'Meneur', 'Non', 29),
    ('Baru', 'Adjehi', 'Ailier fort', 'Non', 29),
    ('Frejus', 'Zerbo', 'Pivot', 'Non', 29),
    ('Souleyman', 'Diabate', 'Meneur', 'Non', 29),
    ('Vafessa', 'Fofana', 'Ailier', 'Non', 29),
    ('Bali', 'Coulibaly', 'Ailier fort', 'Non', 29),
    ('Tiegbe', 'Bamba', 'Ailier', 'Non', 29),
    ('Guy Landry', 'Edi', 'Arrière', 'Oui', 29),
    ('Mohamed', 'Kone', 'Pivot', 'Non', 29),
    ('Deon', 'Thompson', 'Ailier fort', 'Non', 29),
    ('Abraham', 'Sie', 'Meneur', 'Non', 29),

    -- Sénégal
    ('Maurice', 'Ndour', 'Ailier', 'Non', 30),
    ('Djibril', 'Thiam', 'Ailier', 'Non', 30),
    ('Xane', 'Dalmeida', 'Arrière', 'Non', 30),
    ('Pape', 'Diop', 'Ailier', 'Oui', 30),
    ('Lamine', 'Sambe', 'Arrière', 'Non', 30),
    ('Mouhammad', 'Faye', 'Ailier fort', 'Non', 30),
    ('Hamady', 'Ndiaye', 'Pivot', 'Non', 30),
    ('Youssoupha', 'Ndoye', 'Pivot', 'Non', 30),
    ('Momar', 'Ndoye', 'Ailier', 'Non', 30),
    ('Ibrahima', 'Faye', 'Ailier fort', 'Non', 30),
    ('Babacar', 'Toure', 'Pivot', 'Non', 30),
    ('Makhtar', 'Gueye', 'Arrière', 'Non', 30),

    -- Japon
    ('Seiya', 'Ando', 'Meneur', 'Oui', 31),
    ('Makoto', 'Hiejima', 'Arrière', 'Non', 31),
    ('Ryusei', 'Shinoyama', 'Meneur', 'Non', 31),
    ('Rui', 'Hachimura', 'Ailier', 'Non', 31),
    ('Kosuke', 'Takeuchi', 'Ailier fort', 'Non', 31),
    ('Yuta', 'Watanabe', 'Ailier', 'Non', 31),
    ('Shuto', 'Ando', 'Arrière', 'Non', 31),
    ('Joji', 'Takeuchi', 'Ailier fort', 'Non', 31),
    ('Yudai', 'Baba', 'Ailier', 'Non', 31),
    ('Nick', 'Fazekas', 'Pivot', 'Non', 31),
    ('Daiki', 'Tanaka', 'Arrière', 'Non', 31),
    ('Avi Koki', 'Schafer', 'Pivot', 'Non', 31),

    -- Philipines
    ('Andray', 'Blatche', 'Pivot', 'Non', 32),
    ('Paul John', 'Dalistan', 'Arrière', 'Non', 32),
    ('Kiefer', 'Ravena', 'Meneur', 'Non', 32),
    ('Gabe', 'Norwood', 'Ailier', 'Non', 32),
    ('Robert Lee jr.', 'Bolick', 'Meneur', 'Non', 32),
    ('Mark', 'Barroca', 'Meneur', 'Non', 32),
    ('June Mar', 'Fajardo', 'Pivot', 'Non', 32),
    ('Roger', 'Pogoy', 'Arrière', 'Non', 32),
    ('Jaymar', 'Perez', 'Arrière', 'Non', 32),
    ('Troy', 'Rosario', 'Ailier', 'Non', 32),
    ('Raymond', 'Almazan', 'Pivot', 'Non', 32),
    ('Japeth', 'Aguilar', 'Ailier fort', 'Oui', 32);

INSERT INTO Matchs(date_match, elim_directe, type, score_equipe1, score_equipe2, id_equipe1, id_equipe2) VALUES
    -- Premier tour
    ('2019-08-31', 'Non', 'GROUPE D', 59, 105, 27, 5),
    ('2019-08-31', 'Non', 'GROUPE A', 80, 69, 8, 14),
    ('2019-08-31', 'Non', 'GROUPE B', 82, 77, 12, 17),
    ('2019-08-31', 'Non', 'GROUPE C', 81, 83, 23, 15),
    ('2019-08-31', 'Non', 'GROUPE D', 62, 108, 32, 10),
    ('2019-08-31', 'Non', 'GROUPE A', 55, 70, 29, 24),
    ('2019-08-31', 'Non', 'GROUPE B', 95, 69, 2, 26),
    ('2019-08-31', 'Non', 'GROUPE C', 101, 62, 1, 20),

    ('2019-09-01', 'Non', 'GROUPE H', 92, 108, 21, 4),
    ('2019-09-01', 'Non', 'GROUPE F', 94, 102, 19, 13),
    ('2019-09-01', 'Non', 'GROUPE E', 86, 67, 22, 31),
    ('2019-09-01', 'Non', 'GROUPE G', 80, 76, 16, 28),
    ('2019-09-01', 'Non', 'GROUPE H', 47, 101, 30, 9),
    ('2019-09-01', 'Non', 'GROUPE F', 85, 60, 11, 25),
    ('2019-09-01', 'Non', 'GROUPE E', 67, 88, 6, 7),
    ('2019-09-01', 'Non', 'GROUPE G', 78, 74, 3, 18),

    ('2019-09-02', 'Non', 'GROUPE D', 92, 61, 10, 27),
    ('2019-09-02', 'Non', 'GROUPE A', 87, 71, 14, 29),
    ('2019-09-02', 'Non', 'GROUPE B', 81, 94, 17, 2),
    ('2019-09-02', 'Non', 'GROUPE C', 79, 67, 20, 23),
    ('2019-09-02', 'Non', 'GROUPE D', 126, 67, 5, 32),
    ('2019-09-02', 'Non', 'GROUPE A', 76, 79, 24, 8),
    ('2019-09-02', 'Non', 'GROUPE B', 73, 87, 26, 12),
    ('2019-09-02', 'Non', 'GROUPE C', 63, 73, 15, 1),

    ('2019-09-03', 'Non', 'GROUPE H', 81, 68, 4, 30),
    ('2019-09-03', 'Non', 'GROUPE F', 83, 93, 25, 19),
    ('2019-09-03', 'Non', 'GROUPE E', 76, 89, 31, 6),
    ('2019-09-03', 'Non', 'GROUPE G', 68, 70, 18, 16),
    ('2019-09-03', 'Non', 'GROUPE H', 92, 69, 9, 21),
    ('2019-09-03', 'Non', 'GROUPE F', 79, 78, 13, 11),
    ('2019-09-03', 'Non', 'GROUPE E', 93, 92, 7, 22),
    ('2019-09-03', 'Non', 'GROUPE G', 64, 103, 28, 3),

    ('2019-09-04', 'Non', 'GROUPE D', 84, 81, 27, 32),
    ('2019-09-04', 'Non', 'GROUPE A', 63, 80, 29, 8),
    ('2019-09-04', 'Non', 'GROUPE B', 66, 108, 26, 17),
    ('2019-09-04', 'Non', 'GROUPE C', 67, 64, 15, 20),
    ('2019-09-04', 'Non', 'GROUPE D', 77, 92, 10, 5),
    ('2019-09-04', 'Non', 'GROUPE A', 72, 59, 14, 24),
    ('2019-09-04', 'Non', 'GROUPE B', 61, 69, 12, 2),
    ('2019-09-04', 'Non', 'GROUPE C', 73, 65, 1, 23),

    ('2019-09-05', 'Non', 'GROUPE H', 82, 60, 21, 30),
    ('2019-09-05', 'Non', 'GROUPE F', 84, 73, 13, 25),
    ('2019-09-05', 'Non', 'GROUPE E', 76, 91, 22, 6),
    ('2019-09-05', 'Non', 'GROUPE G', 96, 62, 18, 28),
    ('2019-09-05', 'Non', 'GROUPE H', 82, 87, 9, 4),
    ('2019-09-05', 'Non', 'GROUPE F', 103, 97, 11, 19),
    ('2019-09-05', 'Non', 'GROUPE E', 98, 45, 7, 31),
    ('2019-09-05', 'Non', 'GROUPE G', 56, 90, 8, 3),

    -- Deuxième tour
    ('2019-09-06', 'Non', 'GROUPE I', 79, 74, 8, 12),
    ('2019-09-06', 'Non', 'GROUPE M', 83, 66, 17, 29),
    ('2019-09-06', 'Non', 'GROUPE N', 62, 71, 27, 23),
    ('2019-09-06', 'Non', 'GROUPE J', 90, 47, 5, 15),
    ('2019-09-06', 'Non', 'GROUPE I', 87, 67, 2, 14),
    ('2019-09-06', 'Non', 'GROUPE M', 77, 73, 24, 26),
    ('2019-09-06', 'Non', 'GROUPE N', 86, 67, 20, 32),
    ('2019-09-06', 'Non', 'GROUPE J', 67, 60, 1, 10),

    ('2019-09-07', 'Non', 'GROUPE O', 111, 81, 19, 31),
    ('2019-09-07', 'Non', 'GROUPE L', 82, 76, 4, 16),
    ('2019-09-07', 'Non', 'GROUPE P', 126, 71, 21, 28),
    ('2019-09-07', 'Non', 'GROUPE K', 71, 93, 13, 6),
    ('2019-09-07', 'Non', 'GROUPE O', 79, 74, 22, 25),
    ('2019-09-07', 'Non', 'GROUPE L', 78, 75, 3, 9),
    ('2019-09-07', 'Non', 'GROUPE P', 89, 78, 18, 30),
    ('2019-09-07', 'Non', 'GROUPE K', 69, 53, 7, 11),

    ('2019-09-08', 'Non', 'GROUPE I', 60, 69, 14, 12),
    ('2019-09-08', 'Non', 'GROUPE M', 71, 80, 29, 26),
    ('2019-09-08', 'Non', 'GROUPE N', 86, 84, 20, 27),
    ('2019-09-08', 'Non', 'GROUPE J', 89, 94, 15, 10),
    ('2019-09-08', 'Non', 'GROUPE H', 65, 91, 8, 2),
    ('2019-09-08', 'Non', 'GROUPE F', 73, 86, 24, 17),
    ('2019-09-08', 'Non', 'GROUPE E', 95, 75, 23, 32),
    ('2019-09-08', 'Non', 'GROUPE G', 81, 69, 1, 5),

    ('2019-09-09', 'Non', 'GROUPE O', 65, 80, 31, 25),
    ('2019-09-09', 'Non', 'GROUPE L', 55, 74, 8, 9),
    ('2019-09-09', 'Non', 'GROUPE P', 79, 77, 28, 30),
    ('2019-09-09', 'Non', 'GROUPE K', 77, 84, 6, 11),
    ('2019-09-09', 'Non', 'GROUPE O', 101, 102, 22, 19),
    ('2019-09-09', 'Non', 'GROUPE L', 98, 100, 3, 4),
    ('2019-09-09', 'Non', 'GROUPE P', 82, 76, 18, 21),
    ('2019-09-09', 'Non', 'GROUPE K', 89, 73, 7, 13),

    -- Quart de finale
    ('2019-09-10', 'Oui', 'QUART DE FINALE', 97, 87, 2, 5),
    ('2019-09-10', 'Oui', 'QUART DE FINALE', 90, 78, 1, 8),

    ('2019-09-11', 'Oui', 'QUART DE FINALE', 79, 89, 7, 3),
    ('2019-09-11', 'Oui', 'QUART DE FINALE', 82, 70, 4, 6),

    -- Classement 5-8
    ('2019-09-12', 'Non', 'CLASSIFICATION 5-8', 94, 89, 5, 7),
    ('2019-09-12', 'Non', 'CLASSIFICATION 5-8', 84, 94, 8, 6),

    -- Demi finale
    ('2019-09-13', 'Oui', 'DEMI FINALE', 95, 88, 1, 4),
    ('2019-09-13', 'Oui', 'DEMI FINALE', 80, 66, 2, 3),

    -- Classement 5-8
    -- 7e et 8e places
    ('2019-09-14', 'Non', 'CLASSIFICATION 5-8', 87, 74, 7, 8),
    -- 5e et 6e places
    ('2019-09-14', 'Non', 'CLASSIFICATION 5-8', 90, 81, 5, 6),

    -- 3e place
    ('2019-09-15', 'Oui', '3E PLACE', 67, 59, 3, 4),
    -- Finale
    ('2019-09-15', 'Oui', 'FINALE', 75, 95, 2, 1);