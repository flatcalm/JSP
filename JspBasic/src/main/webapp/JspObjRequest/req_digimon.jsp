<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>디지몬 도감</title>
</head>
<body>

	<hr>
	<h2>디지몬 도감</h2>
	<hr>
	
	<br>
	<br>
	
	<hr>
	<form action="req_digimon_result.jsp" method="post">
		<table border="1">
			<thead>
				<th></th><th>디지몬</th><th>이름</th><th>세대</th><th>타입</th><th>속성</th>
			</thead>
			<tbody>
				<tr>
					<td><input type="radio" name="select" value="아구몬"></td><td><img alt="아구몬" src="imgs/agu.webp" width="100px"></td><td>아구몬</td><td>성장기</td><td>파충류형</td><td>백신</td>
				</tr>
				<tr>
					<td><input type="radio" name="select" value="파피몬"></td><td><img alt="파피몬" src="imgs/papi.webp" width="100px"></td><td>파피몬</td><td>성장기</td><td>파충류형</td><td>데이터</td>
				</tr>
				<tr><td colspan="6"><input type="submit" value="확인" style="text-align:center; display:block; margin: 0 auto;"></td></tr>
			</tbody>
		</table>
	</form>
	<hr>
	
</body>
</html>