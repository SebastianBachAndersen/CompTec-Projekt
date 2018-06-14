<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script>
        $(document).ready(function() {
            $("#firemakingButton").click(function(){
                $(".firemaking").show();
            });
        });
        $(document).ready(function() {
            $("#combatButton").click(function(){
                $(".combat").show();
            });
        });
        $(document).ready(function() {
            $("#woodcuttingButton").click(function(){
                $(".woodcutting").show();
            });
        });

    </script>   
    <title>Scoreboard on Run Escape</title>
<script src="javascript.js"></script>
</head>
<body>
<h1 class="headline">Welcome to Run Escape scoreboard!</h1>
<div class="gridContainer">
    <div class="dropdown">
  <button onclick="menuDropdown()" class="menu">Choose a skill to display</button>
  <div id="menuDropdown" class="dropdownMenu">
    <button class="firemakingButton" id="firemakingButton">Firemaking</button>
    <button id="combatButton">Combat</button>
    <button id="woodcuttingButton">Woodcutting</button>
  </div>
  </div>
    <div class="top">Skill scoreboard</div>
    <div class="top">Top players</div>
    <div>Sidebar</div>
    <div class="combat">
 <?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "run escape";
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT username, combatxp, questpoint FROM users";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo " Player Name: ". $row["username"]. " -- Combat XP: " . $row["combatxp"]. " -- Questpoints " . $row["questpoint"]. "<br>";
    }
    }else {
        echo "No results";
}
$conn->close(); 
?>  
</div>
<div class="woodcutting">
    <?php
    $servername = "localhost";
$username = "root";
$password = "";
$dbname = "run escape";
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT username, woodcuttingxp, questpoint FROM users";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo " Player Name: ". $row["username"]. " -- Woodcutting XP: " . $row["woodcuttingxp"]. " -- Questpoints " . $row["questpoint"]. "<br>";
    }
    }else {
        echo "No results";
}
$conn->close(); 
?> 
</div>
<div class="firemaking">
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "run escape";
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT username, combatxp, firemakingxp, woodcuttingxp, questpoint FROM users";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo " Player Name: ". $row["username"]. " -- Firemaking XP: " . $row["firemakingxp"]. " -- Questpoints " . $row["questpoint"]. "<br>";
    }
    }else {
        echo "No results";
}
$conn->close(); 
?>
</div>
    <div class="bottom" style="display:none">Suspendisse potenti. Cras vitae eros nec sem lobortis varius et sed dolor. Pellentesque molestie tellus et nulla dignissim pellentesque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce non turpis leo. Suspendisse tortor neque, tincidunt aliquam nibh vitae, vehicula rhoncus nisi. Praesent ut iaculis odio. Fusce justo ipsum, sagittis vitae consectetur ac, tristique nec felis. Fusce ut urna a sem egestas molestie ut nec neque. Nulla in sapien eu lectus sollicitudin ornare.</div>
</div>
</body>
</html>