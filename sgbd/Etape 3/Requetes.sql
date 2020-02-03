1. Donner une requête filtrant des données à l'aide d'une expression rationnelle (REGEXP) surun champ textuel.
    -- Donne le nom et le prénom des joueurs dont le prénom commence par A
    Mysql: SELECT nom_joueur, prenom_joueur FROM Joueur WHERE prenom_joueur REGEXP '^A';
    Pgsql: SELECT nom_joueur, prenom_joueur FROM Joueur WHERE prenom_joueur ~ '^A';
    Oracle: SELECT nom_joueur, prenom_joueur FROM Joueur WHERE REGEXP_LIKE(prenom_joueur,'^A');

2. Donner quatre requêtes différentes mettant en œuvre des jointures internes, pour chacune de ces jointures au moins deux syntaxes devront être présentées.
De plus pour chacune de ces requêtes, vous proposerez au moins une version alternative mettant en œuvre une jointure externe,
dans le cas où ce type de jointure ne donne pas de résultats différents aux précédentes avec votre modèle, vous en soulignerez les raisons.
-- On a fait seulement 3 jointures différentes qui relient les tables entre elles, car nous n'avons que 3 tables
    A) Jointures entre la table Equipe et la table Joueur
        -- Donne toutes les données des tables Equipe et Joueur
        -- Jointures internes
        Mysql: SELECT * FROM Equipe E, Joueur J WHERE E.id_equipe = J.id_equipe;
               SELECT * FROM Equipe E INNER JOIN Joueur J ON E.id_equipe = J.id_equipe;
               SELECT * FROM Equipe E NATURAL JOIN Joueur J;
        Pgsql: SELECT * FROM Equipe E, Joueur J WHERE E.id_equipe = J.id_equipe;
               SELECT * FROM Equipe E INNER JOIN Joueur J ON E.id_equipe = J.id_equipe;
               SELECT * FROM Equipe E NATURAL JOIN Joueur J;
        Oracle: SELECT * FROM Equipe E, Joueur J WHERE E.id_equipe = J.id_equipe;
                SELECT * FROM Equipe E INNER JOIN Joueur J ON E.id_equipe = J.id_equipe;
                SELECT * FROM Equipe E NATURAL JOIN Joueur J;

        -- Jointure externe
        Mysql: SELECT * FROM Equipe E LEFT JOIN Joueur J ON E.id_equipe = J.id_equipe;
        Pgsql: SELECT * FROM Equipe E LEFT JOIN Joueur J ON E.id_equipe = J.id_equipe;
        Oracle: SELECT * FROM Equipe E LEFT OUTER JOIN Joueur J ON E.id_equipe = J.id_equipe;

    B) Jointures entre la table Equipe et la table Matchs
        -- Donne toutes les données des tables Equipe et Matchs || Pas de NATURAL JOIN ici car les deux tables ne partagent aucunes colonnes similaires
        -- Jointures internes
        Mysql: SELECT * FROM Equipe E, Matchs M WHERE E.id_equipe = M.id_equipe1 OR E.id_equipe = M.id_equipe2;
               SELECT * FROM Equipe E INNER JOIN Matchs M ON E.id_equipe = M.id_equipe1 OR E.id_equipe = M.id_equipe2;
        Pgsql: SELECT * FROM Equipe E, Matchs M WHERE E.id_equipe = M.id_equipe1 OR E.id_equipe = M.id_equipe2;
               SELECT * FROM Equipe E INNER JOIN Matchs M ON E.id_equipe = M.id_equipe1 OR E.id_equipe = M.id_equipe2;
        Oracle: SELECT * FROM Equipe E, Matchs M WHERE E.id_equipe = M.id_equipe1 OR E.id_equipe = M.id_equipe2;
                SELECT * FROM Equipe E INNER JOIN Matchs M ON E.id_equipe = M.id_equipe1 OR E.id_equipe = M.id_equipe2;

        -- Jointure externe
        Mysql: SELECT * FROM Equipe E LEFT JOIN Matchs M ON E.id_equipe = M.id_equipe1 OR E.id_equipe = M.id_equipe2;
        Pgsql: SELECT * FROM Equipe E LEFT JOIN Matchs M ON E.id_equipe = M.id_equipe1 OR E.id_equipe = M.id_equipe2;
        Oracle: SELECT * FROM Equipe E LEFT OUTER JOIN Matchs M ON E.id_equipe = M.id_equipe1 OR E.id_equipe = M.id_equipe2;

    C) Jointures entre la table Joueur et la table Matchs
        -- Donne toutes les données des tables Joueur, Equipe et Matchs || Pas de NATURAL JOIN ici car les deux tables ne partagent aucunes colonnes similaires
        -- Jointures internes
        Mysql: SELECT * FROM Joueur J, Equipe E, Matchs M WHERE J.id_equipe = E.id_equipe AND (E.id_equipe = M.id_equipe1 or E.id_equipe = M.id_equipe2);
               SELECT * FROM Joueur J INNER JOIN Equipe E ON J.id_equipe = E.id_equipe INNER JOIN Matchs M ON E.id_equipe = M.id_equipe1 OR E.id_equipe = M.id_equipe2;
        Pgsql: SELECT * FROM Joueur J, Equipe E, Matchs M WHERE J.id_equipe = E.id_equipe AND E.id_equipe = M.id_equipe1 OR E.id_equipe = M.id_equipe2;
               SELECT * FROM Joueur J INNER JOIN Equipe E ON J.id_equipe = E.id_equipe INNER JOIN Matchs M ON E.id_equipe = M.id_equipe1 OR E.id_equipe = M.id_equipe2;
        Oracle: SELECT * FROM Joueur J, Equipe E, Matchs M WHERE J.id_equipe = E.id_equipe AND E.id_equipe = M.id_equipe1 OR E.id_equipe = M.id_equipe2;
                SELECT * FROM Joueur J INNER JOIN Equipe E ON J.id_equipe = E.id_equipe INNER JOIN Matchs M ON E.id_equipe = M.id_equipe1 OR E.id_equipe = M.id_equipe2;

        -- Jointure externe
        Mysql: SELECT * FROM Joueur J LEFT JOIN Equipe E ON J.id_equipe = E.id_equipe LEFT JOIN Matchs M ON E.id_equipe = M.id_equipe1 OR E.id_equipe = M.id_equipe2;
        Pgsql: SELECT * FROM Joueur J LEFT JOIN Equipe E ON J.id_equipe = E.id_equipe LEFT JOIN Matchs M ON E.id_equipe = M.id_equipe1 OR E.id_equipe = M.id_equipe2;
        Oracle: SELECT * FROM Joueur J LEFT OUTER JOIN Equipe E ON J.id_equipe = E.id_equipe LEFT OUTER JOIN Matchs M ON E.id_equipe = M.id_equipe1 OR E.id_equipe = M.id_equipe2;

3. Donner une requête utilisant UNION
    -- Donne le nom de l'équipe, le type de match (Groupe A, Groupe B ...) des matchs effectués entre le 31 aout 2019 et le 1er septembre 2019
    Mysql: SELECT nom_equipe, type FROM Equipe E INNER JOIN Matchs M ON E.id_equipe = M.id_equipe1 WHERE date_match = '2019-08-31'
           UNION SELECT nom_equipe, type FROM Equipe E INNER JOIN Matchs M ON E.id_equipe = M.id_equipe1 WHERE date_match = '2019-09-01';
    Pgsql: SELECT nom_equipe, type FROM Equipe E INNER JOIN Matchs M ON E.id_equipe = M.id_equipe1 WHERE date_match = '2019-08-31'
           UNION SELECT nom_equipe, type FROM Equipe E INNER JOIN Matchs M ON E.id_equipe = M.id_equipe1 WHERE date_match = '2019-09-01';
    Oracle: SELECT nom_equipe, type FROM Equipe E INNER JOIN Matchs M ON E.id_equipe = M.id_equipe1 WHERE date_match = (TO_DATE('2019-09-01','YYYY-MM-DD'))
            UNION SELECT nom_equipe, type FROM Equipe E INNER JOIN Matchs M ON E.id_equipe = M.id_equipe1 WHERE date_match = (TO_DATE('2019-09-01','YYYY-MM-DD'));

4. Donner une requête utilisant EXCEPT
    -- Donne tous les joueurs qui sont capitaine de leur équipe
    -- EXCEPT et MINUS n'existent pas pour MySQL
    Mysql: SELECT * FROM Joueur WHERE capitaine NOT IN ('Non');
    Pgsql: SELECT * FROM Joueur EXCEPT SELECT * FROM Joueur WHERE capitaine = 'Non';
    Oracle: SELECT * FROM Joueur MINUS SELECT * FROM Joueur WHERE capitaine = 'Non';

5. Donner les requêtes mettant en œuvre les sous-requêtes suivantes
    a) Une sous-requête dans la clause WHERE via l opérateur =
        -- Donne le nom de l'équipe qui possède le joueur ayant le nom 'Mahmutoglu'
        Mysql: SELECT nom_equipe FROM Equipe E WHERE E.id_equipe = (SELECT id_equipe FROM Joueur WHERE nom_joueur = 'Mahmutoglu');
        Pgsql: SELECT nom_equipe FROM Equipe E WHERE E.id_equipe = (SELECT id_equipe FROM Joueur WHERE nom_joueur = 'Mahmutoglu');
        Oracle: SELECT nom_equipe FROM Equipe E WHERE E.id_equipe = (SELECT id_equipe FROM Joueur WHERE nom_joueur = 'Mahmutoglu');

    b) Une sous-requête dans la clause WHERE via l opérateur IN
        -- Donne le nom des équipes qui ont entre 2 et 7 victoires
        Mysql: SELECT nom_equipe FROM Equipe WHERE id_equipe IN (SELECT id_equipe FROM Joueur WHERE prenom_joueur = 'Rui');
        Pgsql: SELECT nom_equipe FROM Equipe WHERE id_equipe IN (SELECT id_equipe FROM Joueur WHERE prenom_joueur = 'Rui');
        Oracle: SELECT nom_equipe FROM Equipe WHERE id_equipe IN (SELECT id_equipe FROM Joueur WHERE prenom_joueur = 'Rui');

    c) Une sous requête dans la clause FROM
        -- Donne les joueurs dont le poste est 'Meneur'
        Mysql: SELECT nom_joueur, prenom_joueur FROM (SELECT * FROM Joueur WHERE poste_joueur = 'Meneur') AS joueur;
        Pgsql: SELECT nom_joueur, prenom_joueur FROM (SELECT * FROM Joueur WHERE poste_joueur = 'Meneur') AS joueur;
        Oracle: SELECT nom_joueur, prenom_joueur FROM (SELECT * FROM Joueur WHERE poste_joueur = 'Meneur');

    d) Une sous-requête imbriquée dans une autre sous-requête
        -- Donne le nom et le prénom de chaque joueur dont le poste est capitaine
        Mysql: SELECT nom_joueur, prenom_joueur FROM (SELECT nom_joueur, prenom_joueur, poste_joueur FROM (SELECT * FROM Joueur WHERE capitaine = 'Oui') homme) AS joueur;
        Pgsql: SELECT nom_joueur, prenom_joueur FROM (SELECT nom_joueur, prenom_joueur, poste_joueur FROM (SELECT * FROM Joueur WHERE capitaine = 'Oui') homme) AS joueur;
        Oracle: SELECT nom_joueur, prenom_joueur FROM (SELECT nom_joueur, prenom_joueur, poste_joueur FROM (SELECT * FROM Joueur WHERE capitaine = 'Oui') homme);

    e) Une sous-requête synchronisée
        -- Donne le nom de tous les types de la table Matchs
        Mysql: SELECT DISTINCT type FROM Matchs syn1 WHERE id_equipe1 = (SELECT id_equipe FROM Equipe syn2 WHERE syn1.id_equipe1 = syn2.id_equipe) ORDER BY type;
        Pgsql: SELECT DISTINCT type FROM Matchs syn1 WHERE id_equipe1 = (SELECT id_equipe FROM Equipe syn2 WHERE syn1.id_equipe1 = syn2.id_equipe) ORDER BY type;
        Oracle: SELECT DISTINCT type FROM Matchs syn1 WHERE id_equipe1 = (SELECT id_equipe FROM Equipe syn2 WHERE syn1.id_equipe1 = syn2.id_equipe) ORDER BY type;

6. Donner un exemple de requête pouvant être réalisé avec une jointure ou avec une sous requête. Les deux requêtes devront être fournies.
    -- Donne le nom et le prénom des joueurs des équipes qui n'ont jamais gagné
    -- Jointure
    Mysql: SELECT nom_joueur, prenom_joueur FROM Joueur NATURAL JOIN Equipe WHERE Equipe.nb_victoire = 0;
    Pgsql: SELECT nom_joueur, prenom_joueur FROM Joueur NATURAL JOIN Equipe WHERE Equipe.nb_victoire = 0;
    Oracle: SELECT nom_joueur, prenom_joueur FROM Joueur NATURAL JOIN Equipe WHERE Equipe.nb_victoire = 0;

    -- Sous-requête
    Mysql: SELECT nom_joueur, prenom_joueur FROM Joueur WHERE id_Equipe IN (SELECT id_Equipe FROM Equipe WHERE Equipe.nb_victoire = 0);
    Pgsql: SELECT nom_joueur, prenom_joueur FROM Joueur WHERE id_Equipe IN (SELECT id_Equipe FROM Equipe WHERE Equipe.nb_victoire = 0);
    Oracle: SELECT nom_joueur, prenom_joueur FROM Joueur WHERE id_Equipe IN (SELECT id_Equipe FROM Equipe WHERE Equipe.nb_victoire = 0);

7. Donner deux requêtes différentes utilisant les fonctions d agrégation SQL
    -- Donne le nombre moyen de victoires des équipes dont le type de la table Matchs est 'Groupe C'
    Mysql: SELECT AVG(nb_victoire) FROM Equipe E JOIN Matchs M ON E.id_equipe = M.id_equipe1 WHERE M.type = 'GROUPE C';
    Pgsql: SELECT AVG(nb_victoire) FROM Equipe E JOIN Matchs M ON E.id_equipe = M.id_equipe1 WHERE M.type = 'GROUPE C';
    Oracle: SELECT AVG(nb_victoire) FROM Equipe E JOIN Matchs M ON E.id_equipe = M.id_equipe1 WHERE M.type = 'GROUPE C';

    -- Donne le nombre de joueurs dont le poste est 'Arrière'
    Mysql: SELECT COUNT(*) FROM Joueur J JOIN Equipe E ON J.id_equipe = E.id_equipe WHERE J.poste_joueur = 'Arrière';
    Pgsql: SELECT COUNT(*) FROM Joueur J JOIN Equipe E ON J.id_equipe = E.id_equipe WHERE J.poste_joueur = 'Arrière';
    Oracle: SELECT COUNT(*) FROM Joueur J JOIN Equipe E ON J.id_equipe = E.id_equipe WHERE J.poste_joueur = 'Arriere';

8. Donnez deux requêtes différentes utilisant les fonctions d agrégation et la clause GROUPBY
    -- Donne le nombre de joueur par poste
    Mysql: SELECT poste_joueur, COUNT(poste_joueur) FROM Joueur GROUP BY poste_joueur;
    Pgsql: SELECT poste_joueur, COUNT(poste_joueur) FROM Joueur GROUP BY poste_joueur;
    Oracle: SELECT poste_joueur, COUNT(poste_joueur) FROM Joueur GROUP BY poste_joueur;

    -- Donne le nombre de matchs par type
    Mysql: SELECT type, COUNT(id_match) FROM Matchs GROUP BY type;
    Pgsql: SELECT type, COUNT(id_match) FROM Matchs GROUP BY type;
    Oracle: SELECT type, COUNT(id_match) FROM Matchs GROUP BY type;

9. Donner deux exemples de mise en œuvre de la clause HAVING.
    -- Donne le nom des équipes ayant un nombre de points supérieur à 10
    Mysql: SELECT nom_equipe, nb_points FROM Equipe GROUP BY id_equipe HAVING SUM(nb_points) > 10;
    Pgsql: SELECT nom_equipe, nb_points FROM Equipe GROUP BY id_equipe HAVING SUM(nb_points) > 10;
    Oracle: SELECT nom_equipe, nb_points FROM Equipe GROUP BY nom_equipe, nb_points HAVING SUM(nb_points) > 10;

    -- Donne le nom des équipes ayant plus de 5 victoires
    Mysql: SELECT nom_equipe, nb_victoire FROM Equipe GROUP BY id_equipe HAVING SUM(nb_victoire) > 5;
    Pgsql: SELECT nom_equipe, nb_victoire FROM Equipe GROUP BY id_equipe HAVING SUM(nb_victoire) > 5;
    Oracle: SELECT nom_equipe, nb_victoire FROM Equipe GROUP BY nom_equipe, nb_victoire HAVING SUM(nb_points) > 10;

10. Donner une requête qui associe sur une même ligne des informations issues de deux enregistrements différents d’une même table, par exemple deux pays différents, deux personnes différentes, etc.
    -- Donne toutes les informations des joueurs dont l'identifiant est 1 et 2
    Mysql: SELECT joueurA.* , joueurB.* FROM (SELECT * FROM Joueur WHERE id_joueur = 1) AS joueurA, (SELECT * FROM Joueur WHERE id_joueur = 2) AS joueurB;
    Pgsql: SELECT joueurA.* , joueurB.* FROM (SELECT * FROM Joueur WHERE id_joueur = 1) AS joueurA, (SELECT * FROM Joueur WHERE id_joueur = 2) AS joueurB;
    Oracle: SELECT * FROM (SELECT * FROM Joueur WHERE id_joueur = 1), (SELECT * FROM Joueur WHERE id_joueur = 2);
