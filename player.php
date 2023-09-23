<?php
include('inc/top.php');
?>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12 mt-2" >
            <?php include("inc/navbar.php")?>;
            
            


 
        </div>

        
    </div>
 




   
    <?php
    // Connecting to the Database
$servername = "localhost";
$username = "root";
$password = "";
$database = "psl";

// Create a connection
$conn = mysqli_connect($servername, $username, $password, $database);
// Die if connection was not successful


    $sql = "SELECT * FROM `players` ORDER BY `player_Id` ASC";
$result = mysqli_query($conn, $sql);










?>
<!-- HTML code to display data in tabular format -->

 
<head>
    
    <!-- CSS FOR STYLING THE PAGE -->
    <style>
        table {
            margin: 0 auto;
            font-size: large;
            border: 1px solid black;
        }
 
        h1 {
            text-align: center;
            color: #006600;
            font-size: xx-large;
            font-family: 'Gill Sans', 'Gill Sans MT',
            ' Calibri', 'Trebuchet MS', 'sans-serif';
        }
 
        td {
            background-color: #E4F5D4;
            border: 1px solid black;
        }
 
        th,
        td {
            font-weight: bold;
            border: 1px solid black;
            padding: 10px;
            text-align: center;
        }
 
        td {
            font-weight: lighter;
        }
    </style>
</head>
 
<body>

<?php

$search = $_POST['player_First_Name'];

$servername = "localhost";
$username = "root";
$password = "";
$db = "psl";

$conn = new mysqli($servername, $username, $password, $db);

if ($conn->connect_error){
	die("Connection failed: ". $conn->connect_error);
}


$sql2 = "select * from players where player_First_Name like '%$search%'";

$result = $conn->query($sql2);



?>
<form action="player.php" method="post" >
<h2 class="text-white">Search By Name</h2> <input type="text" name="player_First_Name"><br>
<input type ="submit">
</form>
    <section>
        <h1 class="text-white">Players</h1>
       
        <table>
            <tr>
                
                <th class="text-white">Player name</th>
                <th class="text-white">D.O.B</th>
                <th class="text-white">Height</th>
                <th class="text-white">Role</th>
                <th class="text-white">Style</th>
                <th class="text-white">Nationality</th>
                <th class="text-white">Performance</th>
                
                
            </tr>
            <!-- PHP CODE TO FETCH DATA FROM ROWS -->
            <?php
                // LOOP TILL END OF DATA
                while($rows=$result->fetch_assoc())
                {
            ?>
            <tr>
                <!-- FETCHING DATA FROM EACH
                    ROW OF EVERY COLUMN -->
                <td class="bg-success text-white"><?php echo $rows['player_First_Name'];?><?php echo $rows['player_Last_Name'];?></td>4
                <td class="bg-success text-white"><?php echo $rows['D.O.B'];?></td>
                <td class="bg-success text-white"><?php echo $rows['Height'];?></td>
                <td class="bg-success text-white"><?php echo $rows['Role'];?></td>
                <td class="bg-success text-white"><?php echo $rows['Style'];?></td>
                <td class="bg-success text-white"><?php echo $rows['Nationality'];?></td>
                <td class="bg-success text-white"><?php echo $rows['Performance'];?></td>
                
               
                
            </tr>
            <?php
                }
            ?>
        </table>
    </section>
</body>
 
</html>