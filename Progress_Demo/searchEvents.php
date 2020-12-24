<div class="modal fade" id="SearchEvent" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <!--header-->
                <div class="modal-header">
                    <h2 class="modal-title" id="examplemodallabel">Search Event</h2>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <!--body-->
                <form action="index.php" method="POST">
                    <div class="row">
                        <div class="col-sm-2 my-3"></div>
                        <div class="col-sm-7 my-3">
                            <input type="text" name="search" placeholder="Search events through keyword" class="form-control">
                        </div>
                        <div class="col-sm-3 my-3">
                          <button type="submit" name="submit-search" class="btn btn-info">Search</button>
                        </div>
                        <!-- <div class="col-sm-0.5 my-3"></div> -->
                    </div>
                            <div class="events_container">
                                <?php
                                    $total_events = $db->query("SELECT `event_title`, `event_link`, `event_information`, `event_type`, `date` FROM `Events` WHERE status = 1");       
                                    if (isset($_POST['submit-search'])){
                                        // global $db;
                                        $search = mysqli_real_escape_string($db, $_POST['search']);
                                        $total_events = $db->query("SELECT `event_title`, `event_link`, `event_information`, `event_type`, `date`
                                                                    FROM `Events` WHERE status = 1 AND event_title LIKE '%$search%'
                                                                    OR event_information LIKE '%$search%'OR event_type LIKE '%$search%'");
                            
                                        $num_results_return = mysqli_num_rows($total_events);
                                        $eventListSearch = "<label class='results_return'>There are ".$num_results_return." results</label>";
                            
                                        if($total_events->num_rows > 0){ 
                                            while($row = $total_events->fetch_assoc()){
                                                $eventListSearch.= '<div class="card">
                                                        <div class="card-header">'.$row["event_type"].'</div>
                                                        <div class="card-body">
                                                        <h5 class="card-title">'.$row['event_title'].'</h5>
                                                        <p class="card-text">'.$row["event_information"].'</p>
                                                        <a class="btn btn-info" href="'.$row['event_link'].'">Link To Sign Up</a>
                                                        </div>
                                                    </div>';
                                            }
                                        } else{
                                            echo "There are no results matching with your search!";
                                        }
                                        echo $eventListSearch; 
                            
                                    }
                                
                                ?>
                        </div>
                </form> 
            </div>
        </div>
    </div>