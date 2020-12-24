<?php
include_once 'functions.php'; 
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
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>



</head>
<body>
    <!-- Display event calendar -->
    <div id="calendar_div">
        <?php echo getCalender(); ?>
    </div>


    <!--Popup for adding events -->
    <?php include('popup.php');?>


    <!--Pop up page to search the events-->
    <?php include('searchEvents.php');?>
    

</body>
</html>