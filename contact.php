<?php
session_start();
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $message = $_POST['message'];

    $conn = new mysqli('localhost','root','','portfolio_db');
    if ($conn->connect_error) { die('Connection Failed: '.$conn->connect_error); }

    $stmt = $conn->prepare('INSERT INTO messages(name,email,phone,message) VALUES(?,?,?,?)');
    $stmt->bind_param('ssss',$name,$email,$phone,$message);
    $stmt->execute();
    $_SESSION['msg'] = 'Message sent successfully!';
    $stmt->close();
    $conn->close();
    header('Location: index.html');
}
?>
