<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.thejavashop.shopping.*" %>
<%@ page import = "java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Your Cart</title>
</head>
<body>
<!-- <table borders = 1>
<tr>
<td>"Coffee""</td><td>$3</td>
<td><a href ="shopping.jsp?item=coffee&price=3">Add to cart</a></td>
</tr>

<tr>
<td>"Espresso"</td><td>$3</td>
<td><a href ="shopping.jsp?item=espresso&price=3">Add to cart</a></td>
</tr>

<tr>
<td>"Cappuccino"</td><td>$4</td>
<td><a href ="shopping.jsp?item=cappuccino&price=4">Add to cart</a></td>
</tr>

<tr>
<td>"Latte"</td><td>$4</td>
<td><a href ="shopping.jsp?item=latte6&price=4">Add to cart</a></td>
</tr>

<br>
</table>
<br> -->
<h1>Shopping Cart</h1>
<%
// get access to the shopping cart in the session
HashMap<String, drinkItem> sc;
if (session.getAttribute("shoppingCart") == null) { //Each time you want to add an item to shopping cart, is there already an item in my cart
	sc = new HashMap<String, drinkItem>();
	session.setAttribute("shoppingCart", sc);
}
else
	sc = (HashMap<String,drinkItem>)session.getAttribute("shoppingCart");
//////////////

//if item is in the shopping cart already I need to get the reference to the item and add 1 to the counter
if (request.getParameter("item") != null) {
	if (sc.containsKey(request.getParameter("item"))) { //increases counter
		drinkItem temp = sc.get(request.getParameter("item"));
		
		temp.setCount(temp.getCount()+1);
		sc.put(request.getParameter("item"), temp);
	}
	else { //adds a new item to the shopping cart
		String itemName = request.getParameter("item");
		float itemPrice = Float.parseFloat(request.getParameter("price"));
		drinkItem temp = new drinkItem(itemName, itemPrice, 1);
		sc.put(itemName, temp);
	}
	//puts the shopping cart back in the session
		session.setAttribute("shoppingCart", sc); 
}
%>

</body>
</html>