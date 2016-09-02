<?php


require_once WWW_ROOT . 'api' . DIRECTORY_SEPARATOR . 'Util.php';
require_once WWW_ROOT . 'dao' . DIRECTORY_SEPARATOR . 'UsersDAO.php';
require_once WWW_ROOT . 'phpass' . DIRECTORY_SEPARATOR . 'Phpass.php';


$usersDAO = new UsersDAO();
//$hasher = new \Phpass\Hash;




$app->get('/users/:id/?', function ($id) use ($usersDAO) {
    // if (!empty($_SESSION['inspiration']['user'])) {
        $user = $usersDAO->selectById($id);
        return Util::json($user);
    //}
    // else {
    //     http_response_code(403);
    //     exit;
    // }
});

$app->post('/users/?', function() use ($app, $usersDAO){

    //header("Content-Type: application/json");
    $post = $app->request->post();
    if(empty($post)){
        $post = (array) json_decode($app->request()->getBody());
    }
    //print_r($post);
    $hasher = new \Phpass\Hash;
    $passwordHash = $hasher->hashPassword($post['password']);
                
    //$_SESSION['inspiration']['user'] = $post;

    $user = $usersDAO->selectByEmail($post['email']);

     if(count($user)==0){

    echo json_encode($usersDAO->insert($post, $passwordHash), JSON_NUMERIC_CHECK);

    }else{
            echo "nope";
             http_response_code(403);
             var_dump($user);
        }
    

    exit();
});


$app->post('/users/login/?', function() use ($app, $usersDAO){

    $post = $app->request->post();
    if(empty($post)){
        $post = (array) json_decode($app->request()->getBody());
    }

     $user = $usersDAO->selectByEmail($_POST['email']);
     $hasher = new \Phpass\Hash;
     //var_dump($user['password']);
            if(count($user)>0 && $hasher->checkPassword($_POST['password'], $user['password'])){
            
            //var_dump( $user['password']);
            return Util::json($user);

        }else{
            //echo "nope";
             http_response_code(403);
        }

});



$app->delete('/users/:id/?', function ($id) {
    if (!empty($_SESSION['inspiration']['user']) && $_SESSION['inspiration']['user']['id'] == $id) {
        unset($_SESSION['inspiration']['user']);
        http_response_code(200);
        exit;
    }
    else {

        // return bad request http code (zie https://tools.ietf.org/html/rfc7231#section-6.5.1)
        http_response_code(400);
        exit;
    }
});

