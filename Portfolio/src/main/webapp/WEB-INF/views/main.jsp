<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String ctxPath = request.getContextPath(); %>     
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Portfolio</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>	
  <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
</head>
<style type="text/css">

@import url(//fonts.googleapis.com/earlyaccess/nanumgothic.css);
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);
/* 
	@font-face { 
		font-family: 'NanumBarunGothic'; 
		font-style: normal; 
		font-weight: 400; 
		src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot'); 
		src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot?#iefix') format('embedded-opentype'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.woff') format('woff'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.ttf') format('truetype'); 
	} 
	
	@font-face { 
		font-family: 'NanumBarunGothic'; 
		font-style: normal; 
		font-weight: 700; 
		src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebBold.eot'); 
		src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebBold.eot?#iefix') format('embedded-opentype'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebBold.woff') format('woff'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebBold.ttf') format('truetype') 
	} 
	
	@font-face { 
		font-family: 'NanumBarunGothic'; 
		font-style: normal; 
		font-weight: 300; 
		src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebLight.eot'); 
		src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebLight.eot?#iefix') format('embedded-opentype'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebLight.woff') format('woff'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebLight.ttf') format('truetype'); 
	} 
	
	.nanumbarungothic * { font-family: 'NanumBarunGothic', sans-serif; } */
	
	/* .nanumsquare { font-family: 'NanumSquare', sans-serif !important; } */
	
	body {
		font-family: 'Noto Sans KR', 'Nanum Gothic', sans-serif;
	}

	.row {
		display: flex;
	}

	.header {
		z-index: 1;
	}
	
	.headerFixed {
		position: fixed;
		top: 0;
		left: 0;
		right: 0;
	}

	.title {
		text-align: center;
		vertical-align: middle;
		font-size: 20pt;
		padding: 2% 0;
		cursor: pointer;
		background-color: white;
	}
	
	.selectTitle {
		background-color: #004c86; 
		color: white;
	}
	
	.profileTop {
		padding-top:5%;
	}
	
	
	.rightProfile {
		color: white;
	}
	
	#profilePhoto {
		width: 60%; 
		height: 60%;
		padding-top: 20%;
		padding-bottom: 8%;
	}
	
	a {
		color:black;
	}
	
	a:hover {
		color:black;
	}

</style>

<script type="text/javascript">

	$(document).ready(function() {
		
		$(".portfolio").addClass("selectTitle");
		
		var jbOffset = $( '.header' ).offset();
        $( window ).scroll( function() {
          if ( $( document ).scrollTop() > jbOffset.top ) {
            $( '.header' ).addClass( 'headerFixed' );
            $( '.mainProfile' ).addClass( 'profileTop' );
          }
          else {
            $( '.header' ).removeClass( 'headerFixed' );
            $( '.mainProfile' ).removeClass( 'profileTop' );
          }
        });
		
	});
	
	function openSemiImg(num) {
		
		window.open("<%=ctxPath%>/semiImgPopUP.somi?imgNo="+num, "이미지 크게 보기", "scrollbars=yes,width=1000,height=700,top=10,left=20");
		
	}
	
	function semiGit() {
		
		var win = window.open("https://github.com/SomeeLim/SaintLaura", '_blank');
        win.focus();
		
		// location.href="https://github.com/SomeeLim/SaintLaura";
		
	}
	
	function openFinalImg(num) {
		
		window.open("<%=ctxPath%>/finalImgPopUP.somi?imgNo="+num, "이미지 크게 보기", "scrollbars=yes,width=1000,height=700,top=10,left=20");
		
	}
	
	function finalGit() {
		
		var win = window.open("https://github.com/SomeeLim/awesomecenter", '_blank');
        win.focus();
		
		// location.href="https://github.com/SomeeLim/SaintLaura";
		
	}

</script>

<body>

	<div id="container">
		<%-- Header --%>
		<a name="profile"></a>
		<header class="row header">
			<div class="col-xs-3 title portfolio" style="font-size: 15pt;">"안녕하세요<br/>Developer 임소미입니다"</div>
			<div class="col-xs-3 title profile"><div style="display:inline-block; background-color: #004c86; width: 2%; height: 30%;"></div>&nbsp;<a href="#profile">Profile</a></div>
			<div class="col-xs-3 title semi"><div style="display:inline-block; background-color: #004c86; width: 2%; height: 30%;"></div>&nbsp;<a href="#semi">Semi Project</a></div>
			<div class="col-xs-3 title final"><div style="display:inline-block; background-color: #004c86; width: 2%; height: 30%;"></div>&nbsp;<a href="#final">Final Project</a></div>
		</header>
		
		<%-- Profile --%>
		<div class="row mainProfile">
			<div class="col-xs-3 rightProfile" style="background-color: #004c86; ">
				<div id="profile1" style="text-align: center; padding-top: 10%;">
					<img src="resources/images/UNADJUSTEDNONRAW_thumb_173d.png" id="profilePhoto"  />
				</div>
				<div align="center" style="padding-bottom: 20%; font-size: 14pt; padding-left: 0%;">
					<table style="border: solid 2px #004c86; text-align: center;">
						<tr><%-- --%>
							<%-- <td style="width: 40%; background-color: white; border-bottom: solid 3px #004c86;">
								<span style="color:#004c86; font-weight: bold;">&nbsp;NAME&nbsp;</span>
							</td>--%>
							<td>
								&nbsp;임소미
							</td>
						</tr>
						<tr>
							<%-- <td style="width: 40%; background-color: white; border-bottom: solid 3px #004c86;">
								<span style="color:#004c86; font-weight: bold;">&nbsp;BIRTHDAY&nbsp;</span>
							</td>--%>
							<td>
								&nbsp;1992-01-12
							</td>
						</tr>
						<tr>
							<%-- <td style="width: 40%; background-color: white; border-bottom: solid 3px #004c86;">
								<span style="color:#004c86; font-weight: bold;">&nbsp;MOBILE&nbsp;</span>
							</td>--%>
							<td>
								&nbsp;010-9247-0229
							</td>
						</tr>
						<tr>
							<%-- <td style="width: 40%; background-color: white; border-bottom: solid 3px #004c86;">
								<span style="color:#004c86; font-weight: bold;">&nbsp;E-MAIL&nbsp;</span>
							</td>--%>
							<td>
								&nbsp;maltidalti@gmail.com
							</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="col-xs-6 centerProfile">
				<table style="width: 90%; margin-top:5%; margin-left: 2%; margin-bottom: 3%;">
					<tr>
						<td rowspan="3"style="vertical-align: top; padding: 2% 2%; font-size: 20pt; font-weight: bold; color: #004c86; width: 40%;">EDUCATION</td>
						<td style="padding: 1% 2%;">
							<span style="font-size: 12pt; font-weight: bold; color: #b3b3b3;">2007.03 ~ 2010.02</span><br/>
							<span style="font-size: 14pt; font-weight: bold;">청원여자고등학교 졸업</span>
						</td>
					</tr>
					<tr>
						<td style="padding: 1% 2%;">
							<span style="font-size: 12pt; font-weight: bold; color: #b3b3b3;">2010.03 ~ 2018.02</span><br/>
							<span style="font-size: 14pt; font-weight: bold;">국민대학교 졸업</span><br/>
							<span style="font-size: 10pt;">영어영문학과, 경영학과</span>
						</td>
					</tr>
					<tr>
						<td style="padding: 1% 2%;">
							<span style="font-size: 12pt; font-weight: bold; color: #b3b3b3;">2019.08 ~ 2020.02</span><br/>
							<span style="font-size: 14pt; font-weight: bold;">KH정보교육원 수료</span><br/>
							<span style="font-size: 10pt;">[NCS]디지털 컨버전스 융합 응용 SW개발자 양성과정</span>
						</td>
					</tr>
				</table>
				
				<table style="width: 90%; margin-left: 2%; margin-bottom: 3%;">
					<tr>
						<td rowspan="3" style="vertical-align: top; padding: 2% 2%; font-size: 20pt; font-weight: bold; color: #004c86; width: 40%;">CERTIFICATION</td>
						<td style="padding: 1% 2%;">
							<span style="font-size: 12pt; font-weight: bold; color: #b3b3b3;">2019.11.24</span><br/>
							<span style="font-size: 14pt; font-weight: bold;">정보처리기사</span>
						</td>
					</tr>
					<tr>
						<td style="padding: 1% 2%;">
							<span style="font-size: 12pt; font-weight: bold; color: #b3b3b3;">2019.02.24</span><br/>
							<span style="font-size: 14pt; font-weight: bold;">TOEIC</span><br/>
							<span style="font-size: 10pt;">870점</span>
						</td>
					</tr>
				</table>
				
				<table style="width: 90%; margin-left: 2%; margin-bottom: 3%;">
					<tr>
						<td rowspan="3"style="vertical-align: top; padding: 2% 2%; font-size: 20pt; font-weight: bold; color: #004c86; width: 40%;">AWARDS</td>
						<td style="padding: 1% 2%;">
							<span style="font-size: 14pt; font-weight: bold;">SAP KOREA 2013 RUNBETTER</span><br/>
							<span style="font-size: 10pt;">우수상</span>
						</td>
					</tr>
					<tr>
						<td style="padding: 1% 2%;">
							<span style="font-size: 14pt; font-weight: bold;">신세계 유통프론티어 2014</span><br/>
							<span style="font-size: 10pt;">장려상</span>
						</td>
					</tr>
				</table>
				
			</div>
			<div class="col-xs-3 leftProfile">
				<br/><br/>
				<span style="padding: 4% 2%; font-size: 20pt; font-weight: bold; color: #004c86;">SKILLS</span><br/>
				<img src="resources/logoImg/Java_logo_icon.png" style="width: 100px; height: 60px;" />
				<img src="resources/logoImg/spring.png" style="width: 85px; height: 60px;" />
				<img src="resources/logoImg/oracle.png" style="width: 100px; height: 60px;" />
				<img src="resources/logoImg/html.png" style="width: 150px; height: 60px;" />
				<img src="resources/logoImg/jquery-logo.png" style="width: 100px; height: 60px;" />
				<img src="resources/logoImg/ajax.png" style="width: 100px; height: 60px;" />
				<img src="resources/logoImg/mybatis.png" style="width: 80px; height: 80px;" />
				<img src="resources/logoImg/gitlogo.png" style="width: 60px; height: 60px;" />
			</div>
		</div>
		
		<a name="semi"></a>
		<div class="row semiPageTitle">
			<div class="col-xs-1">
			</div>
			<div class="col-xs-10">
				<div style="margin-left:-4%; margin-top:10%; border-bottom: solid 3px #004c86;">
					<h1 style="font-size: 30pt;">Saint Laura</h1>
					<h4>세미프로젝트 : 가방 판매 쇼핑몰 사이트</h4>
				</div>
			</div>
			<div class="col-xs-1">
			</div>
		</div>
		<div class="row semiPageContent">
			<div class="col-xs-1">
			</div>
			<div class="col-xs-10">
				<div style="margin-left:-4%; margin-top: 3%;">
					<table style="font-size: 11pt; width: 100%;">
						<tr style="background-color: #f2f2f2;">
							<td style="width: 40%; height: 70px; padding-right: 1%; padding-left: 1%; ">프로젝트 개요</td>
							<td style="width: 40%; height: 70px; padding-right: 1%; padding-left: 1%; ">개발 목표</td>
							<td style="width: 20%; height: 70px; padding-left: 1%; ">팀 구성원 및 참여도&기여도</td>
						</tr>
						<tr style="vertical-align: middle; font-size: 9pt;">
							<td style="width: 40%; height: 120px; padding-right: 1%; padding-left: 1%;">
								고객이 원하는 상품을 고객 편의 서비스에 맞추어 제공하고<br/>
								관리자 입장에서 효과적으로 고객 및 주문을 관리할 수 있도록 한다
							</td>
							<td style="width: 40%; height: 120px; padding-right: 1%; padding-left: 1%;">
								Model2 MVC패턴을 기반으로 한<br/>
								JSP와 SERVLET을 이용한 쇼핑몰 사이트 제작<br/>
								ORACLE DBMS를 이용한 데이터 관리
							</td>
							<td style="width: 20%; height: 120px; padding-left: 1%;">
								팀 구성원 : 6명<br/>
								참여도 : 100%<br/>
								기여도 : 25%
							</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="col-xs-1">
			</div>
		</div>
			<div class="row semiImage" style="margin-bottom: 7%;">
				<div class="col-md-5">
					<div style="margin-left: 10%; width: 90%;">
						<span style="font-size: 20pt; font-weight: bold; color:#004c86; margin-left: 3%;">구현화면</span><br/>
						<span style="margin-left: 3%; font-size: 8pt; margin-bottom: 1%;">*클릭시 확대 된 이미지를 볼 수 있습니다</span>
						<div class="semiImgRow">
							<div class="col-xs-3 semiImg">
								<img src="resources/saintlarua/01saint.png" onclick="openSemiImg('01');" style="width: 120px; height: 80px; margin-right: 1%; cursor: pointer; float: left;" />
							</div>
							<div class="col-xs-3 semiImg">
								<img src="resources/saintlarua/02saint.png" onclick="openSemiImg('02');" style="width: 120px; height: 80px; margin-right: 1%; cursor: pointer; float: left;" />
							</div>
							<div class="col-xs-3 semiImg">
								<img src="resources/saintlarua/03saint.png" onclick="openSemiImg('03');" style="width: 120px; height: 80px; margin-right: 1%; cursor: pointer; float: left;" />
							</div>
							<div class="col-xs-3 semiImg">
								<img src="resources/saintlarua/04saint.png" onclick="openSemiImg('04');" style="width: 120px; height: 80px; cursor: pointer; float: left;" />
							</div>
						</div>
						<div class="semiImgRow">
							<div class="col-xs-3 semiImg" style="margin-bottom: 2%;">
								<span style="font-size: 8pt; text-align: center;">메인페이지</span>
							</div>
							<div class="col-xs-3 semiImg" style="margin-bottom: 2%;">
								<span style="font-size: 8pt; text-align: center;">주문반품리스트</span>
							</div>
							<div class="col-xs-3 semiImg" style="margin-bottom: 2%;">
								<span style="font-size: 8pt; text-align: center;">주문상세페이지</span>
							</div>
							<div class="col-xs-3 semiImg" style="margin-bottom: 2%;">
								<span style="font-size: 8pt; text-align: center;">상품통합검색</span>
							</div>
						</div>
						<div class="semiImgRow">
							<div class="col-xs-3 semiImg">
								<img src="resources/saintlarua/05saint.png" onclick="openSemiImg('05');" style="width: 120px; height: 80px; margin-right: 1%; cursor: pointer; float: left;" />
							</div>
							<div class="col-xs-3 semiImg">
								<img src="resources/saintlarua/06saint.png" onclick="openSemiImg('06');" style="width: 120px; height: 80px; margin-right: 1%; cursor: pointer; float: left;" />
							</div>
							<div class="col-xs-3 semiImg">
								<img src="resources/saintlarua/07saint.png" onclick="openSemiImg('07');" style="width: 120px; height: 80px; margin-right: 1%; cursor: pointer; float: left;" />
							</div>
							<div class="col-xs-3 semiImg">
								<img src="resources/saintlarua/08saint.png" onclick="openSemiImg('08');" style="width: 120px; height: 80px; cursor: pointer; float: left;" />
							</div>
						</div>
						<div class="semiImgRow">
							<div class="col-xs-3 semiImg" style="margin-bottom: 2%;">
								<span style="font-size: 8pt; text-align: center;">고객서비스</span>
							</div>
							<div class="col-xs-3 semiImg" style="margin-bottom: 2%;">
								<span style="font-size: 8pt; text-align: center;">이메일문의</span>
							</div>
							<div class="col-xs-3 semiImg" style="margin-bottom: 2%;">
								<span style="font-size: 8pt; text-align: center;">전화문의</span>
							</div>
							<div class="col-xs-3 semiImg" style="margin-bottom: 2%;">
								<span style="font-size: 8pt; text-align: center;">매장찾기</span>
							</div>
						</div>
						<div class="semiImgRow">
							<div class="col-xs-3 semiImg">
								<img src="resources/saintlarua/09saint.png" onclick="openSemiImg('09');" style="width: 120px; height: 80px; margin-right: 1%; cursor: pointer; float: left;" />
							</div>
							<div class="col-xs-3 semiImg">
								<img src="resources/saintlarua/10saint.png" onclick="openSemiImg('10');" style="width: 120px; height: 80px; margin-right: 1%; cursor: pointer; float: left;" />
							</div>
							<div class="col-xs-3 semiImg">
								<img src="resources/saintlarua/11saint.png" onclick="openSemiImg('11');" style="width: 120px; height: 80px; margin-right: 1%; cursor: pointer; float: left;" />
							</div>
							<div class="col-xs-3 semiImg">
								<img src="resources/saintlarua/12saint.png" onclick="openSemiImg('12');" style="width: 120px; height: 80px; cursor: pointer; float: left;" />
							</div>
						</div>
						<div class="semiImgRow">
							<div class="col-xs-3 semiImg" style="margin-bottom: 2%;">
								<span style="font-size: 8pt; text-align: center;">관리자-회원목록</span>
							</div>
							<div class="col-xs-3 semiImg" style="margin-bottom: 2%;">
								<span style="font-size: 8pt; text-align: center;">관리자-회원검색</span>
							</div>
							<div class="col-xs-3 semiImg" style="margin-bottom: 2%;">
								<span style="font-size: 8pt; text-align: center;">관리자-상품등록</span>
							</div>
							<div class="col-xs-3 semiImg" style="margin-bottom: 2%;">
								<span style="font-size: 8pt; text-align: center;">관리자-상품삭제</span>
							</div>
						</div>
						<img src="resources/images/github.png" style="margin-left:3%; width: 20px; height: 20px; cursor: pointer;" onclick="semiGit()" />
						<span style="font-size: 10pt; text-decoration: underline; cursor: pointer; color:red;" onclick="semiGit()" >Saint Laura 소스코드</span>
					</div>
				</div>
				<div class="col-md-7">
					<table style="width: 85%; margin-left: 5%;">
						<tr>
							<td colspan="2">
								<span style="font-size: 20pt; font-weight: bold; color:#004c86;">담당역할</span>
							</td>
						</tr>
						<tr>
							<td style="padding: 1% 1%; font-size: 9pt;">
								<span style="background-color: #f2f2f2; font-size: 12pt; line-height: 180%;">주문반품리스트</span><br/>
								- 로그인한 회원만 본인의 주문반품리스트를 확인 가능하도록 허용<br/>
								- AJAX를 이용하여 개인 주문반품리스트 구현<br/>
								- AJAX내 또 다른 AJAX를 구현한 함수를 호출하여 교환,환불 내역이<br/>
								  &nbsp;&nbsp;있는 경우에만 교환반품상세 페이지로 이동가능한 버튼 구현
							</td>
							<td style="padding: 1% 1%; font-size: 9pt;">
								<span style="background-color: #f2f2f2; font-size: 12pt; line-height: 180%;">고객서비스(이메일문의)</span><br/>
								 - SMTP프로토콜 기반으로 Gmail서버를 이용해 고객의 이메일 문의를<br/>
   								   &nbsp;&nbsp;관리자 이메일로 받을 수 있는 기능 구현<br/>
   								<span style="background-color: #f2f2f2; font-size: 12pt; line-height: 180%;">고객서비스(전화문의)</span><br/>
								- HTML의 anchor 태그를 이용하여 전화연결기능 구현
							</td>
						</tr>
						<tr>
							<td style="padding: 1% 1%; font-size: 9pt;">
								<span style="background-color: #f2f2f2; font-size: 12pt; line-height: 180%;">주문상세페이지</span><br/>
								- 로그인한 회원만 본인의 주문상세내역을 확인 가능하도록 허용<br/>
							    - JSTL을 사용하여 DB에서 받아온 데이터를 <br/>
							      &nbsp;&nbsp;JSP에 출력하여 개별주문내역에 관한 주문 상세페이지 구현 <br/>
							    - forach태그를 사용하여 전체 내역을 반복하여 호출하고<br/>
							      &nbsp;&nbsp;set태그를 사용해 새로운 변수를 선언하여 주문 총액 도출
							</td>
							<td style="padding: 1% 1%; font-size: 9pt;">
								<span style="background-color: #f2f2f2; font-size: 12pt; line-height: 180%;">고객서비스(매장찾기)</span><br/>
								- 카카오 지도 API를 이용하여 전국의 매장 위치에 마커 생성<br/>
  								- HTML5 Geolocation API를 활용하여 현재위치 찾기 구현<br/>
  								- 매장명 텍스트 선택시 해당 위치의 마커로 이동
							</td>
						</tr>
						<tr>
							<td style="padding: 1% 1%; font-size: 9pt;">
								<span style="background-color: #f2f2f2; font-size: 12pt; line-height: 180%;">결제 후 문자메세지 전송</span><br/>
								 - COOLSMS에서 제공하는 문자메세지 REST API 사용하여 <br/>
     							   &nbsp;&nbsp;결제완료 문자메세지 전송
							</td>
							<td style="padding: 1% 1%; font-size: 9pt;">
								<span style="background-color: #f2f2f2; font-size: 12pt; line-height: 180%;">관리자용 회원목록 리스트</span><br/>
								- 관리자 계정만 관리자페이지를 볼 수 있도록 허용<br/>
  								- AJAX객체에 2개의 배열 객체를 담아<br/>
   								  &nbsp;&nbsp;카테고리필터와 리스트, pagination 기능 모두 AJAX로 구현
							</td>
						</tr>
						<tr>
							<td style="padding: 1% 1%; font-size: 9pt;">
								<span style="background-color: #f2f2f2; font-size: 12pt; line-height: 180%;">상품검색</span><br/>
								- DB에서 상품Data 불러온 후 <br/>
								  &nbsp;&nbsp;더보기 Pagination으로 검색용 상품페이지 구현<br/>
   								- 성별/가방종류/색상으로 카테고리를 구분, 해당 option 변경시<br/>
    							  &nbsp;&nbsp;AJAX를 이용하여 바로 상품 결과 도출
							</td>
							<td style="padding: 1% 1%; font-size: 9pt;">
								<span style="background-color: #f2f2f2; font-size: 12pt; line-height: 180%;">관리자용 상품 등록 및 삭제</span><br/>
								- 관리자 계정만 관리자페이지를 볼 수 있도록 허용<br/>
  								- MultipartRequest 객체를 사용하여 상품 업로드 기능 구현<br/>
  								- 상품 리스트 페이지에 관리자에게만 허용되는 상품 삭제 버튼 구현
							</td>
						</tr>
						
					</table>
				</div>
			</div>
		
		<a name="final"></a>
		<div class="row finalPageTitle">
			<div class="col-xs-1">
			</div>
			<div class="col-xs-10">
				<div style="margin-left:-4%; border-bottom: solid 3px #004c86;">
					<h1 style="font-size: 30pt;">으뜸문화센터</h1>
					<h4>파이널프로젝트 : 문화센터 취미 강좌 신청 사이트</h4>
				</div>
			</div>
			<div class="col-xs-1">
			</div>
		</div>
		<div class="row finalPageContent">
			<div class="col-xs-1">
			</div>
			<div class="col-xs-10">
				<div style="margin-left:-4%; margin-top: 3%;">
					<table style="font-size: 11pt; width: 100%;">
						<tr style="background-color: #f2f2f2;">
							<td style="width: 40%; height: 70px; padding-right: 1%; padding-left: 1%; ">프로젝트 개요</td>
							<td style="width: 40%; height: 70px; padding-right: 1%; padding-left: 1%; ">개발 목표</td>
							<td style="width: 20%; height: 70px; padding-left: 1%; ">팀 구성원 및 참여도&기여도</td>
						</tr>
						<tr style="vertical-align: middle; font-size: 9pt;">
							<td style="width: 40%; height: 120px; padding-right: 1%; padding-left: 1%;">
								다양한 취미 경험을 추구하는 회원들을 위한 컨텐츠와 기능을 설계하며<br/>
								관리의 용이함을 위한 관리자 입장의 기능도 구축한다
							</td>
							<td style="width: 40%; height: 120px; padding-right: 1%; padding-left: 1%;">
								Spring Framework 및 Tiles Framework을 사용한 MVC2 패턴하에 <br/>
								Mybatis를 이용하여 Oracle Database 를 제어하고 <br/>
								Ajax를 사용하여 실시간 데이터처리가 가능한 문화센터 홈페이지를 구현
							</td>
							<td style="width: 20%; height: 120px; padding-left: 1%;">
								팀 구성원 : 6명<br/>
								참여도 : 100%<br/>
								기여도 : 25%
							</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="col-xs-1">
			</div>
		</div>
		<div class="row finalImage" style="margin-bottom: 7%;">
				<div class="col-md-5">
					<div style="margin-left: 10%; width: 90%;">
						<span style="font-size: 20pt; font-weight: bold; color:#004c86; margin-left: 3%;">구현화면</span><br/>
						<span style="margin-left: 3%; font-size: 8pt; margin-bottom: 1%;">*클릭시 확대 된 이미지를 볼 수 있습니다</span>
						<div class="finalImgRow">
							<div class="col-xs-3 finalImg">
								<img src="resources/awesomecenter/01asw.png" onclick="openFinalImg('01');" style="width: 120px; height: 80px; margin-right: 1%; cursor: pointer; float: left;" />
							</div>
							<div class="col-xs-3 finalImg">
								<img src="resources/awesomecenter/02asw.png" onclick="openFinalImg('02');" style="width: 120px; height: 80px; margin-right: 1%; cursor: pointer; float: left;" />
							</div>
							<div class="col-xs-3 finalImg">
								<img src="resources/awesomecenter/03asw.png" onclick="openFinalImg('03');" style="width: 120px; height: 80px; margin-right: 1%; cursor: pointer; float: left;" />
							</div>
							<div class="col-xs-3 finalImg">
								<img src="resources/awesomecenter/04asw.png" onclick="openFinalImg('04');" style="width: 120px; height: 80px; cursor: pointer; float: left;" />
							</div>
						</div>
						<div class="finalImgRow">
							<div class="col-xs-3 finalImg" style="margin-bottom: 2%;">
								<span style="font-size: 8pt; text-align: center;">메인페이지</span>
							</div>
							<div class="col-xs-3 finalImg" style="margin-bottom: 2%;">
								<span style="font-size: 8pt; text-align: center;">강좌리스트</span>
							</div>
							<div class="col-xs-3 finalImg" style="margin-bottom: 2%;">
								<span style="font-size: 8pt; text-align: center;">강좌상세페이지</span>
							</div>
							<div class="col-xs-3 finalImg" style="margin-bottom: 2%;">
								<span style="font-size: 8pt; text-align: center;">접수상태</span>
							</div>
						</div>
						<div class="finalImgRow">
							<div class="col-xs-3 finalImg">
								<img src="resources/awesomecenter/05asw.png" onclick="openFinalImg('05');" style="width: 120px; height: 80px; margin-right: 1%; cursor: pointer; float: left;" />
							</div>
							<div class="col-xs-3 finalImg">
								<img src="resources/awesomecenter/06asw.png" onclick="openFinalImg('06');" style="width: 120px; height: 80px; margin-right: 1%; cursor: pointer; float: left;" />
							</div>
							<div class="col-xs-3 finalImg">
								<img src="resources/awesomecenter/07asw.png" onclick="openFinalImg('07');" style="width: 120px; height: 80px; margin-right: 1%; cursor: pointer; float: left;" />
							</div>
							<div class="col-xs-3 finalImg">
								<img src="resources/awesomecenter/08asw.png" onclick="openFinalImg('08');" style="width: 120px; height: 80px; cursor: pointer; float: left;" />
							</div>
						</div>
						<div class="finalImgRow">
							<div class="col-xs-3 finalImg" style="margin-bottom: 2%;">
								<span style="font-size: 8pt; text-align: center;">AOP&좋아요</span>
							</div>
							<div class="col-xs-3 finalImg" style="margin-bottom: 2%;">
								<span style="font-size: 8pt; text-align: center;">강좌스케쥴</span>
							</div>
							<div class="col-xs-3 finalImg" style="margin-bottom: 2%;">
								<span style="font-size: 8pt; text-align: center;">대기자신청</span>
							</div>
							<div class="col-xs-3 finalImg" style="margin-bottom: 2%;">
								<span style="font-size: 8pt; text-align: center;">장바구니</span>
							</div>
						</div>
						<div class="finalImgRow">
							<div class="col-xs-3 finalImg">
								<img src="resources/awesomecenter/09asw.png" onclick="openFinalImg('09');" style="width: 120px; height: 80px; margin-right: 1%; cursor: pointer; float: left;" />
							</div>
							<div class="col-xs-3 finalImg">
								<img src="resources/awesomecenter/10asw.png" onclick="openFinalImg('10');" style="width: 120px; height: 80px; margin-right: 1%; cursor: pointer; float: left;" />
							</div>
							<div class="col-xs-3 finalImg">
								<img src="resources/awesomecenter/11asw.png" onclick="openFinalImg('11');" style="width: 120px; height: 80px; margin-right: 1%; cursor: pointer; float: left;" />
							</div>
							<div class="col-xs-3 finalImg">
								<img src="resources/awesomecenter/12asw.png" onclick="openFinalImg('12');" style="width: 120px; height: 80px; cursor: pointer; float: left;" />
							</div>
						</div>
						<div class="finalImgRow">
							<div class="col-xs-3 finalImg" style="margin-bottom: 2%;">
								<span style="font-size: 8pt; text-align: center;">게시판</span>
							</div>
							<div class="col-xs-3 finalImg" style="margin-bottom: 2%;">
								<span style="font-size: 8pt; text-align: center;">댓글</span>
							</div>
							<div class="col-xs-3 finalImg" style="margin-bottom: 2%;">
								<span style="font-size: 8pt; text-align: center;">댓글조회</span>
							</div>
							<div class="col-xs-3 finalImg" style="margin-bottom: 2%;">
								<span style="font-size: 8pt; text-align: center;">댓글삭제</span>
							</div>
						</div>
						<div class="finalImgRow">
							<div class="col-xs-3 finalImg">
								<img src="resources/awesomecenter/13asw.png" onclick="openFinalImg('13');" style="width: 120px; height: 80px; margin-right: 1%; cursor: pointer; float: left;" />
							</div>
							<div class="col-xs-3 finalImg">
								<img src="resources/awesomecenter/14asw.png" onclick="openFinalImg('14');" style="width: 120px; height: 80px; margin-right: 1%; cursor: pointer; float: left;" />
							</div>
							<div class="col-xs-3 finalImg">
								<img src="resources/awesomecenter/blank.png" style="width: 120px; height: 80px; margin-right: 1%; float: left;" />
							</div>
							<div class="col-xs-3 finalImg">
								<img src="resources/awesomecenter/blank.png" style="width: 120px; height: 80px; margin-right: 1%; float: left;" />
							</div>
						</div>
						<div class="finalImgRow">
							<div class="col-xs-3 finalImg" style="margin-bottom: 2%;">
								<span style="font-size: 8pt; text-align: center;">차트</span>
							</div>
							<div class="col-xs-3 finalImg" style="margin-bottom: 2%;">
								<span style="font-size: 8pt; text-align: center;">E-book뷰어</span>
							</div>
							<div class="col-xs-3 finalImg" style="margin-bottom: 2%;">
								<span style="font-size: 8pt; text-align: center; color:white;">###</span>
							</div>
							<div class="col-xs-3 finalImg" style="margin-bottom: 2%;">
								<span style="font-size: 8pt; text-align: center; color:white;">###</span>
							</div>
						</div>
						<img src="resources/images/github.png" style="margin-left:3%; width: 20px; height: 20px; cursor: pointer;" onclick="finalGit()" />
						<span style="font-size: 10pt; text-decoration: underline; cursor: pointer; color:red;" onclick="finalGit()">으뜸문화센터 소스코드</span>
					</div>
				</div>
				<div class="col-md-7">
					<table style="width: 85%; margin-left: 5%;">
						<tr>
							<td colspan="2">
								<span style="font-size: 20pt; font-weight: bold; color:#004c86;">담당역할</span>
							</td>
						</tr>
						<tr>
							<td style="padding: 1% 1%; font-size: 9pt;">
								<span style="background-color: #f2f2f2; font-size: 12pt; line-height: 180%;">강좌리스트</span><br/>
								- DB에서 강좌 Data 불러온 후 Pagination으로 강좌리스트<br/>
								- 가격/등록일자 순으로 리스트 정렬기능 구현<br/>
							</td>
							<td style="padding: 1% 1%; font-size: 9pt;">
								<span style="background-color: #f2f2f2; font-size: 12pt; line-height: 180%;">대기접수신청</span><br/>
								- 수강인원 초과 시 대기접수 신청 기능 구현 <br/>
								<span style="background-color: #f2f2f2; font-size: 12pt; line-height: 180%;">AOP</span><br/>
								- Before Advice AOP기능을 통해 로그인 유무 검사 기능 구현 <br/>
							</td>
						</tr>
						<tr>
							<td style="padding: 1% 1%; font-size: 9pt;">
								<span style="background-color: #f2f2f2; font-size: 12pt; line-height: 180%;">강좌상세페이지</span><br/>
								- DB에서 강좌 Data 불러온 후 해당 강좌의 상세 정보<br/>
							    - AJAX를 이용한 강좌 좋아요 기능 <br/>
							    - AJAX를 통하여 더보기 Pagination을 이용한 내가 좋아한 강좌 페이지 구현 <br/>
							    - 스케쥴링 기능을 통한 매월 초 강좌 접수상태 변경<br/>
							    - 해당 강좌 SNS공유 기능
							</td>
							<td style="padding: 1% 1%; font-size: 9pt;">
								<span style="background-color: #f2f2f2; font-size: 12pt; line-height: 180%;">장바구니</span><br/>
								- 원하는 강좌 장바구니 및 바로구매 기능 구현<br/>
								<span style="background-color: #f2f2f2; font-size: 12pt; line-height: 180%;">게시판</span><br/>
								- 파일첨부 기능과 XSS공격 방지를 통한 수강재료게시판 구현<br/>
								- 댓글, 비밀댓글, 답변댓글 기능 구현<br/>
								<span style="background-color: #f2f2f2; font-size: 12pt; line-height: 180%;">차트</span><br/>
								- 마이페이지의 관심강좌 기준으로 인기강사 차트 구현
							</td>
						</tr>
						<tr>
							<td style="padding: 1% 1%; font-size: 9pt;">
								<span style="background-color: #f2f2f2; font-size: 12pt; line-height: 180%;">강좌스케쥴</span><br/>
								 - AJAX와 중복 데이터 제거한 배열을 이용하여 카테고리 & 요일 별 <br/>
     							   &nbsp;&nbsp;강좌스케쥴 구현
							</td>
							<td style="padding: 1% 1%; font-size: 9pt;">
								<span style="background-color: #f2f2f2; font-size: 12pt; line-height: 180%;">E-catalog</span><br/>
								 - FlowPaper E-book Viewer API를 통해 E-book기능 구현
							</td>
						</tr>
						
						
					</table>
				</div>
			</div>
	</div>

</body>
</html>