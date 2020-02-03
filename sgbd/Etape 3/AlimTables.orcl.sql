DELETE FROM Matchs;
DELETE FROM Joueur;
DELETE FROM Equipe;

    -- Pour nb_points: 2 points par victoire et 1 point par defaite
    INSERT INTO Equipe(nom_equipe, nb_victoire, nb_defaite, nb_points) VALUES ('Espagne', 8, 0, 16);
    INSERT INTO Equipe(nom_equipe, nb_victoire, nb_defaite, nb_points) VALUES ('Argentine', 7, 1, 15);
    INSERT INTO Equipe(nom_equipe, nb_victoire, nb_defaite, nb_points) VALUES ('France', 6, 2, 14);
    INSERT INTO Equipe(nom_equipe, nb_victoire, nb_defaite, nb_points) VALUES ('Australie', 6, 2, 14);
    INSERT INTO Equipe(nom_equipe, nb_victoire, nb_defaite, nb_points) VALUES ('Serbie', 6, 2, 14);
    INSERT INTO Equipe(nom_equipe, nb_victoire, nb_defaite, nb_points) VALUES ('Republique Tcheque', 4, 4, 12);
    INSERT INTO Equipe(nom_equipe, nb_victoire, nb_defaite, nb_points) VALUES ('USA', 7, 2, 16);
    INSERT INTO Equipe(nom_equipe, nb_victoire, nb_defaite, nb_points) VALUES ('Pologne', 5, 3, 13);
    INSERT INTO Equipe(nom_equipe, nb_victoire, nb_defaite, nb_points) VALUES ('Lituanie', 3, 2, 8);
    INSERT INTO Equipe(nom_equipe, nb_victoire, nb_defaite, nb_points) VALUES ('Italie', 3, 2, 8);
    INSERT INTO Equipe(nom_equipe, nb_victoire, nb_defaite, nb_points) VALUES ('Grece', 3, 2, 8);
    INSERT INTO Equipe(nom_equipe, nb_victoire, nb_defaite, nb_points) VALUES ('Russie', 3, 2, 8);
    INSERT INTO Equipe(nom_equipe, nb_victoire, nb_defaite, nb_points) VALUES ('Bresil', 3, 2, 8);
    INSERT INTO Equipe(nom_equipe, nb_victoire, nb_defaite, nb_points) VALUES ('Venezuela', 2, 3, 7);
    INSERT INTO Equipe(nom_equipe, nb_victoire, nb_defaite, nb_points) VALUES ('Porto Rico', 2, 3, 7);
    INSERT INTO Equipe(nom_equipe, nb_victoire, nb_defaite, nb_points) VALUES ('Republique Dominicaine', 2, 3, 7);
    INSERT INTO Equipe(nom_equipe, nb_victoire, nb_defaite, nb_points) VALUES ('Nigeria', 3, 2, 8);
    INSERT INTO Equipe(nom_equipe, nb_victoire, nb_defaite, nb_points) VALUES ('Allemagne', 3, 2, 8);
    INSERT INTO Equipe(nom_equipe, nb_victoire, nb_defaite, nb_points) VALUES ('Nouvelle-Zelande', 4, 1, 9);
    INSERT INTO Equipe(nom_equipe, nb_victoire, nb_defaite, nb_points) VALUES ('Tunisie', 3, 2, 8);
    INSERT INTO Equipe(nom_equipe, nb_victoire, nb_defaite, nb_points) VALUES ('Canada', 2, 3, 7);
    INSERT INTO Equipe(nom_equipe, nb_victoire, nb_defaite, nb_points) VALUES ('Turquie', 2, 3, 7);
    INSERT INTO Equipe(nom_equipe, nb_victoire, nb_defaite, nb_points) VALUES ('Iran', 2, 3, 7);
    INSERT INTO Equipe(nom_equipe, nb_victoire, nb_defaite, nb_points) VALUES ('Chine', 2, 3, 7);
    INSERT INTO Equipe(nom_equipe, nb_victoire, nb_defaite, nb_points) VALUES ('Montenegro', 1, 4, 6);
    INSERT INTO Equipe(nom_equipe, nb_victoire, nb_defaite, nb_points) VALUES ('Coree', 1, 4, 6);
    INSERT INTO Equipe(nom_equipe, nb_victoire, nb_defaite, nb_points) VALUES ('Angola', 1, 4, 6);
    INSERT INTO Equipe(nom_equipe, nb_victoire, nb_defaite, nb_points) VALUES ('Jordanie', 1, 4, 6);
    INSERT INTO Equipe(nom_equipe, nb_victoire, nb_defaite, nb_points) VALUES ('Côte d''Ivoire', 0, 5, 5);
    INSERT INTO Equipe(nom_equipe, nb_victoire, nb_defaite, nb_points) VALUES ('Senegal', 0, 5, 5);
    INSERT INTO Equipe(nom_equipe, nb_victoire, nb_defaite, nb_points) VALUES ('Japon', 0, 5, 5);
    INSERT INTO Equipe(nom_equipe, nb_victoire, nb_defaite, nb_points) VALUES ('Philipines', 0, 5, 5);

    -- Espagne
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Ricky', 'Rubio', 'Meneur', 'Non', 1);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Sergio', 'Llull', 'Arrière', 'Non', 1);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Marc', 'Gasol', 'Pivot', 'Oui', 1);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Willy', 'Hernangomez', 'Pivot', 'Non', 1);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Juan', 'Hernangomez', 'Ailier fort', 'Non', 1);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Rudy', 'Fernandez', 'Ailier', 'Non', 1);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Pierre', 'Oriola', 'Ailier fort', 'Non', 1);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Pau', 'Ribas', 'Arrière', 'Non', 1);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Victor', 'Claver', 'Ailier fort', 'Non', 1);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Xavi', 'Rabaseda', 'Ailier', 'Non', 1);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Quino', 'Colom', 'Meneur', 'Non', 1);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Javier', 'Beiran', 'Ailier', 'Non', 1);

    -- Argentine
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Gabriel', 'Deck', 'Ailier fort', 'Non', 2);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Nicolás', 'Laprovittola', 'Meneur', 'Non', 2);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Facundo', 'Campazzo', 'Meneur', 'Non', 2);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Luis', 'Scola', 'Ailier fort', 'Non', 2);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Nicolas', 'Brussino', 'Ailier', 'Non', 2);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Lucio', 'Redivo', 'Arrière', 'Non', 2);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Luca', 'Vildoza', 'Meneur', 'Non', 2);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Marcos', 'Delia', 'Pivot', 'Non', 2);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Maximo', 'Fjellerup','Arrière', 'Non', 2);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Agustin', 'Caffaro', 'Pivot', 'Oui', 2);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Patricio', 'Garino', 'Ailier', 'Non', 2);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Tayavek', 'Gallizzi', 'Ailier fort', 'Non', 2);

    -- France
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Nando', 'De Colo', 'Meneur', 'Non', 3);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Evan', 'Fournier', 'Arrière', 'Non', 3);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Andrew', 'Albicy', 'Meneur', 'Non', 3);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Nicolas', 'Batum', 'Ailier', 'Oui', 3);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Vincent', 'Poirier', 'Pivot', 'Non', 3);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Louis', 'Labeyrie', 'Ailier fort', 'Non', 3);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Frank', 'Ntilikina', 'Meneur', 'Non', 3);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Rudy', 'Gobert', 'Pivot', 'Non', 3);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Axel', 'Toupane', 'Ailier', 'Non', 3);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Amath', 'Mbaye', 'Ailier fort', 'Non', 3);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Mathias', 'Lessort', 'Pivot', 'Non', 3);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Paul', 'Lacombe', 'Arrière', 'Non', 3);

    -- Australie
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Joe', 'Ingles', 'Ailier', 'Non', 4);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Patty', 'Mills', 'Meneur', 'Non', 4);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Nick', 'Kay', 'Ailier fort', 'Non', 4);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Aron', 'Baynes', 'Pivot', 'Non', 4);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Andrew', 'Bogut', 'Pivot', 'Non', 4);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Jock', 'Landale', 'Meneur', 'Non', 4);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Matthew', 'Dellavedova', 'Arrière', 'Non', 4);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Chris', 'Goulding', 'Ailier fort', 'Non', 4);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Mitch', 'Creek', 'Ailier', 'Non', 4);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Nathan', 'Sobey', 'Meneur', 'Oui', 4);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Cameron', 'Gliddon', 'Ailier fort', 'Non', 4);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('David', 'Barlow', 'Ailier', 'Non', 4);

    -- Serbie
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Vasilije', 'Micic', 'Meneur', 'Non', 5);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Vladimir', 'Lucic','Ailier', 'Non', 5);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Marco', 'Simonovic', 'Ailier', 'Non', 5);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Stefan', 'Bircevic', 'Ailier fort', 'Non', 5);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Bogdan', 'Bogdanovic', 'Arrière', 'Non', 5);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Nicola', 'Milutinov', 'Ailier fort', 'Non', 5);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Stefan', 'Jovic', 'Meneur', 'Oui', 5);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Miroslav', 'Raduljica', 'Pivot', 'Non', 5);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Nikola', 'Jokic', 'Ailier fort', 'Non', 5);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Boban', 'Marjanovic', 'Pivot', 'Non', 5);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Marco', 'Guduric', 'Arrière', 'Non', 5);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Nemanja', 'Bjelica', 'Ailier', 'Non', 5);

    -- République Tchèque
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Patrick', 'Auda', 'Pivot', 'Non', 6);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Martin', 'Peterka', 'Pivot', 'Non', 6);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Thomas', 'Satoransky', 'Meneur', 'Non', 6);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Ondray', 'Balvin', 'Pivot', 'Non', 6);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Vortech', 'Hruban', 'Ailier', 'Non', 6);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Jaromir', 'Bohacik', 'Ailier', 'Non', 6);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Pavel', 'Pumprla', 'Ailier', 'Non', 6);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Lukas', 'Palyza', 'Ailier', 'Non', 6);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Jacub', 'Sirina', 'Meneur', 'Non', 6);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Martin', 'Kriz', 'Pivot', 'Non', 6);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Thomas', 'Vyoral', 'Meneur', 'Oui', 6);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Blake', 'Schlib', 'Ailier', 'Non', 6);

    -- USA
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Donovan', 'Mitchell', 'Meneur', 'Oui', 7);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Joe', 'Harris', 'Arrière', 'Non', 7);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Khris', 'Middleton', 'Ailier fort', 'Non', 7);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Derrick', 'White', 'Meneur', 'Non', 7);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Harrison', 'Barnes', 'Ailier', 'Non', 7);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Jayson', 'Brown', 'Ailier fort', 'Non', 7);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Myles', 'Turner', 'Pivot', 'Non', 7);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Mason', 'Plumlee', 'Pivot', 'Non', 7);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Brook', 'Lopez', 'Pivot', 'Non', 7);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Marcus', 'Smart', 'Arrière', 'Non', 7);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Jayson', 'Tatum', 'Ailier', 'Non', 7);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Kemba', 'Walker', 'Arrière', 'Non', 7);

    -- Pologne
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Mateusz', 'Ponitka', 'Meneur', 'Non', 8);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Adam', 'Waczynski', 'Ailier', 'Non', 8);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Aaron', 'Slaughter', 'Arrière', 'Non', 8);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Damian', 'Kulig', 'Arrière', 'Non', 8);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Michal', 'Sokolowski', 'Ailier', 'Non', 8);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Adam', 'Hrycaniuk', 'Pivot', 'Non', 8);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Dominik', 'Olejniczak', 'Pivot', 'Non', 8);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Aleksander', 'Balcerowski', 'Pivot', 'Oui', 8);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Kamil', 'Laczynski', 'Meneur', 'Non', 8);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Lukasz', 'Koszarek', 'Ailier fort', 'Non', 8);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Karol', 'Gruszecki', 'Arrière', 'Non', 8);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Aaron', 'Cel', 'Arrière', 'Non', 8);

    -- Lituanie
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Mantas', 'Kalnietis', 'Arriere', 'Oui', 9);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Jonas', 'Maciulis', 'Ailier', 'Non', 9);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Renaldas', 'Seibutis', 'Meneur', 'Non', 9);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Domantas', 'Sabonis', 'Pivot', 'Non', 9);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Paulius', 'Jankunas', 'Ailier fort', 'Non', 9);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Jonas', 'Valanciunas', 'Pivot', 'Non', 9);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Mindaugas', 'Kuzminskas', 'Ailier', 'Non', 9);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Rokas', 'Giedraitis', 'Ailier', 'Non', 9);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Marius', 'Grigonis', 'Meneur', 'Non', 9);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Lukas', 'Lekavicius', 'Arriere', 'Non', 9);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Arnas', 'Butkevicius', 'Ailier', 'Non', 9);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Edgaras', 'Ulanovas', 'Ailier', 'Non', 9);

    -- Italie
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Amedeo', 'Della Valle', 'Meneur', 'Non', 10);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Marco', 'Belinelli', 'Arriere', 'Non', 10);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Alessandro', 'Gentile', 'Meneur', 'Non', 10);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Paul', 'Biligha', 'Pivot', 'Non', 10);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Luca', 'Vitali', 'Meneur', 'Non', 10);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Danilo', 'Gallinari', 'Ailier fort', 'Non', 10);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Daniel', 'Hackett', 'Arriere', 'Non', 10);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Ariel', 'Filloy', 'Meneur', 'Non', 10);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Jeff', 'Brooks', 'Ailier', 'Non', 10);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Amedeo', 'Tessitori', 'Ailier fort', 'Non', 10);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Awudu', 'Abass', 'Ailier', 'Non', 10);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Luigi', 'Datome', 'Ailier fort', 'Oui', 10);

    -- Grece
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Giannoulis', 'Larentzakis', 'Arriere', 'Non', 11);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Nick', 'Calathes', 'Meneur', 'Non', 11);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Loannis', 'Bourousis', 'Pivot', 'Oui', 11);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Koastas', 'Sloukas', 'Meneur', 'Non', 11);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Georgios', 'Papagiannis', 'Pivot', 'Non', 11);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Georgios', 'Printezis', 'Ailier fort', 'Non', 11);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Kostas', 'Papanikolaou', 'Ailier', 'Non', 11);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Evangelos', 'Mantzaris', 'Meneur', 'Non', 11);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Loannis', 'Papapetrou', 'Meneur', 'Non', 11);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Panagiotis', 'Vasilopoulos', 'Ailier fort', 'Non', 11);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Giannis', 'Antekokounmpo', 'Ailier', 'Non', 11);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Thanasis', 'Antekokounmpo', 'Ailier fort', 'Non', 11);

    -- Russie
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Andrei', 'Sopin', 'Meneur', 'Non', 12);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Sergey', 'Karasev', 'Arriere', 'Non', 12);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Evgenii', 'Baburin', 'Meneur', 'Non', 12);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Grigory', 'Motovilov', 'Meneur', 'Non', 12);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Vitaly', 'Fridzon', 'Arriere', 'Non', 12);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Vladimir', 'Ivlev', 'Pivot', 'Oui', 12);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Semen', 'Antonov', 'Ailier fort', 'Non', 12);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Andrey', 'Zubkov', 'Ailier fort', 'Non', 12);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Andrey', 'Vorontsevich', 'Ailier fort', 'Non', 12);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Mikhail', 'Kulagin', 'Meneur', 'Non', 12);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Evgeny', 'Valiev', 'Ailier fort', 'Non', 12);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Nikita', 'Kurbanov', 'Ailier', 'Non', 12);

    -- Bresil
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Yago', 'Mateus', 'Meneur', 'Non', 13);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Rafa', 'Luz', 'Meneur', 'Non', 13);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Cristiano', 'Felicio', 'Pivot', 'Non', 13);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Vitor', 'Benite', 'Arriere', 'Oui', 13);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Marcelinho', 'Huertas', 'Meneur', 'Non', 13);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Alex', 'Garcia', 'Ailier', 'Non', 13);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Anderson', 'Varejao', 'Pivot', 'Non', 13);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Marquinhos', 'Sousa', 'Ailier', 'Non', 13);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Leandrinho', 'Barbosa', 'Ailier', 'Non', 13);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Augusto', 'Lima', 'Pivot', 'Non', 13);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Didi', 'Louzada', 'Arriere', 'Non', 13);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Bruno', 'Caboclo', 'Ailier', 'Non', 13);

    -- Venezuela
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Gregory', 'Vargas', 'Meneur', 'Oui', 14);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Jhornan', 'Zamora', 'Arriere', 'Non', 14);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Pedro', 'Chourio', 'Arriere', 'Non', 14);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Jose', 'Vargas', 'Ailier', 'Non', 14);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Luis', 'Bethelmy', 'Ailier fort', 'Non', 14);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Anthony', 'Perez', 'Ailier', 'Non', 14);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Miguel', 'Ruiz', 'Ailier fort', 'Non', 14);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Windi', 'Graterol', 'Pivot', 'Non', 14);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Heissler', 'Guillent', 'Meneur', 'Non', 14);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Dwight', 'Lewis', 'Ailier', 'Non', 14);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Michael', 'Carrera', 'Ailier fort', 'Non', 14);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Nestor', 'Colmenares', 'Ailier fort', 'Non', 14);

    -- Porto Rico
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Isaiah', 'Pineiro', 'Ailier', 'Non', 15);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Ramon', 'Clemente', 'Ailier fort', 'Non', 15);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Devon', 'Collier', 'Ailier', 'Non', 15);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Gary', 'Browne', 'Arriere', 'Non', 15);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Jorge Bryan', 'Diaz', 'Pivot', 'Non', 15);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Angel', 'Rodriguez', 'Meneur', 'Non', 15);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Gian', 'Clavell', 'Arriere', 'Non', 15);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('David', 'Huertas', 'Arriere', 'Oui', 15);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Renaldo', 'Balkman', 'Ailier fort', 'Non', 15);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Alexander', 'Franklin', 'Ailier', 'Non', 15);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Christopher', 'Brady', 'Pivot', 'Non', 15);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Javier', 'Mojica', 'Arriere', 'Non', 15);

    -- Republique Dominicaine
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Dagoberto', 'Pena', 'Arriere', 'Non', 16);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Rigoberto', 'Mendoza', 'Arriere', 'Non', 16);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Victor', 'Liz', 'Arriere', 'Non', 16);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Sadiel', 'Rojas', 'Ailier', 'Non', 16);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Juan Miguel', 'Suero', 'Ailier', 'Non', 16);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Eloy', 'Vargas', 'Pivot', 'Non', 16);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Eulis', 'Baez', 'Ailier', 'Non', 16);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Ronald', 'Ramon', 'Meneur', 'Non', 16);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Gelvis', 'Solano', 'Meneur', 'Oui', 16);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Ronald', 'Roberts', 'Ailier fort', 'Non', 16);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Juan', 'Garcia', 'Ailier fort', 'Non', 16);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Luis', 'Montero', 'Arriere', 'Non', 16);

    -- Nigeria
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Ike', 'Iroegbu', 'Meneur', 'Non', 17);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Ben', 'Uzoh', 'Meneur', 'Non', 17);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Stan', 'Okoye', 'Arriere', 'Non', 17);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Ike', 'Diogu', 'Ailier fort', 'Oui', 17);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Al-Farouq', 'Aminu', 'Ailier', 'Non', 17);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Ekpe', 'Udoh', 'Ailier fort', 'Non', 17);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Chimezie', 'Metu', 'Ailier', 'Non', 17);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Talib', 'Zanna', 'Ailier fort', 'Non', 17);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Josh', 'Okogie', 'Arriere', 'Non', 17);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Nnamdi', 'Vincent', 'Arriere', 'Non', 17);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Jordan', 'Nwora', 'Ailier', 'Non', 17);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Micheal', 'Eric', 'Pivot', 'Non', 17);

    -- Allemagne
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Maodo', 'Lo', 'Meneur', 'Non', 18);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Niels', 'Giffey', 'Ailier', 'Non', 18);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Johannes', 'Voigtmann', 'Pivot', 'Non', 18);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Ismet', 'Akpinar', 'Meneur', 'Non', 18);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Daniel', 'Theis', 'Ailier fort', 'Non', 18);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Robin', 'Benzing', 'Ailier', 'Non', 18);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Dennis', 'Schroder', 'Meneur', 'Non', 18);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Paul', 'Zipser', 'Ailier', 'Oui', 18);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Danilo', 'Barthel', 'Ailier fort', 'Non', 18);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Maximilian', 'Kleber', 'Ailier fort', 'Non', 18);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Johannes', 'Thiemann', 'Ailier fort', 'Non', 18);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Andreas', 'Obst', 'Ailier', 'Non', 18);

    -- Nouvelle-Zelande
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Tai', 'Webster', 'Meneur', 'Non', 19);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Finn', 'Delany', 'Ailier fort', 'Non', 19);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Shea', 'Ili', 'Meneur', 'Non', 19);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Jarrod', 'Kenny', 'Meneur', 'Non', 19);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Corey', 'Webster', 'Arriere', 'Non', 19);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Tom', 'Abercrombie', 'Ailier', 'Non', 19);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Rob', 'Loe', 'Pivot', 'Non', 19);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Tohi', 'Smith-Milner', 'Ailier fort', 'Non', 19);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Jordan', 'Ngatai', 'Ailier', 'Non', 19);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Esthan', 'Rusbatch', 'Arriere', 'Non', 19);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Alex', 'Pledger', 'Pivot', 'Non', 19);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Isaac', 'Fotu', 'Ailier fort', 'Oui', 19);

    -- Tunisie
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Omar', 'Abada', 'Meneur', 'Non', 20);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Ziyed', 'Chennoufi', 'Arriere', 'Non', 20);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Mourad', 'El Mabrouk', 'Arriere', 'Non', 20);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Omar', 'Mouhli', 'Arriere', 'Non', 20);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Mohamed', 'Hadidane', 'Ailier fort', 'Non', 20);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Mokhtar', 'Ghyaza', 'Pivot', 'Non', 20);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Makram', 'Ben Romdhane', 'Ailier fort', 'Non', 20);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Mohamed', 'Abbrassi', 'Pivot', 'Non', 20);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Michael', 'Roll', 'Arriere', 'Non', 20);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Radhouane', 'Slimane', 'Ailier', 'Oui', 20);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Salah', 'Mejri', 'Pivot', 'Non', 20);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Nizar', 'Knioua', 'Meneur', 'Non', 20);

    -- Canada
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Kevin', 'Pangos', 'Meneur', 'Non', 21);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Melvin', 'Ejim', 'Ailier', 'Non', 21);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Brady', 'Heslip', 'Arriere', 'Non', 21);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Cory', 'Joseph', 'Meneur', 'Non', 21);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Kaza', 'Kajama-Keane', 'Arriere', 'Non', 21);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Andrew', 'Nembhard', 'Meneur', 'Oui', 21);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Conor', 'Morgan', 'Ailier', 'Non', 21);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Owen', 'Klassen', 'Pivot', 'Non', 21);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Thomas', 'Scrubb', 'Ailier', 'Non', 21);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Phil', 'Scrubb', 'Arriere', 'Non', 21);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Khem', 'Birch', 'Pivot', 'Non', 21);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Kyle', 'Wiltjer', 'Pivot', 'Non', 21);

    -- Turquie
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Scott', 'Wilbekin', 'Meneur', 'Non', 22);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Dogus', 'Balbay', 'Meneur', 'Non', 22);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('James Metecan', 'Birsen', 'Ailier', 'Non', 22);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Cedi', 'Osman', 'Ailier', 'Non', 22);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Ersan', 'Ilyasova', 'Ailier fort', 'Non', 22);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Semih', 'Erden', 'Pivot', 'Non', 22);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Melih', 'Mahmutoglu', 'Arriere', 'Non', 22);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Ege', 'Arar', 'Ailier fort', 'Non', 22);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Bugrahan', 'Tuncer', 'Arriere', 'Oui', 22);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Sertac', 'Sanli', 'Pivot', 'Non', 22);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Furkan', 'Forkmaz', 'Arriere', 'Non', 22);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Yigit', 'Arslan', 'Arriere', 'Non', 22);

    -- Iran
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Rasoul', 'Mozafarivanani', 'Arriere', 'Non', 23);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Meisam', 'Mirzaeitalarposhti', 'Pivot', 'Non', 23);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Sajjad', 'Mashayekhi', 'Meneur', 'Non', 23);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Hamed', 'Hosseinzadeh', 'Meneur', 'Non', 23);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Mohammad', 'Hassanzadeh', 'Ailier fort', 'Non', 23);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Behnam', 'Yakhchalidehkordi', 'Arriere', 'Non', 23);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Arman', 'Zangeneh', 'Ailier fort', 'Non', 23);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Mohammad', 'Jamshidijafarabadi', 'Arriere', 'Non', 23);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Mohammadsamad', 'Nik Khahbahrami', 'Ailier', 'Non', 23);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Hamed', 'Haddadi', 'Pivot', 'Oui', 23);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Michael', 'Rostampour', 'Ailier fort', 'Non', 23);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Aaron', 'Geramipoor', 'Pivot', 'Non', 23);

    -- Chine
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Rui', 'Zhao', 'Arriere', 'Non', 24);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Shuo', 'Fang', 'Arriere', 'Non', 24);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Ailun', 'Guo', 'Arriere', 'Non', 24);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Xiaochuan', 'Zhai', 'Ailier', 'Oui', 24);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Jianlian', 'Yi', 'Pivot', 'Non', 24);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Kelanbaike', 'Makan', 'Ailier', 'Non', 24);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Qi', 'Zhou', 'Pivot', 'Non', 24);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Minghui', 'Sun', 'Arriere', 'Non', 24);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Junfei', 'Ren', 'Pivot', 'Non', 24);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Abudushalamu', 'Abudurexiti', 'Ailier', 'Non', 24);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Jiwei', 'Zhao', 'Meneur', 'Non', 24);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Zhelin', 'Wang', 'Pivot', 'Non', 24);

    -- Montenegro
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Nikola', 'Vucevic', 'Pivot', 'Non', 25);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Derek', 'Needham', 'Meneur', 'Non', 25);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Suad', 'Sehovic', 'Ailier', 'Non', 25);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Nemanja', 'Radovic', 'Ailier fort', 'Non', 25);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Sead', 'Sehovic', 'Ailier', 'Non', 25);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Aleksa', 'Popovic', 'Ailier', 'Oui', 25);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Marko', 'Todorovic', 'Pivot', 'Non', 25);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Bojan', 'Dubljevic', 'Ailier fort', 'Non', 25);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Nikola', 'Ivanovic', 'Meneur', 'Non', 25);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Dino', 'Radoncic', 'Ailier', 'Non', 25);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Petar', 'Popovic', 'Arriere', 'Non', 25);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Milko', 'Bjelica', 'Ailier fort', 'Non', 25);

    -- Coree
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Chan Heee', 'Park', 'Arriere', 'Non', 26);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Junyong', 'Choi', 'Ailier', 'Non', 26);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Junghyun', 'Lee', 'Arriere', 'Non', 26);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Sunhyung', 'Kim', 'Arriere', 'Non', 26);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Hoon', 'Heo', 'Arriere', 'Non', 26);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Heejong', 'Yang', 'Ailier', 'Non', 26);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Hyogeun', 'Jeong', 'Ailier', 'Non', 26);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Sangjae', 'Kang', 'Pivot', 'Non', 26);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Jongkyu', 'Kim', 'Pivot', 'Oui', 26);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Guna', 'Ra', 'Pivot', 'Non', 26);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Seounghyun', 'Lee', 'Pivot', 'Non', 26);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Daesung', 'Lee', 'Arriere', 'Non', 26);

    -- Angola
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Gerson', 'Domingos', 'Arriere', 'Non', 27);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Yanick', 'Moeira', 'Pivot', 'Oui', 27);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Jerson', 'Goncalves', 'Arriere', 'Non', 27);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Olimpio', 'Cipriano', 'Arriere', 'Non', 27);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Carlos', 'Morais', 'Arriere', 'Non', 27);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Leonel', 'Paulo', 'Ailier', 'Non', 27);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Jose', 'Antonio', 'Ailier', 'Non', 27);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Eduardo', 'Mingas', 'Ailier fort', 'Non', 27);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Hermeneglido Divaldo', 'Mbunga', 'Pivot', 'Non', 27);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Reggie', 'Moore', 'Ailier fort', 'Non', 27);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Valdelicio', 'Joaquim', 'Pivot', 'Non', 27);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Jaques', 'Conceicao', 'Arriere', 'Non', 27);

    -- Jordanie
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Mahmoud', 'Abdeen', 'Meneur', 'Non', 28);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Amin', 'Abu Hawwas', 'Arriere', 'Non', 28);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Dar', 'Tucker', 'Arriere', 'Non', 28);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Jordan', 'Al-Dasuqi', 'Meneur', 'Non', 28);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Freddy', 'Ibrahim', 'Arriere', 'Non', 28);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Ahmad', 'Alhamarsheh', 'Ailier', 'Non', 28);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Ahmad', 'Obeid', 'Ailier fort', 'Non', 28);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Yousef', 'Abuwazaneh', 'Pivot', 'Non', 28);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Mohammad', 'Hussein', 'Pivot', 'Non', 28);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Zaid', 'Abbas', 'Ailier fort', 'Non', 28);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Mousa', 'Alawadi', 'Arriere', 'Oui', 28);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Ahmad', 'Al Dwairi', 'Pivot', 'Non', 28);

    -- Côte d'Ivoire
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Charles', 'Abouo', 'Arriere', 'Non', 29);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Bryan', 'Pamba', 'Meneur', 'Non', 29);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Baru', 'Adjehi', 'Ailier fort', 'Non', 29);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Frejus', 'Zerbo', 'Pivot', 'Non', 29);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Souleyman', 'Diabate', 'Meneur', 'Non', 29);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Vafessa', 'Fofana', 'Ailier', 'Non', 29);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Bali', 'Coulibaly', 'Ailier fort', 'Non', 29);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Tiegbe', 'Bamba', 'Ailier', 'Non', 29);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Guy Landry', 'Edi', 'Arriere', 'Oui', 29);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Mohamed', 'Kone', 'Pivot', 'Non', 29);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Deon', 'Thompson', 'Ailier fort', 'Non', 29);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Abraham', 'Sie', 'Meneur', 'Non', 29);

    -- Senegal
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Maurice', 'Ndour', 'Ailier', 'Non', 30);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Djibril', 'Thiam', 'Ailier', 'Non', 30);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Xane', 'Dalmeida', 'Arriere', 'Non', 30);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Pape', 'Diop', 'Ailier', 'Oui', 30);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Lamine', 'Sambe', 'Arriere', 'Non', 30);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Mouhammad', 'Faye', 'Ailier fort', 'Non', 30);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Hamady', 'Ndiaye', 'Pivot', 'Non', 30);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Youssoupha', 'Ndoye', 'Pivot', 'Non', 30);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Momar', 'Ndoye', 'Ailier', 'Non', 30);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Ibrahima', 'Faye', 'Ailier fort', 'Non', 30);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Babacar', 'Toure', 'Pivot', 'Non', 30);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Makhtar', 'Gueye', 'Arriere', 'Non', 30);

    -- Japon
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Seiya', 'Ando', 'Meneur', 'Oui', 31);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Makoto', 'Hiejima', 'Arriere', 'Non', 31);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Ryusei', 'Shinoyama', 'Meneur', 'Non', 31);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Rui', 'Hachimura', 'Ailier', 'Non', 31);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Kosuke', 'Takeuchi', 'Ailier fort', 'Non', 31);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Yuta', 'Watanabe', 'Ailier', 'Non', 31);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Shuto', 'Ando', 'Arriere', 'Non', 31);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Joji', 'Takeuchi', 'Ailier fort', 'Non', 31);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Yudai', 'Baba', 'Ailier', 'Non', 31);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Nick', 'Fazekas', 'Pivot', 'Non', 31);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Daiki', 'Tanaka', 'Arriere', 'Non', 31);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Avi Koki', 'Schafer', 'Pivot', 'Non', 31);

    -- Philipines
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Andray', 'Blatche', 'Pivot', 'Non', 32);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Paul John', 'Dalistan', 'Arriere', 'Non', 32);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Kiefer', 'Ravena', 'Meneur', 'Non', 32);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Gabe', 'Norwood', 'Ailier', 'Non', 32);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Robert Lee jr.', 'Bolick', 'Meneur', 'Non', 32);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Mark', 'Barroca', 'Meneur', 'Non', 32);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('June Mar', 'Fajardo', 'Pivot', 'Non', 32);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Roger', 'Pogoy', 'Arriere', 'Non', 32);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Jaymar', 'Perez', 'Arriere', 'Non', 32);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Troy', 'Rosario', 'Ailier', 'Non', 32);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Raymond', 'Almazan', 'Pivot', 'Non', 32);
    INSERT INTO Joueur(prenom_joueur, nom_joueur, poste_joueur, capitaine, id_equipe) VALUES ('Japeth', 'Aguilar', 'Ailier fort', 'Oui', 32);

    -- Premier tour
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-08-31','YYYY-MM-DD'), 'Non', 'GROUPE D', 59, 105, 27, 5);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-08-31','YYYY-MM-DD'), 'Non', 'GROUPE A', 80, 69, 8, 14);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-08-31','YYYY-MM-DD'), 'Non', 'GROUPE B', 82, 77, 12, 17);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-08-31','YYYY-MM-DD'), 'Non', 'GROUPE C', 81, 83, 23, 15);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-08-31','YYYY-MM-DD'), 'Non', 'GROUPE D', 62, 108, 32, 10);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-08-31','YYYY-MM-DD'), 'Non', 'GROUPE A', 55, 70, 29, 24);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-08-31','YYYY-MM-DD'), 'Non', 'GROUPE B', 95, 69, 2, 26);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-08-31','YYYY-MM-DD'), 'Non', 'GROUPE C', 101, 62, 1, 20);

    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-01','YYYY-MM-DD'), 'Non', 'GROUPE H', 92, 108, 21, 4);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-01','YYYY-MM-DD'), 'Non', 'GROUPE F', 94, 102, 19, 13);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-01','YYYY-MM-DD'), 'Non', 'GROUPE E', 86, 67, 22, 31);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-01','YYYY-MM-DD'), 'Non', 'GROUPE G', 80, 76, 16, 28);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-01','YYYY-MM-DD'), 'Non', 'GROUPE H', 47, 101, 30, 9);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-01','YYYY-MM-DD'), 'Non', 'GROUPE F', 85, 60, 11, 25);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-01','YYYY-MM-DD'), 'Non', 'GROUPE E', 67, 88, 6, 7);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-01','YYYY-MM-DD'), 'Non', 'GROUPE G', 78, 74, 3, 18);

    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-02','YYYY-MM-DD'), 'Non', 'GROUPE D', 92, 61, 10, 27);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-02','YYYY-MM-DD'), 'Non', 'GROUPE A', 87, 71, 14, 29);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-02','YYYY-MM-DD'), 'Non', 'GROUPE B', 81, 94, 17, 2);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-02','YYYY-MM-DD'), 'Non', 'GROUPE C', 79, 67, 20, 23);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-02','YYYY-MM-DD'), 'Non', 'GROUPE D', 126, 67, 5, 32);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-02','YYYY-MM-DD'), 'Non', 'GROUPE A', 76, 79, 24, 8);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-02','YYYY-MM-DD'), 'Non', 'GROUPE B', 73, 87, 26, 12);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-02','YYYY-MM-DD'), 'Non', 'GROUPE C', 63, 73, 15, 1);

    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-03','YYYY-MM-DD'), 'Non', 'GROUPE H', 81, 68, 4, 30);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-03','YYYY-MM-DD'), 'Non', 'GROUPE F', 83, 93, 25, 19);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-03','YYYY-MM-DD'), 'Non', 'GROUPE E', 76, 89, 31, 6);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-03','YYYY-MM-DD'), 'Non', 'GROUPE G', 68, 70, 18, 16);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-03','YYYY-MM-DD'), 'Non', 'GROUPE H', 92, 69, 9, 21);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-03','YYYY-MM-DD'), 'Non', 'GROUPE F', 79, 78, 13, 11);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-03','YYYY-MM-DD'), 'Non', 'GROUPE E', 93, 92, 7, 22);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-03','YYYY-MM-DD'), 'Non', 'GROUPE G', 64, 103, 28, 3);

    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-04','YYYY-MM-DD'), 'Non', 'GROUPE D', 84, 81, 27, 32);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-04','YYYY-MM-DD'), 'Non', 'GROUPE A', 63, 80, 29, 8);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-04','YYYY-MM-DD'), 'Non', 'GROUPE B', 66, 108, 26, 17);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-04','YYYY-MM-DD'), 'Non', 'GROUPE C', 67, 64, 15, 20);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-04','YYYY-MM-DD'), 'Non', 'GROUPE D', 77, 92, 10, 5);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-04','YYYY-MM-DD'), 'Non', 'GROUPE A', 72, 59, 14, 24);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-04','YYYY-MM-DD'), 'Non', 'GROUPE B', 61, 69, 12, 2);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-04','YYYY-MM-DD'), 'Non', 'GROUPE C', 73, 65, 1, 23);

    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-05','YYYY-MM-DD'), 'Non', 'GROUPE H', 82, 60, 21, 30);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-05','YYYY-MM-DD'), 'Non', 'GROUPE F', 84, 73, 13, 25);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-05','YYYY-MM-DD'), 'Non', 'GROUPE E', 76, 91, 22, 6);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-05','YYYY-MM-DD'), 'Non', 'GROUPE G', 96, 62, 18, 28);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-05','YYYY-MM-DD'), 'Non', 'GROUPE H', 82, 87, 9, 4);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-05','YYYY-MM-DD'), 'Non', 'GROUPE F', 103, 97, 11, 19);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-05','YYYY-MM-DD'), 'Non', 'GROUPE E', 98, 45, 7, 31);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-05','YYYY-MM-DD'), 'Non', 'GROUPE G', 56, 90, 8, 3);

    -- Deuxieme tour
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-06','YYYY-MM-DD'), 'Non', 'GROUPE I', 79, 74, 8, 12);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-06','YYYY-MM-DD'), 'Non', 'GROUPE M', 83, 66, 17, 29);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-06','YYYY-MM-DD'), 'Non', 'GROUPE N', 62, 71, 27, 23);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-06','YYYY-MM-DD'), 'Non', 'GROUPE J', 90, 47, 5, 15);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-06','YYYY-MM-DD'), 'Non', 'GROUPE I', 87, 67, 2, 14);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-06','YYYY-MM-DD'), 'Non', 'GROUPE M', 77, 73, 24, 26);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-06','YYYY-MM-DD'), 'Non', 'GROUPE N', 86, 67, 20, 32);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-06','YYYY-MM-DD'), 'Non', 'GROUPE J', 67, 60, 1, 10);

    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-07','YYYY-MM-DD'), 'Non', 'GROUPE O', 111, 81, 19, 31);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-07','YYYY-MM-DD'), 'Non', 'GROUPE L', 82, 76, 4, 16);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-07','YYYY-MM-DD'), 'Non', 'GROUPE P', 126, 71, 21, 28);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-07','YYYY-MM-DD'), 'Non', 'GROUPE K', 71, 93, 13, 6);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-07','YYYY-MM-DD'), 'Non', 'GROUPE O', 79, 74, 22, 25);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-07','YYYY-MM-DD'), 'Non', 'GROUPE L', 78, 75, 3, 9);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-07','YYYY-MM-DD'), 'Non', 'GROUPE P', 89, 78, 18, 30);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-07','YYYY-MM-DD'), 'Non', 'GROUPE K', 69, 53, 7, 11);

    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-08','YYYY-MM-DD'), 'Non', 'GROUPE I', 60, 69, 14, 12);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-08','YYYY-MM-DD'), 'Non', 'GROUPE M', 71, 80, 29, 26);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-08','YYYY-MM-DD'), 'Non', 'GROUPE N', 86, 84, 20, 27);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-08','YYYY-MM-DD'), 'Non', 'GROUPE J', 89, 94, 15, 10);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-08','YYYY-MM-DD'), 'Non', 'GROUPE H', 65, 91, 8, 2);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-08','YYYY-MM-DD'), 'Non', 'GROUPE F', 73, 86, 24, 17);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-08','YYYY-MM-DD'), 'Non', 'GROUPE E', 95, 75, 23, 32);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-08','YYYY-MM-DD'), 'Non', 'GROUPE G', 81, 69, 1, 5);

    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-09','YYYY-MM-DD'), 'Non', 'GROUPE O', 65, 80, 31, 25);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-09','YYYY-MM-DD'), 'Non', 'GROUPE L', 55, 74, 8, 9);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-09','YYYY-MM-DD'), 'Non', 'GROUPE P', 79, 77, 28, 30);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-09','YYYY-MM-DD'), 'Non', 'GROUPE K', 77, 84, 6, 11);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-09','YYYY-MM-DD'), 'Non', 'GROUPE O', 101, 102, 22, 19);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-09','YYYY-MM-DD'), 'Non', 'GROUPE L', 98, 100, 3, 4);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-09','YYYY-MM-DD'), 'Non', 'GROUPE P', 82, 76, 18, 21);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-09','YYYY-MM-DD'), 'Non', 'GROUPE K', 89, 73, 7, 13);

    -- Quart de finale
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-10','YYYY-MM-DD'), 'Oui', 'QUART DE FINALE', 97, 87, 2, 5);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-10','YYYY-MM-DD'), 'Oui', 'QUART DE FINALE', 90, 78, 1, 8);

    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-11','YYYY-MM-DD'), 'Oui', 'QUART DE FINALE', 79, 89, 7, 3);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-11','YYYY-MM-DD'), 'Oui', 'QUART DE FINALE', 82, 70, 4, 6);

    -- Classement 5-8
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-12','YYYY-MM-DD'), 'Non', 'CLASSIFICATION 5-8', 94, 89, 5, 7);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-12','YYYY-MM-DD'), 'Non', 'CLASSIFICATION 5-8', 84, 94, 8, 6);

    -- Demi finale
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-13','YYYY-MM-DD'), 'Oui', 'DEMI FINALE', 95, 88, 1, 4);
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-13','YYYY-MM-DD'), 'Oui', 'DEMI FINALE', 80, 66, 2, 3);

    -- Classement 5-8
    -- 7e et 8e places
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-14','YYYY-MM-DD'), 'Non', 'CLASSIFICATION 5-8', 87, 74, 7, 8);
    -- 5e et 6e places
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-14','YYYY-MM-DD'), 'Non', 'CLASSIFICATION 5-8', 90, 81, 5, 6);

    -- 3e place
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-15','YYYY-MM-DD'), 'Oui', '3E PLACE', 67, 59, 3, 4);
    -- Finale
    INSERT INTO Matchs(date_match,elim_directe,type,score_equipe1,score_equipe2,id_equipe1,id_equipe2) VALUES (TO_DATE('2019-09-15','YYYY-MM-DD'), 'Oui', 'FINALE', 75, 95, 2, 1);

SELECT * FROM dual;
