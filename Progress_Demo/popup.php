<?php
// Include calendar helper functions 
include_once 'functions.php'; 

if(isset($_POST['insert'])){

    $event_title = $_POST['event_title'];
    $event_link = $_POST['event_link'];
    $event_information = $_POST['event_information'];
    $event_type = $_POST['event_type'];
    $date = $_POST['date'];

    $results = $db->query("INSERT INTO `Events`(`event_title`, `event_link`, `event_information`, `event_type`, `date`) 
                        VALUES ('$event_title', '$event_link', '$event_information', '$event_type', '$date')");

    if($results){
        echo 'Data inserted';
        header("Location: index.php");
    }else{
        echo 'Data not inserted';
        header("Location: index.php");
    }

}
?>

<!--Pop up page to add the events-->
<div class="modal fade" id="AddEvent" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <!--header-->
                <div class="modal-header">
                    <h5 class="modal-title" id="examplemodallabel">Add Event</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <!--body-->
                <form action="popup.php" method="POST">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="">Event Name</label>
                            <input type="text" class="form-control" name="event_title" placeholder="Enter Event Name">
                        </div>

                        <div class="form-group">
                            <label for="">Event Link</label>
                            <input type="text" class="form-control" name="event_link" placeholder="Enter Event Link">
                        </div>

                        <div class="form-group">
                            <label for="">Event Description</label>
                            <input type="text" class="form-control" name="event_information" placeholder="Enter Event Description">
                        </div>

                        <div class="form-group">
                            <label for="">Event Type</label>
                            <input type="text" class="form-control" name="event_type" placeholder="Enter Event Type">
                        </div>

                        <div class="form-group">
                            <label for="">Event Date</label>
                            <input type="date" class="form-control" name="date">
                        </div>
                    </div>

                    <!--footer-->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
                        <input type="submit" name="insert" class="btn btn-parimay" value="Submit">
                    </div>
                </form>
            </div>
        </div>
    </div>