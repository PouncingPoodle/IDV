<?php
    
    header("Access-Control-Allow-Origin:*");

    class User
    {
        public $id;
        public $username;
        public $email;
    }
    
    class Users
    {
        public $users;
    }

    require 'Slim/Slim.php';
    \Slim\Slim::registerAutoloader();
    
    $app = new \Slim\Slim();
    
    $app->get('/hello', function () {
        echo "Hello World!"; 
    });
    
    $app->get('/hello/:name', function ($name) {
        echo "Hello $name!"; 
    });
    
    $app->get('/user/:id', function ($id) {
        
        $user1 = new User;
        $user1->id = 1;
        $user1->username = 'The user';
        $user1->email = 'user@test.com';
        
        $user2 = new User;
        $user2->id = 2;
        $user2->username = 'The second user';
        $user2->email = 'user2@test.com';
        
        if ($id == 1)
        {
           echo json_encode($user1); 
        } 
        else 
        {
            echo json_encode($user2); 
        };

    });
    
    $app->get('/users', function () {
        
        $user1 = new Users;
        $user1->id = 1;
        $user1->username = 'The user';
        $user1->email = 'user@test.com';
        
        $user2 = new Users;
        $user2->id = 2;
        $user2->username = 'The second user';
        $user2->email = 'user2@test.com';
        
        $users = new Users;
        $users->users = array($user1, $user2);
        
        echo json_encode($users); 
        
    });
    
    
    $app->run();

?>