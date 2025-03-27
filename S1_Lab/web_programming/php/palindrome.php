<html>

<body>
	<form method="post">
		Enter a number:
		<input type="text" name="number"><br>

		<input type="submit" value="submit">
	</form>
</body>

</html>

<?php
if ($_POST) {
	$num = $_POST["number"];
	$temp = $num;
	$rev = 0;
	while ($temp > 0) {
		$d = $temp % 10;
		$rev = $rev * 10 + $d;
		$temp = floor($temp / 10);
	}
	if ($num == $rev) {
		echo "number is palindrome $num";
	} else {
		echo "number is not palindrome $num";
	}
}
?>