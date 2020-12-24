<?php 
//including the databse config file for the database connection
include_once 'server.php'; 
 
// load function based on the Ajax request, ajax is automaic update on the backend side without refreshing the page
if(isset($_POST['func']) && !empty($_POST['func'])){ 
    switch($_POST['func']){ 
        case 'getCalender': 
            getCalender($_POST['year'],$_POST['month']); 
            break; 
        case 'getEvents': 
            getEvents($_POST['date']); 
            break; 
        default: 
            break; 
    } 
} 
 
//generate event calendar in HTML format
function getCalender($year = '', $month = ''){ 
    $dateYear = ($year != '')?$year:date("Y"); // if the year input is not an empty string, we will set dateYear = year user input, else we will get it from date in the sql where the year  = ??
    $dateMonth = ($month != '')?$month:date("m"); 
    $date = $dateYear.'-'.$dateMonth.'-01'; 
    $currentMonthFirstDay = date("N",strtotime($date)); 
    $totalDaysOfMonth = cal_days_in_month(CAL_GREGORIAN,$dateMonth,$dateYear); 
    $totalDaysOfMonthDisplay = ($currentMonthFirstDay == 1)?($totalDaysOfMonth):($totalDaysOfMonth + ($currentMonthFirstDay - 1)); 
    $boxDisplay = ($totalDaysOfMonthDisplay <= 35)?35:42; 
     
    $prevMonth = date("m", strtotime('-1 month', strtotime($date))); 
    $prevYear = date("Y", strtotime('-1 month', strtotime($date))); 
    $totalDaysOfMonth_Prev = cal_days_in_month(CAL_GREGORIAN, $prevMonth, $prevYear); 
?> 

    <!--this is where you create the dropdown in html-->
    <div class="calendar-contain"> 

        <!--this is the upper section-->
        <section class="title-bar"> 
        <div class="form-row">
            <!--This is the dropdown to choose the year and month-->
            <div class="title-bar__year form-group col-md-2.5"> 
                <select class="year-dropdown form-control"> 
                    <?php echo getYearList($dateYear); ?> 
                </select> 
            </div> 

            <div class="title-bar__month form-group col-md-3.5"> 
                <select class="month-dropdown form-control"> 
                    <?php echo getMonthList($dateMonth); ?> 
                </select> 
            </div> 

            <!--This is for filter-->
            <div class="form-group col-md">
                <button type="button" class="btn btn-info" data-toggle="modal" data-target="#SearchEvent">Search</button>
            </div>

            <!--This is for filter-->
            <div class="form-group col-md">
                <button type="button" class="btn btn-info" data-toggle="modal" data-target="#AddEvent">Add</button>
            </div>


            <!--This is the button for getting the previous month-->
            <div class="form-group col-md">
                <a href="javascript:void(0);"
                    class="title-bar__prev btn btn-info" 
                    onclick="getCalendar('calendar_div',
                    '<?php echo date("Y",strtotime($date.' - 1 Month')); ?>',
                    '<?php echo date("m",strtotime($date.' - 1 Month')); ?>');"> < </a> 
            </div>

            <!--This is the button for getting the next month-->
            <div class="form-group col-md">
                <a href="javascript:void(0);" 
                    class="title-bar__next btn btn-info" 
                    onclick="getCalendar('calendar_div',
                    '<?php echo date("Y",strtotime($date.' + 1 Month')); ?>',
                    '<?php echo date("m",strtotime($date.' + 1 Month')); ?>');"> > </a> 
            </div>
        </div>
        </section> 

        <!--This is for display the events-->
        <aside class="calendar__sidebar" id="event_list"> 
            <?php echo getEvents(); ?> 
        </aside> 
         
        <!--This is for display the calendar-->
        <section class="calendar__days"> 

            <!--This is for display the weekday-->
            <section class="calendar__top-bar"> 
                <span class="top-bar__days">Mon</span> 
                <span class="top-bar__days">Tue</span> 
                <span class="top-bar__days">Wed</span> 
                <span class="top-bar__days">Thu</span> 
                <span class="top-bar__days">Fri</span> 
                <span class="top-bar__days">Sat</span> 
                <span class="top-bar__days">Sun</span> 
            </section> 
             

            <!--This is for display the day and the events number related on that day-->
            <?php  
                $dayCount = 1; 
                $eventNum = 0; 
                 
                echo '<section class="calendar__week">'; 
                for($cb=1;$cb<=$boxDisplay;$cb++){ 

                    //if the month is the current month then do these
                    if(($cb >= $currentMonthFirstDay || $currentMonthFirstDay == 1) && $cb <= ($totalDaysOfMonthDisplay)){ 

                        // Current date 
                        $currentDate = $dateYear.'-'.$dateMonth.'-'.$dayCount; 
                         
                        // Get number of events based on the current date 
                        global $db; 
                        $result = $db->query("SELECT event_title FROM Events WHERE date = '".$currentDate."' AND status = 1"); 
                        $eventNum = $result->num_rows; 
                         
                        // Define date cell color 
                        if(strtotime($currentDate) == strtotime(date("Y-m-d"))){ 
                            // different color set for today's event
                            echo ' 
                                <div class="calendar__day today" onclick="getEvents(\''.$currentDate.'\');"> 
                                    <span class="calendar__date">'.$dayCount.'</span> 
                                    <span class="calendar__task calendar__task--today">'.$eventNum.' Events</span> 
                                </div> 
                            '; 

                            // different color set for eventNum > 0 but not today's event
                        }elseif($eventNum > 0){ 
                            echo ' 
                                <div class="calendar__day event" onclick="getEvents(\''.$currentDate.'\');"> 
                                    <span class="calendar__date">'.$dayCount.'</span> 
                                    <span class="calendar__task">'.$eventNum.' Events</span> 
                                </div> 
                            '; 
                        }else{ 
                            echo ' 
                                <div class="calendar__day no-event" onclick="getEvents(\''.$currentDate.'\');"> 
                                    <span class="calendar__date">'.$dayCount.'</span> 
                                    <span class="calendar__task">'.$eventNum.' Events</span> 
                                </div> 
                            '; 
                        } 
                        $dayCount++; 

                    //if the month is not the current month then either display as expired or upcoming
                    }else{ 
                        if($cb < $currentMonthFirstDay){ 
                            $inactiveCalendarDay = ((($totalDaysOfMonth_Prev-$currentMonthFirstDay)+1)+$cb); 
                            $inactiveLabel = 'expired'; 
                        }else{ 
                            $inactiveCalendarDay = ($cb-$totalDaysOfMonthDisplay); 
                            $inactiveLabel = 'upcoming'; 
                        } 
                        echo ' 
                            <div class="calendar__day inactive"> 
                                <span class="calendar__date">'.$inactiveCalendarDay.'</span> 
                                <span class="calendar__task">'.$inactiveLabel.'</span> 
                            </div> 
                        '; 
                    } 
                    echo ($cb%7 == 0 && $cb != $boxDisplay)?'</section><section class="calendar__week">':''; 
                } 
                echo '</section>'; 
            ?> 
        </section> 
    </div> 
 
    <script> 
        function getCalendar(target_div, year, month){ 
            $.ajax({ 
                type:'POST', 
                url:'functions.php', 
                data:'func=getCalender&year='+year+'&month='+month, 
                success:function(html){ 
                    $('#'+target_div).html(html); 
                } 
            }); 
        } 
         
        function getEvents(date){ 
            $.ajax({ 
                type:'POST', 
                url:'functions.php', 
                data:'func=getEvents&date='+date, 
                success:function(html){ 
                    $('#event_list').html(html); 
                } 
            }); 
        } 
         
        $(document).ready(function(){ 
            $('.month-dropdown').on('change',function(){ 
                getCalendar('calendar_div', $('.year-dropdown').val(), $('.month-dropdown').val()); 
            }); 
            $('.year-dropdown').on('change',function(){ 
                getCalendar('calendar_div', $('.year-dropdown').val(), $('.month-dropdown').val()); 
            }); 
        }); 
    </script> 
<?php 
} 
 
//generate months options list for dropdown where user could choose their months 
function getMonthList($selected = ''){ 
    $options = ''; 
    for($i=1;$i<=12;$i++) 
    { 
        $value = ($i < 10)?'0'.$i:$i; //this is a ternary operator, it is the same as comment below
        /*  if ($i < 10){
                $value = '0'.$i;}
            else{
                $value = $i;}
        }*/
        // Since the value is range from 1-12, therefore we want to add 0 infront of all numbers that are single digits 1=01 2=02 ...
        $selectedOpt = ($value == $selected)?'selected':''; //if the month user selected is the same as the value, we return selected, else, return empty
        $options .= '<option value="'.$value.'" '.$selectedOpt.' >'.date("F", mktime(0, 0, 0, $i+1, 0, 0)).'</option>'; //mktime function are representing [hr, min, sec, mon, day, year]
    } 
    return $options; 
} 
 
//generate year options list for dropdown
function getYearList($selected = ''){ 
    $yearInit = !empty($selected)?$selected:date("Y"); //date function says if user select is not empty then choose the selected as yearInit, else return the date('Y')
    $yearPrev = ($yearInit - 5); 
    $yearNext = ($yearInit + 5); 
    $options = ''; 
    for($i=$yearPrev;$i<=$yearNext;$i++){ 
        $selectedOpt = ($i == $selected)?'selected':''; 
        $options .= '<option value="'.$i.'" '.$selectedOpt.' >'.$i.'</option>'; 
    } 
    return $options; 
} 
 
//generate events list in HTML format
function getEvents($date = ''){ 
    $date = $date?$date:date("Y-m-d"); //if the input date is true, simply return it, else get the date in date format
     
    //this is the header to display the current date you select
    $eventListHTML = '<h2 class="sidebar__heading">'.date("l", strtotime($date)).'<br>'.date("F d", strtotime($date)).'</h2>'; 
     
    //fetch all events information based on the specific date where 1 represent active, that means the events are working
    global $db; 
    $result = $db->query("SELECT event_title, event_link, event_information FROM `Events` WHERE date = '".$date."' AND status = 1"); 
    if($result->num_rows > 0){ 
        $eventListHTML .= '<ul class="sidebar__list">'; 
        $eventListHTML .= '<li class="sidebar__list-item sidebar__list-item--complete">Events &nbsp; &nbsp;
                            <button type="button" class="btn btn-info" data-toggle="modal" data-target="#AddEvent">Add Event</button></li>'; 
        $i=0; 
        while($row = $result->fetch_assoc()){ $i++; 

            // $eventListHTML .= '<li class="sidebar__list-item">'.
            // "<span class='event-name'>".$row['event_title']."</span>".
            // '<br> <a class="event-link" href="'.$row['event_link'].'">'.$row['event_link'].'</a>'.
            // '<br> <a class="event-description">'.$row["event_information"]. '</a><div class="space_between_events"></div></li>'; 

            $eventListHTML .= '<div class="card">
                                <div class="card-header">'.$row["event_title"].'</div>
                                <div class="card-body">
                                    <p class="card-text">'.$row["event_information"].'</p>
                                    <a class="btn btn-info" href="'.$row['event_link'].'">Link To Sign Up</a>
                                </div>
                            </div>';
        } 
        $eventListHTML .= '</ul>'; 
    } 
    echo $eventListHTML; 

}


// this is the events list with the index li

// while($row = $result->fetch_assoc()){ $i++; 
//     $eventListHTML .= '<li class="sidebar__list-item">
//     <span class="list-item__time">'.$i.'. </span>'.
//     "<span class='event-name'>".$row['event_title']."</span>".
//     '<br> <a class="event-link" href="'.$row['event_link'].'">'.$row['event_link'].'</a>'.
//     '<br> <a class="event-description">'.$row["event_information"]. '</a><div class="space_between_events"></div></li>'; 
// } 