<?php
    




//START API PART
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
    /*
        $result = mysqli_query($bookDBconnect,"SELECT * FROM books");

        while ($row = mysqli_fetch_array($result))
        {
            echo $row['genre'];
        }
    */

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
            
            //$array1 = array($id, $genre, $title, $author, $rating, $imgurl, $summary);

            //echo json_encode($array1);
        }

        // CLOSE THE DATABASE!
        
        $book1 = new Book;        
        $book1->id = $id;
        $book1->genre = $genre;
        $book1->title = 'Charlie and the Chocolate Factory';
        $book1->author = 'Roald Dahl';
        $book1->rating = 5;
        $book1->imgurl = '';
        $book1->summary = '';
        
        $book2 = new Book;        
        $book2->id = 1;
        $book2->genre = 'Novel';
        $book2->title = 'Charlie and the Chocolate Factory';
        $book2->author = 'Roald Dahl';
        $book2->rating = 5;
        $book2->imgurl = '';
        $book2->summary = '';
        
        //$books = new Book;
        $books->books = array($book1, $book2);
        
        //echo json_encode($book2);
        
    });
    
    $app->run();
    
    
    
/*    
//START API PART
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
        
        $book1 = new Book;        
        $book1->id = 1;
        $book1->genre = 'Novel';
        $book1->title = 'Charlie and the Chocolate Factory';
        $book1->author = 'Roald Dahl';
        $book1->rating = 5;
        $book1->imgurl = '';
        $book1->summary = '';
        
        $book2 = new Book;        
        $book2->id = 1;
        $book2->genre = 'Novel';
        $book2->title = 'Charlie and the Chocolate Factory';
        $book2->author = 'Roald Dahl';
        $book2->rating = 5;
        $book2->imgurl = '';
        $book2->summary = '';
        
        //$books = new Book;
        $books->books = array($book1, $book2);
        
        //echo json_encode($books);
        
    });
    
    $app->run();
*/
?>