<!DOCTYPE html>
<html>
<head>
	<title>www.aits.com</title>

	<style type="text/css">
		body{
			background-image: url();
			background-size: cover;
			background-repeat: no-repeat;
		}
		form{
			background-color: rgba(0,0,0,0.6);
			padding: 7px;
			width: 30%;
			border-radius: 3px;
			margin-top: 20%;
			margin-left: 20%;
		}
		.inputclass{

			width: 95%;
			padding: 7px;
			border-radius: 3px;
			border: none;
		}
		.btnclass{
			background-color: deepskyblue;
			color: white;
			padding: 4px;
			width: 100%;
			border: none;
			font-size: 16px;
			font-family: Arial;
		}
		.btnclass:hover{
			background-color: gold;
			cursor: pointer;
			color: brown;
		}
		h3{
			color: deepskyblue;
			font-size: 16px;
			font-family: Arial;
		}
	</style>
	
</head>
<body>
	<form align="center">
		<table cellpadding="5" width="100%">
			
			<tr>
				<th colspan="2">
					<h2>AITS</h2>
				</th>
			</tr>

			<tr>
				<td>
					<input type="text" name="uname" placeholder="Username" class="inputclass">
				</td>
			</tr>

			<tr>
				<td>
					<input type="text" name="pass" placeholder="Password" class="inputclass">
				</td>
			</tr>

			<tr>
				<td>
					<input type="submit" name="login" placeholder="Login" class="inputclass">
				</td>
			</tr>

			<tr>
				<td>
					<input type="reset" name="Reset" placeholder="Reset" class="inputclass">
				</td>
			</tr>

		</table>
	</form>

</body>
</html>