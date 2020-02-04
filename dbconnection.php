<?php
	$db=mysqli_connect("192.168.0.101","stn","root","test", "3306");

	if(!$db)
	{
	?>
		<script language="javascript">
		  alert("Error: Unable to Connect Database");
		</script>
	<?php
	}
?>
