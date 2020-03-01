<?php

namespace projet_php;

class VueEntite
{
    /**
     * production d'une string contenant un formulaire HTML
     * destiné à saisir une nouvelle Entite ou à modifier une Entite existante
     * @param array $assoc
     * @return string
     */

    public function getForm4Entity(array $assoc, $action): string
    {
        $ch = "<form action='" . $_SERVER['PHP_SELF'] . "' method='GET'>\n";
        foreach ($assoc as $col => $val) {
            if (is_array($val)) {
                if ($val['type'] == 'hidden') {
                    $ch .= "<input name='$col' type='" . $val['type']
                        . "' value='" . $val['default'] . "' />\n";

                } else if ($val['type'] == 'select'){
                    $ch .= "$col : <select name='$col' type='" . $val['type']."'>";
                    foreach ($val['options'] as $option) {
                        $ch .= "<option value='". $option ."'>" . $option ."</option>";
                    }
                     $ch .= "</select> ";

                } else {
                    $ch .= "$col : <input name='$col' type='" . $val['type']
                        . "' value='" . $val['default'] . "' min='" . $val['min']
                        . "' max='" . $val['max'] . "' />\n";
                }
            } else {
                $ch .= "$col : <input type='$val' name='$col' />\n";
            }
        }

        $ch .= "<br><input type='submit' name='Valider' value='Sauver'/>\n";
        $ch .= "<input id='action' name='action' type='hidden' value='" . $action . "'>";
        return $ch . "</form>\n";
    }
}
