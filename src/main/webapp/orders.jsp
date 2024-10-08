<%@page import="hackerthon.connection.DBConnection"%>
<%@page import="hackerthon.model.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
   User auth=(User) request.getSession().getAttribute("auth");
    if(auth!=null){
    	request.setAttribute("auth", auth);
    }
    ArrayList<Cart> cart_list=(ArrayList<Cart>) session.getAttribute("cart-list");
	//List<Cart> cartProduct=null;
	if(cart_list!=null){
		//ProductDao pDao=new ProductDao(DBConnection.getConnection());
		//cartProduct=pDao.getCartProducts(cart_list);
		request.setAttribute("cart_list", cart_list);
	}

    %>
<!DOCTYPE html>
<html>
<head>
<title>Orders Page</title>
<%@include file="includes/head.jsp" %>
</head>
<body>

<%@include file="includes/navbar.jsp" %>
<%@include file="includes/footer.jsp" %>
</body>
</html>