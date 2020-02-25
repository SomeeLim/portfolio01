<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String ctxPath = request.getContextPath(); %>  
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>	
<script type="text/javascript">
	
	$(document).ready(function() {
		
		var num = '${imgNo}';
		var title = "";
		var prenum = "";
		var nextnum = "";
		
		if(num == '01') {
			title = "메인페이지";
			prenum = "01";
			nextnum = "02";
			$("#whichTitle").html(title);
		}
		else if(num == '02') {
			title = "주문반품리스트";
			prenum = "01";
			nextnum = "03";
			$("#whichTitle").html(title);
		}
		else if(num == '03') {
			title = "주문상세페이지";
			prenum = "02";
			nextnum = "04";
			$("#whichTitle").html(title);
		}
		else if(num == '04') {
			title = "상품통합검색";
			prenum = "03";
			nextnum = "05";
			$("#whichTitle").html(title);
		}
		else if(num == '05') {
			title = "고객서비스";
			prenum = "04";
			nextnum = "06";
			$("#whichTitle").html(title);
		}
		else if(num == '06') {
			title = "이메일문의";
			prenum = "05";
			nextnum = "07";
			$("#whichTitle").html(title);
		}
		else if(num == '07') {
			title = "전화문의";
			prenum = "06";
			nextnum = "08";
			$("#whichTitle").html(title);
		}
		else if(num == '08') {
			title = "매장찾기";
			prenum = "07";
			nextnum = "09";
			$("#whichTitle").html(title);
		}
		else if(num == '09') {
			title = "관리자-회원목록";
			prenum = "08";
			nextnum = "10";
			$("#whichTitle").html(title);
		}
		else if(num == '10') {
			title = "관리자-회원검색";
			prenum = "09";
			nextnum = "11";
			$("#whichTitle").html(title);
		}
		else if(num == '11') {
			title = "관리자-상품등록";
			prenum = "10";
			nextnum = "12";
			$("#whichTitle").html(title);
		}
		else if(num == '12') {
			title = "관리자-상품삭제";
			prenum = "11";
			nextnum = "12";
			$("#whichTitle").html(title);
		}
		
		$("#prevPage").click(function() {
			location.href="<%=ctxPath%>/semiImgPopUP.somi?imgNo="+prenum;
		});
		
		$("#nextPage").click(function() {
			location.href="<%=ctxPath%>/semiImgPopUP.somi?imgNo="+nextnum;
		});
		
	});
	
	function closepopup() {
		
		window.close();
		
	}
	
	function semiGit() {
		
		var win = window.open("https://github.com/SomeeLim/SaintLaura", '_blank');
        win.focus();
		
		// location.href="https://github.com/SomeeLim/SaintLaura";
		
	}
	
</script>

<img src="resources/saintlarua/${imgNo}saint.png" style="width: 1000px;" />

<div align="center">
	<div id="whichTitle" style="font-size: 15pt; font-weight: bold; color: #004c86;"></div>
	<br/>
	<button style="display: inline-block; cursor: pointer;" type="button" class="btn btn-default" id="prevPage">이전 구현화면</button>
	<button style="display: inline-block; cursor: pointer;" type="button" class="btn btn-default" onclick="closepopup()">닫기</button>
	<button style="display: inline-block; cursor: pointer;" type="button" class="btn btn-default" id="nextPage">다음 구현화면</button><br/><br/>
	<img src="resources/images/github.png" style="margin-left:3%; width: 20px; height: 20px; cursor: pointer;" onclick="semiGit()" />
	<span style="font-size: 10pt; text-decoration: underline; cursor: pointer; color:red;" onclick="semiGit()" >Saint Laura 소스코드</span>
</div>