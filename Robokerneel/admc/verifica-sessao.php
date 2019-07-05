<?php

if ( !isset($_SESSION['cliente']) ) {
	echo "<script>
	        location.href='../login.php';
	     </script>";
}

?>