<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 10/6/2021
  Time: 9:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <h2>Product Discount Calculator</h2>
  <form method="post" action="/calculator">
    <label>Product Description:</label><br/>
    <input type="text" name="product_description" placeholder="Enter" /><br/>
    <label>List Price:</label><br/>
    <input type="text" name="list_price" placeholder="Enter" value="0"/><br/>
    <label>Discount Percent: </label><br/>
    <input type="text" name="discount_percent" placeholder="Enter" value="0"/><br/>
    <input type = "submit" id = "submit" value = "Calculate Discount"/>
  </form>
  </body>
</html>
