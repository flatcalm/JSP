<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	request.setCharacterEncoding("utf-8");
    
    	String select = request.getParameter("select");
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>디지몬 정보</title>
</head>
<body>
	
	<hr>
	<h2>선택한 디지몬 : <strong><%=select %></strong></h2>
	<hr>
	
	<br>
	<br>
	
	<hr>
	<table border="1">
			<thead>
				<th>디지몬</th><th>이름</th><th>세대</th><th>진화 가능 개체</th><th>타입</th><th>속성</th>
			</thead>
			<tbody>
				<tr>
					<% if(select.equals("아구몬")) { %>
					<td><img alt="아구몬" src="imgs/agu.webp" width="100px"></td><td>아구몬</td><td>성장기</td><td>그레이몬, 티라노몬, 콩알몬, 메탈그레이몬</td><td>파충류형</td><td>백신</td>
					<% } %>
					<% if(select.equals("파피몬")) { %>
					<td><img alt="파피몬" src="imgs/papi.webp" width="100px"></td><td>파피몬</td><td>성장기</td><td>가루몬, 워가루몬</td><td>파충류형</td><td>데이터</td>
					<% } %>
				</tr>
			</tbody>
	</table>
	<hr>
	

</body>
</html>