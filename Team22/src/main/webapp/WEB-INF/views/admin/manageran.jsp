<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
		<title>admin Page</title>
		
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="/resources/assets/css/main.css" />
		<link rel="stylesheet" href="/resources/assets/css/myPage.css" />
		<link rel="stylesheet" href="/resources/assets/css/styles.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
	
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		
</head>
	<body>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

								<%@ include file="../include/header.jsp" %>			
																
							<!-- Banner -->
							<section id="banner">
								 <div class="content">
								 <div class="wrap">
									  <div class="shippingStatusContainer">
									     
									      <%@ include file="../include/adminmypage.jsp" %>

						 <hr>
						 
					        <div class="table-member">
									<table>
										<tr>
										    <th>판매자</th>										
											<th>제품명</th>
											<th>가격</th>
											<th>현재가격</th>
											<th>상세보기</th>
										</tr>

										<c:forEach var="rlist" items="${randomList}">
											<tr>											
												<td>${rlist.ran_sellerId}</td>
												<td>
												  <a href="/random/rDetail?ran_num=${rlist.ran_num}">${rlist.ran_title}</a>
												</td>
												<td>${rlist.ran_price}</td>
												<td>${rlist.ran_bidPrice}</td>
												<td>
												  <a href="/admin/randetail?ran_num=${rlist.ran_num}">참가자 목록보기</a>
												</td>
											</tr>
										</c:forEach>	
									</table>
						       </div> 
						       						       
						       								
					</div>  
				</div>	   
           </div>
		</div>
	</section>
                   							         
                   
                   </div>
			    <%@ include file="../include/sidebar.jsp" %>		
			
			 </div>
	

		<!-- Scripts -->
			<script src="/resources/assets/js/jquery.min.js"></script>
			<script src="/resources/assets/js/skel.min.js"></script>
			<script src="/resources/assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="/resources/assets/js/main.js"></script>

	</body>
</html>