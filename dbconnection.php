<?php
	$db=mysqli_connect("localhost","root","","test", "3333");

	if(!$db)
	{
	?>
		<script language="javascript">
		  alert("Error: Unable to Connect Database");
		</script>
	<?php
	}
?>
