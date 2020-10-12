<?php
namespace App\src\DAO;

use App\config\Parameter;

class adminDAO extends DAO{

    public function admin(Parameter $post)
    {
        $sql = 'SELECT id, mdp FROM administration WHERE pseudo =?';
        $data = $this->createQuery($sql, [$post->get('pseudo')]);
        $result = $data->fetch();
        $MdpValide = password_verify($post->get('mdp'), $result['mdp']);
        return [
            'result' => $result,
            'MdpValide' =>  $MdpValide
        ];
    }


}
