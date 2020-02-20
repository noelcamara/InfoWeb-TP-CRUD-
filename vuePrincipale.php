<?php

include 'config.php';
include 'html5_head.php';

	echo "<h1>Quelle table souhaitez vous modifier ? </h1></br></br>";

	echo "
            <table border='1'>
                  <tr>
                    <td>
                        Tables
                    </td>
                    <td>
                        Ajouter un enregistrement à la table
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href='table_equipe.php'><b>equipes</b></a>
                    </td>
                    <td>
                        <a href='form_equipe.php'>Ajouter</a>
                    </td>
                </tr>
            </table>

    ";


    include 'html5_footer.php';
?>
