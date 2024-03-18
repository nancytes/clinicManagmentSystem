<?php
session_start();
session_destroy();
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <style >
      .btn-outline-light:hover {
        color: #0076d4;
        background-color: #f8f9fa;
        border-color: #f8f9fa;
}
    </style>
  </head>
  <body style="background:-webkit-linear-gradient(left, rgb(141, 141, 227), rgb(242, 214, 214));color:white;padding-top:100px;text-align:center;">
    <h3>You have logged out.</h3><br><br>
    <a href="index.php" class="btn btn-outline-light" >Back to Home Page</a>
   
  </body>
</html>