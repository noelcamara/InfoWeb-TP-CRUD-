DROP TABLE IF EXISTS Matchs;
DROP TABLE IF EXISTS Joueur;
DROP TABLE IF EXISTS Equipe;

CREATE TABLE Equipe (
    id_equipe SERIAL PRIMARY KEY NOT NULL,
    nom_equipe VARCHAR(50),
    nb_victoire INT,
    nb_defaite INT,
    nb_points INT
);

CREATE TABLE Joueur (
    id_joueur SERIAL PRIMARY KEY NOT NULL,
    prenom_joueur VARCHAR(50),
    nom_joueur VARCHAR(50),
    poste_joueur VARCHAR(11) CHECK (poste_joueur IN ('Meneur', 'Arrière', 'Ailier', 'Ailier fort', 'Pivot')),
    capitaine VARCHAR(3) CHECK (capitaine IN ('Oui', 'Non')),
    id_equipe INT NOT NULL,
    FOREIGN KEY (id_equipe) REFERENCES Equipe(id_equipe)
);

-- On a renommé Match en Matchs car Match est une reqûete sql
CREATE TABLE Matchs (
    id_match SERIAL PRIMARY KEY NOT NULL,
    date_match DATE,
    elim_directe VARCHAR(3) CHECK (elim_directe IN ('Oui', 'Non')),
    type VARCHAR(30) CHECK (type IN ('GROUPE A', 'GROUPE B', 'GROUPE C', 'GROUPE D',
      'GROUPE E', 'GROUPE F', 'GROUPE G', 'GROUPE H', 'GROUPE I', 'GROUPE J',
      'GROUPE K', 'GROUPE L', 'GROUPE M', 'GROUPE N', 'GROUPE O', 'GROUPE P',
      'QUART DE FINALE', 'DEMI FINALE', 'FINALE', '3E PLACE', 'CLASSIFICATION 5-8', '5E PLACE', '7E PLACE')),
    score_equipe1 INT,
    score_equipe2 INT,
    id_equipe1 INT NOT NULL,
    FOREIGN KEY (id_equipe1) REFERENCES Equipe(id_equipe),
    id_equipe2 INT NOT NULL,
    FOREIGN KEY (id_equipe2) REFERENCES Equipe(id_equipe)
);
