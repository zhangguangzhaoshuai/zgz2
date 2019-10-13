<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<form action="addGoods" method="post">
	商品名称:<input type="text" name="gname"><br><br>
	价格:<input type="text" name="price"><br><br>
	总量:<input type="text" name="gcount"><br><br>
	售出:<input type="text" name="saleCount"><br><br>
	<button>添加</button>
</form>
</body>
</html>