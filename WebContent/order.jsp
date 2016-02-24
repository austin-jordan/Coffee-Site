<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Place Your Order</title>
<link rel="stylesheet" type="text/css" href="css/orderstyles.css" />
</head>
<body>
	<div class="container">
		<section class = "order_form">
		<div class="content">
			<div class="text">
				<form method="get" action="success.jsp">
					<p>Please enter your name</p>
					Customer name: <input type="text" name="customer name"><br>
					Customer order: <input type="text" name="customer order"><br>
					Size options: <br> <select name="size">
						<option value="small">Small</option>
						<option value="medium">Medium</option>
						<option value="large">Large</option>
						<br>
						<br>
						<input type="submit">
				</form>
			</div>
		</div>
		</section>
</body>
</html>