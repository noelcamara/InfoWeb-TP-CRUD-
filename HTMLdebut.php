<?php

    function debutHTML(): string {
        return "
        <!DOCTYPE html>
        <html>
        <head>
        <meta charset=\"utf-8\">
        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">
        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
        <title>My first Bulma website</title>
        <link rel=\"stylesheet\" href=\"css/main.css\">
        </head>
        <body>
        <section id=\"titre\" class=\"hero is-primary\">
          <div class=\"hero-body\">
            <div class=\"container is-widescreen\">
              <div class=\"columns\">
                <div class=\"column\">
                  <div class=\"level-item\">
                    <a href=\"index.php\">
                        <figure class='image is-96x96'>
                            <img src=\"images/LogoBasket.png\" alt=\"Championnat du monde de Basketball 2019\" title=\"Championnat du monde de Basketball 2019\"/>
                        </figure>
                    </a>
                  </div>
                </div>
                <div class=\"column is-8-desktop is-offset-2-desktop\">
                  <h1 class=\"title is-2 is-spaced has-text-centered\">Championnat du monde de Basketball 2019</h1>
                    <h2 class=\"subtitle is-4 has-text-centered\">
                      <p>La 18e édition du Championnat du monde de basketball 2019<br>a eu lieu du 31 août au 15 septembre 2019 en Chine.</p>
                    </h2>
                </div>
              </div>
            </div>
          </div>
        </section>
        ";
    }

    function getListeTables(): string {

        return "
            <li><a href='index.php?action=selectionnerTable&table_name=Equipe'>Equipe</a></li>\n
            <li><a href='index.php?action=selectionnerTable&table_name=Joueur'>Joueur</a></li>\n
            <li><a href='index.php?action=selectionnerTable&table_name=Matchs'>Matchs</a></li>\n
            ";
    }

    function getTableMatiere(): string {
        $res = getListeTables();
        return "
            <section id=\"corps\" class=\"section\">
          <div class=\"container\">
            <div class=\"columns\">
              <div class=\"column is-one-fifth is-hidden-mobile\">
                <aside class=\"menu\">
                <p class=\"menu-label\">Tables</p>
                <ul class=\"menu-list\">
                  ".$res."
                </ul>
                  <p class=\"menu-label\">Groupes de poule</p>
                  <ul class=\"menu-list\">
                    <li><a>Groupe A</a></li>
                    <li><a>Groupe B</a></li>
                  </ul>
                  <p class=\"menu-label\"><a href='tables.php'>Equipes</a></p>
                  <ul class=\"menu-list\">
                    <li><a>Allemagne</a></li>
                    <li><a>Angola</a></li>
                  </ul>
                </aside>
              </div>
        </section>
        ";
    }
?>
