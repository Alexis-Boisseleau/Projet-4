<?php

namespace app\src\constraint;

class Constraint
{

public function notBlank($name, $value)
{
    if(empty($value)) {
        return '<p>le champs est vide </p>';
    }
}

public function minLength($name, $value, $minSize)
{
    if(strlen($value)<$minSize)  {
        return '<p>Le champs '.$name.' doit au moins contenir au moins'.$minSize.' caractères</p>';
    }
}

public function maxLength($name, $value, $maxSize)
{
    if(strlen($value)>$maxSize)  {
        return '<p>le champs '.$name.' doit contenir moins de '.$maxSize.' caractères</p>';
    }
}

}