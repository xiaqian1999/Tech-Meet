<?php
session_start(); 

  if (!isset($_SESSION['username'])) {
  	$_SESSION['msg'] = "You must log in first";
  	header('location: login.php');
  }
  if (isset($_GET['logout'])) {
  	session_destroy();
  	unset($_SESSION['username']);
  	header("location: login.php");
  }
?>
  

<?php 
// Include calendar helper functions 
include_once 'functions.php'; 

if(isset($_POST['insert'])){
    global $db;

    $event_title = $_POST['event_title'];
    $event_link = $_POST['event_link'];
    $event_information = $_POST['event_information'];
    $event_type = $_POST['event_type'];
    $date = $_POST['date'];

    $results = $db->query("INSERT INTO `Events`(`event_title`, `event_link`, `event_information`, `event_type`, `date`) 
                        VALUES ('$event_title', '$event_link', '$event_information', '$event_type', '$date')");

    if($results){
        echo 'Data inserted';
    }else{
        echo 'Data not inserted';
    }

}

?>


<!DOCTYPE html>
<html lang="en-US">
<head>
<title>Tech Meet Calendar</title>
<meta charset="utf-8">

<!-- Stylesheet file -->
<link rel="stylesheet" href="calendar.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>

<!DOCTYPE html>
<html lang="en-US">
<head>
<title>Tech Meet Calendar</title>
<meta charset="utf-8">

<!-- Stylesheet file -->
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> -->


</head>
<body>
  <?php
  include('popup.php');
  ?>

  <!-- nav bar -->
  <div class="banner">
   <nav class="navbar navbar-expand-lg navbar-light">
  <a class="navbar-brand" href="home.php"><img src="images/logo.png"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      
      <li class="nav-item">
        <a class="nav-link" href="home.php">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="about.php">About</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="contact.php">Contact</a>
      </li>
      
    </ul>
      <ul class="navbar-nav ml-auto">
      
      <li class="nav-item">
        <a class="nav-link" href="login.php">Logout</a>
      
      
    </ul>
  </div>
</nav>

    <!-- Display the navigator -->


    <!-- Display event calendar -->
    <div id="calendar_div">
        <?php echo getCalender(); ?>
    </div>


</body>
</html>