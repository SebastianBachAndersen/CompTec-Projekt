<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!--jQuery script for knapperne i dropdown menuen -->
    <script>
        $(document).ready(function() {
            //Her er button valgt ved id(#firemakingButton) og når man klikker på den sker der noget
            $("#firemakingButton").click(function(){
                //Når man klikker på knappen skal den toggle en css class("show") på div classen ".firemaking"
                $(".firemaking").toggleClass("show");
            });
        });
        //Scriptet her er magen til den ovenstående men med andre værdier (buttons og classes)
        $(document).ready(function() {
            $("#combatButton").click(function(){
                $(".combat").toggleClass("show");
            });
        });
        //Scriptet her er magen til den ovenstående men med andre værdier (buttons og classes)
        $(document).ready(function() {
            $("#woodcuttingButton").click(function(){
                $(".woodcutting").toggleClass("show");
            });
        });

    </script>   
    <title>Scoreboard on Run Escape</title>
<script src="javascript.js"></script>
</head>
<body>
<h1 class="headline">Welcome to Run Escape scoreboard!</h1>
<!--Her laves der en grid container til de forskellige grids. Grid containeren giver nogle fælles css værdier til de grids der er deri -->
<div class="gridContainer">
  <div class="dropdown">
        <!--I denne div er der en knap som kalder funktionen "menuDropdown" fra javascript filen-->
  <button onclick="menuDropdown()" class="menu">Choose a skill to display</button>
  <!--Denne div indeholder de buttons som er i dropdown menuen-->
  <div id="menuDropdown" class="dropdownMenu">
    <button id="firemakingButton">Firemaking</button>
    <button id="combatButton">Combat</button>
    <button id="woodcuttingButton">Woodcutting</button>
  </div>
  </div>
  <div class="top">Skill scoreboard</div>
  <div class="top">Top players</div>
  <div>If you press the same skill again in the dropdownmenu, <br>the scoreboard will chosen will dissappear
  </div>
    <div class="combat">
        <?php
        //Her connectes der til local host med username, password og valg af database. Først gives værdierne til variabler
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "run escape";
        //Værdierne bliver indsat i $conn og "new mysqli" laver connectionen. Værdierne efter new mysqli skal indsættes i nedenstående rækkefølge 
        $conn = new mysqli($servername, $username, $password, $dbname);
        // et ifstatement der tjekker om der er errors i connection til databasen. Hvis der er problemer printer den en fejlkode
        if ($conn->connect_error) {
           die("Connection failed: " . $conn->connect_error);
            } 

            //Et SQL SELECT statement der vælger collumns og fra hvilken table 
            $sql = "SELECT username, combatxp, questpoint FROM users";
            //$result sender queryen til SQL serveren
            $result = $conn->query($sql);

            //If statementet checker om antallet af rows er større end 0
            if ($result->num_rows > 0) {
                //Fetch_assoc returner et array med de collums der er valgt tidliger. Arrayet hænger sammen i en i rows ligesom de går i databasen 
                while($row = $result->fetch_assoc()) {
                    //Her printes der noget text og værdierne fra det array der bliver returnet
                     echo " Player Name: ". $row["username"]. " -- Combat XP: " . $row["combatxp"]. " -- Questpoints " . $row["questpoint"]. "<br>";
                }
            }else {
                //Hvis der ikke er nogle rows i databasen så printer den "No resulsts"
                echo "No results";
            }
            //Connectionen lukkes til databasen
            $conn->close(); 
            ?>  
</div>
<!--Denne div er magen til den ovenståend men denne her henter nogle andre værdier fra SQL serveren og interagerer med en anden button fordi den har en anden class-->
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
<!--Denne div er også magen til ovenstående hvor den henter andre værdier fra SQL serveren i stedet og interagerer med en anden button fordi den har en anden class -->
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