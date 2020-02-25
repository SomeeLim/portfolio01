<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.net.InetAddress"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- ======= #27. tile1 중 header 페이지 만들기  ======= --%>    
<%
	String ctxPath = request.getContextPath();

	// === #158. (웹채팅관련3) === 
	// === 서버 IP 주소 알아오기   ===
	InetAddress inet = InetAddress.getLocalHost(); 
	String serverIP = inet.getHostAddress();
	
//	System.out.println("serverIP : " + serverIP);
	// serverIP : 192.168.56.50
	
	serverIP = "192.168.50.65";
	
	// === 서버 포트번호 알아오기   ===
	int portnumber = request.getServerPort();
//	System.out.println("portnumber : " + portnumber);
	// portnumber : 9090
	
	String serverName = "http://"+serverIP+":"+portnumber; 
//	System.out.println("serverName : " + serverName);
//	serverName : http://192.168.50.65:9090 

%>

<div align="center">
	<ul class="nav nav-tabs mynav">
		<li class="dropdown"><a class="dropdown-toggle"
			data-toggle="dropdown" href="#">Home <span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="<%=ctxPath%>/index.action">Home</a></li>
				<li><a href="<%=ctxPath%>/deliciousStore.action">전국맛집</a></li>
			    <li><a href="<%= serverName%><%=ctxPath%>/chatting/multichat.action">웹채팅</a></li> 
			</ul></li>
		<li class="dropdown"><a class="dropdown-toggle"
			data-toggle="dropdown" href="#">게시판 <span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="<%=ctxPath%>/list.action">목록보기</a></li>
				<li><a href="<%=ctxPath%>/add.action">글쓰기</a></li>
				<li><a href="#">Submenu 1-3</a></li>
			</ul></li>
		<li class="dropdown"><a class="dropdown-toggle"
			data-toggle="dropdown" href="#">로그인 <span class="caret"></span></a>
			<ul class="dropdown-menu">
				<c:if test="${sessionScope.loginuser == null}">
				<li><a href="#">회원가입</a></li>
				<li><a href="<%=ctxPath%>/login.action">로그인</a></li>
				</c:if>
				
				<c:if test="${sessionScope.loginuser != null}">
				<li><a href="<%=ctxPath%>/myinfo.action">나의정보</a></li>
				<li><a href="<%=ctxPath%>/logout.action">로그아웃</a></li>
				</c:if>
			</ul></li>
				
		<c:if test="${sessionScope.loginuser.gradelevel == 10}">
		<li class="dropdown"><a class="dropdown-toggle"
			data-toggle="dropdown" href="#">관리자메뉴<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="<%=ctxPath%>/imageTab.action">이미지탭보기</a></li>
				<li><a href="#">서브메뉴2</a></li>
			    <li><a href="#">서브메뉴3</a></li>
			</ul>
		</li>
		</c:if>
		
		<!-- === #49. 로그인이 성공되어지면 로그인되어진 사용자의 이메일 주소를 출력하기 === -->
		<c:if test="${sessionScope.loginuser != null}">
			<li style="margin-left: 35%; margin-top: 1%;">
			  <span style="color: navy; font-weight: bold; font-size: 10pt;">${sessionScope.loginuser.email}</span> 님
			</li>
		</c:if>
		
	</ul>
</div>
    