<?php include "templates/header.php";?>

<?php 
require "config.php";

$connection = new PDO("mysql:host=$host", $username, $password, $options);

try { 
        $sql = file_get_contents("data/init.sql");
        $connection->exec($sql);
        echo "Database and table users created successfully.";
    } 
    catch(PDOException $error) 
    {
        echo $sql . "<br>" . $error->getMessage();
    } 

?>

<?php include "templates/footer.php";?>
