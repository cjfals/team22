<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

    <div class="card o-hidden border-0 shadow-lg my-5">
               
            <div class="jumbotron">
				  <h2> ���̵�� : </h2><br/>
				  		<ul>
				  	 	<c:forEach  var="m" items="${member}" >
				  		  	
				  		   <li>${m.member_id}</li><br/>
				  		
				  		</c:forEach> 
				
				  		</ul>
				<h2>�Դϴ�</h2>
  	  
			</div>
  <button type="button" class="btn btn-primary" onclick="location.href='/members/login'">�α���������</button>
  <button type="button" class="btn btn-primary" onclick="location.href='/main'">����������</button>
  
  
</div>


</body>
</html>