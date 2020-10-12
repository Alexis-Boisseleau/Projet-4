<?php
namespace App\src\DAO;

use App\config\Parameter;


class adminDAO extends DAO{

    public function admin(Parameter $post)
    {
        $sql = 'SELECT id, password FROM administration WHERE pseudo =?';
        $data = $this->createQuery($sql, [$post->get('pseudo')]);
        $result = $data->fetch();
        $MdpValide = password_verify($post->get('password'), $result['password']);
        return [
            'result' => $result,
            'MdpValide' =>  $MdpValide
        ];
    }


}
