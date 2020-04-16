<?php

namespace App\src\model;

use Exception;

class View
{
    private $file;
    private $title;

    public function render($template, $data = [])
    {
        //on recupere le fichier + les datas qui corespondent (home et single )
        $this->file = '../templates/'.$template.'.php';
        $content  = $this->generateFile($this->file, $data);
        $view = $this->generateFile('../templates/base.php', [
            'title' => $this->title,
            'content' => $content
        ]);
        echo $view;
    }

    private function generateFile($file, $data)
    {
        if(file_exists($file)){
            extract($data);
            ob_start();
            require $file;
            return ob_get_clean();
        }
        throw new Exception('fichier '.$file.'introuvable');
    }
}