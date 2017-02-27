<?php 
	session_start();
	require("header.php");
	require("checkUser.php");
	echo "<h4>My Topics</h4>";

	$sql="SELECT * from question where user_id=$_SESSION[uid]";
	$result=ExecuteQuery($sql);
	if (mysql_num_rows($result) == 0) {
		echo "You have no topics.<br><br>";
	} else {
		while($row = mysql_fetch_array($result)) {
			echo "<span class='box2'>";
			echo "<span class='head'><a href='questionview.php?qid=$row[question_id]'>
					<h4>$row[heading]</h4></a></span>";
			echo "</span>";
			echo  "<br>";
			echo $row['question_detail'];
			echo  "<br>";
			
			echo $row['datetime'];
			echo "<div class='line'></div>";
		}
		echo "<br><br>";
	}
	echo "<a href='home.php'>Back</a>";
	require("footer.php")
?>