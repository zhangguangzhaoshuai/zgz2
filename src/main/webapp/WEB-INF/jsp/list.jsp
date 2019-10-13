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
	<a href="toAdd">添加</a>
	<table>
		<tr>
			<td>编号</td>
			<td>商品名称</td>
			<td>价格</td>
			<td>总量</td>
			<td>售出</td>
		</tr>
		<c:forEach items="${goodsList}" var="goods" varStatus="var">
		<tr>
			<td>${var.count}</td>
			<td>${goods.gname}</td>
			<td>${goods.price}</td>
			<td>${goods.gcount}</td>
			<td>${goods.saleCount}</td>
		</tr>	
		</c:forEach>
	</table>
</body>
</html>