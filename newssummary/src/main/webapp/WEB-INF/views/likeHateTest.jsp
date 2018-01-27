<%@ page import="com.frontline.newssummary.vo.SummaryVO"%> 
<%@ page import="com.frontline.newssummary.vo.MemberVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Like Hate Test</title>
</head>
<body>

        <%
        SummaryVO SummarySelect = (SummaryVO) request.getAttribute("SummarySelect");
		%>
		<p>로그인 아이디 : ${LoginId}</p>
		<div><%=SummarySelect.getContent() %> </div>
<a href="ClickLike"><img src="img/Like.png" style="width:30px;"><%=SummarySelect.getLikes() %></a>
<a href="ClickHate"><img src="img/Hate.png" style="width:30px;"><%=SummarySelect.getHate() %></a>
</body>
</html>