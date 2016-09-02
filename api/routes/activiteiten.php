<?php


require_once WWW_ROOT . 'api' . DIRECTORY_SEPARATOR . 'Util.php';
//require_once WWW_ROOT . 'dao' . DIRECTORY_SEPARATOR . 'UsersDAO.php';
require_once WWW_ROOT . 'dao' . DIRECTORY_SEPARATOR . 'ActivityDAO.php';
//require_once WWW_ROOT . 'dao' . DIRECTORY_SEPARATOR . 'AudioDAO.php';
//require_once WWW_ROOT . 'dao' . DIRECTORY_SEPARATOR . 'BoardDAO.php';
//define("WWW_ROOT", dirname(dirname(__FILE__)) . DIRECTORY_SEPARATOR);
//require_once WWW_ROOT . 'php-image-resize' . DIRECTORY_SEPARATOR . 'ImageResize.php';



$activityDAO = new ActivityDAO();
//$audioDAO = new AudioDAO();
//$boardDAO = new BoardDAO();

$app->get('/activiteiten/?',function() use ($activityDAO){
    //echo json_encode($_SESSION['inspiration']['user']);
    Util::json($activityDAO->selectAll());
    echo json_encode($activityDAO->selectAll(), JSON_NUMERIC_CHECK);
    
    //echo "nu user";
    exit();
});

$app->get('/activiteiten/type/:type?',function($type) use ($activityDAO){
    //echo json_encode($_SESSION['inspiration']['user']);
    Util::json($activityDAO->selectByType($type));
    echo json_encode($activityDAO->selectByType($type), JSON_NUMERIC_CHECK);
    
    //echo "nu user";
    exit();
});

$app->get('/activiteiten/search/:search?/:user_id?',function($search, $userId) use ($activityDAO){
    //echo json_encode($_SESSION['inspiration']['user']);
    Util::json($activityDAO->selectBySearch($search, $userId));
    echo json_encode($activityDAO->selectBySearch($search, $userId), JSON_NUMERIC_CHECK);
    
    //echo "nu user";
    exit();
});

$app->get('/audio/search/:search?/:user_id?',function($search, $userId) use ($audioDAO){
    //echo json_encode($_SESSION['inspiration']['user']);
    Util::json($audioDAO->selectBySearch($search, $userId));
    echo json_encode($audioDAO->selectBySearch($search, $userId), JSON_NUMERIC_CHECK);
    
    //echo "nu user";
    exit();
});

$app->get('/audio/boardId/:boardid?',function($boardId) use ($audioDAO){
    //echo json_encode($_SESSION['inspiration']['user']);
    Util::json($audioDAO->selectByBoardId($boardId));
    echo json_encode($audioDAO->selectByBoardId($boardId), JSON_NUMERIC_CHECK);
    
    //echo "nu user";
    exit();
});

$app->get('/boards/?',function() use ($boardDAO){
    //echo json_encode($_SESSION['inspiration']['user']);
    Util::json($boardDAO->selectAll());
    echo json_encode($boardDAO->selectAll(), JSON_NUMERIC_CHECK);
    
    //echo "nu user";
    exit();
});

$app->get('/boards/userid/:user_id/?', function($user_id) use ($boardDAO){
    Util::json($boardDAO->selectByUserId($user_id));
    echo json_encode($boardDAO->selectByUserId($user_id), JSON_NUMERIC_CHECK);
    exit();
});

$app->get('/boards/boardId/:board_id/?', function($boardid) use ($boardDAO){
    Util::json($boardDAO->selectByBoardId($boardid));
    echo json_encode($boardDAO->selectByBoardId($boardid), JSON_NUMERIC_CHECK);
    exit();
});

$app->post('/boards/?', function() use ($app, $boardDAO){
    //header("Content-Type: application/json");
    
        $post = $app->request->post();

        if(empty($post)){
        $post = (array) json_decode($app->request()->getBody());
    }
        
        $board =$boardDAO->insert($post['title'], $post['user_id']);
        return Util::json($board);
    
   

});

$app->get('/activiteiten/:id/?', function($id) use ($activityDAO){
    Util::json($activityDAO->selectById($id));
    echo json_encode($activityDAO->selectById($id), JSON_NUMERIC_CHECK);
    exit();
});

$app->post('/activiteiten/?', function() use ($app, $activityDAO){
    //header("Content-Type: application/json");
    
        $post = $app->request->post();
        if(empty($post)){
        $post = (array) json_decode($app->request()->getBody());
    }
        $imageMimeTypes = array('image/jpeg', 'image/png', 'image/gif');
        if (empty($_FILES['photo']) || strlen($_FILES['photo']['tmp_name']) == 0) {
           // $photo_url = $_SESSION['inspiration']['user']['photo_url'];
        }
        elseif (in_array($_FILES['photo']['type'], $imageMimeTypes)) {
            $targetFile = WWW_ROOT . 'uploads' . DIRECTORY_SEPARATOR . $_FILES['photo']['name'];
            $pos = strrpos($targetFile, '.');
            $ext = substr($targetFile, $pos + 1);
            $filename = WWW_ROOT . 'uploads' . DIRECTORY_SEPARATOR . uniqid();
            
            $i = 0;
            while (file_exists($targetFile)) {
                $i++;
                $targetFile = $filename . $i . '.' . $ext;
            }
        $image = new Eventviva\ImageResize($_FILES['photo']['tmp_name']);
        $image->resizeToHeight(300);
        $photo_url = str_replace(WWW_ROOT, '', $targetFile);
        $image->save(WWW_ROOT . $photo_url);
        $user_id = $post['user_id'];
        $board_id = $post['board_id'];
        //move_uploaded_file($_FILES['photo']['tmp_name'], $targetFile);
           
        }
      
        $image = $activityDAO->insert($_POST['title'], $photo_url, $user_id, $board_id);
        return Util::json($image);
    
   

});



$app->post('/audio/?', function() use ($app, $audioDAO){
    //header("Content-Type: application/json");
    
        $post = $app->request->post();
        if(empty($post)){
        $post = (array) json_decode($app->request()->getBody());
    }
        $audioMimeTypes = array('audio/mpeg', 'audio/wav', 'audio/mpeg3', 'audio/mp3');
        if (empty($_FILES['audio']) || strlen($_FILES['audio']['tmp_name']) == 0) {
           // $photo_url = $_SESSION['inspiration']['user']['photo_url'];
        }
        elseif (in_array($_FILES['audio']['type'], $audioMimeTypes)) {
            $targetFile = WWW_ROOT . 'uploads/audio' . DIRECTORY_SEPARATOR . $_FILES['audio']['name'];
            $pos = strrpos($targetFile, '.');
            $ext = substr($targetFile, $pos + 1);
             $filename = WWW_ROOT . 'uploads/audio' . DIRECTORY_SEPARATOR . uniqid();
            
            $i = 0;
            while (file_exists($targetFile)) {
                $i++;
                $targetFile = $filename . $i . '.' . $ext;
            }
        //$image = new Eventviva\ImageResize($_FILES['photo']['tmp_name']);
        //$image->resizeToHeight(300);
        $audio_url = str_replace(WWW_ROOT, '', $targetFile);
        move_uploaded_file($_FILES['audio']['tmp_name'], $targetFile);
        $user_id = $post['user_id'];
        $board_id = $post['board_id'];
        //move_uploaded_file($_FILES['photo']['tmp_name'], $targetFile);
           
        }
      
        $targetFile = $audioDAO->insert($_POST['title'], $audio_url, $user_id, $board_id);
        return Util::json($targetFile);
    
   

});

$app->delete('/activiteiten/:id/?', function($id) use ($activityDAO){
    header("Content-Type: application/json");
    echo json_encode($activityDAO->delete($id));
    exit();
});

$app->delete('/activiteiten/:id/?', function($id) use ($activityDAO){
    header("Content-Type: application/json");
    echo json_encode($activityDAO->delete($id));
    exit();
});

$app->delete('/boards/:id/?', function($id) use ($boardDAO){
    header("Content-Type: application/json");
    echo json_encode($boardDAO->delete($id));
    exit();
});

$app->put('/activiteiten/:id/?', function($id) use ($app, $activityDAO){
    header("Content-Type: application/json");
    $post = $app->request->post();
    if(empty($post)){
        $post = (array) json_decode($app->request()->getBody());
    }
    echo json_encode($activityDAO->update($id, $post), JSON_NUMERIC_CHECK);
    exit();
});


$app->get('/activiteiten/tags/:tag/?', function($tag) use ($activityDAO){
    header("Content-Type: application/json");
    echo json_encode($activityDAO->selectByTag($tag), JSON_NUMERIC_CHECK);
    exit();
});




//GET -> /activiteiten/
//GET -> /activiteiten/:id
//POST -> /activiteiten/
//POST -> /activiteiten/
//DELETE -> /activiteiten/:id
//PUT -> /activiteiten/:id


//GET -> /activiteiten/tags/:tag => alle activiteiten met een specifieke hashtag ophalen

