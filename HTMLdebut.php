<?php
function getDebutHTML(): string {
    $res = getListeTables();
    return "
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset='utf-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <title>Championnat Basket</title>
    <link rel='stylesheet' href='css/main.css'>
    <script defer src='https://use.fontawesome.com/releases/v5.3.1/js/all.js'></script>
    </head>
    <body>
    <section id='titre' class='hero is-primary'>
      <div class='hero-body'>
        <div class='container is-widescreen'>
          <div class='columns'>
            <div class='column'>
              <div class='level-item'>
                <figure class='image is-96x96'><img src='images/LogoBasket.png' alt='Championnat du monde de Basketball 2019' title='Championnat du monde de Basketball 2019'/></figure>
              </div>
            </div>
            <div class='column is-8-desktop is-offset-2-desktop'>
              <h1 class='title is-2 is-spaced has-text-centered'>Championnat du monde de Basketball 2019</h1>
                <h2 class='subtitle is-4 has-text-centered'>
                  <p>La 18e édition du Championnat du monde de basketball 2019<br>a eu lieu du 31 août au 15 septembre 2019 en Chine.</p>
                </h2>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section id='corps' class='section'>
      <div class='container'>
        <div class='columns'>
          <div class='column is-one-fifth is-hidden-mobile'>
            <aside class='menu'>
            <p class='menu-label'>Tables</p>
            <ul class='menu-list'>
              ".$res."
            </ul>
            </aside>
          </div>

          <div class='container is-widescreen'>
            <nav class='breadcrumb is-left' aria-label='breadcrumbs'>
              <ul>
                <li><a href='index.php'><span class='icon is-small'><i class='fas fa-home' aria-hidden='true'></i></span>
                   <span>Accueil</span></a></li>
              </ul>
            </nav>";
    }

    function getListeTables(): string {

        return "
            <li><a href='index.php?action=selectionnerTable&table_name=Equipe'>Equipe</a></li>\n
            <li><a href='index.php?action=selectionnerTable&table_name=Joueur'>Joueur</a></li>\n
            <li><a href='index.php?action=selectionnerTable&table_name=Matchs'>Matchs</a></li>\n
            ";
    }
?>
