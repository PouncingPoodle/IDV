<?php
    
    header("Access-Control-Allow-Origin:*");

    class Book
    {
        public $id;
        public $genre;
        public $title;
        public $author;
        public $rating;
        public $imgurl;
        public $summary;
    }

    require 'Slim/Slim.php';
    \Slim\Slim::registerAutoloader();
    
    $app = new \Slim\Slim();
    
    
    $app->get('/book', function () {
        
        //DATABASE
        $bookDBconnect = mysqli_connect("localhost","root","mysql","lib_db");
        if (mysqli_connect_errno()) {
        echo "Failed to connect to". mysqli_connect_error();
        }

        $result = mysqli_query($bookDBconnect,"SELECT * FROM books");
        
        while ($row = mysqli_fetch_array($result))
        {
            $mybook = new Book;
            
            $mybook->id = $row['id'];
            $mybook->genre = $row['genre'];
            $mybook->title = $row['title'];
            $mybook->author = $row['author'];
            $mybook->rating = $row['rating'];
            $mybook->imgurl = $row['imgurl'];
            $mybook->summary = $row['summary'];
            
            echo json_encode($mybook);

        }
        // CLOSE THE DATABASE!
        
    });
    
    $app->run();
 
?>