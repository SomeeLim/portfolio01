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
			title = "강좌리스트";
			prenum = "01";
			nextnum = "03";
			$("#whichTitle").html(title);
		}
		else if(num == '03') {
			title = "강좌상세페이지";
			prenum = "02";
			nextnum = "04";
			$("#whichTitle").html(title);
		}
		else if(num == '04') {
			title = "접수상태";
			prenum = "03";
			nextnum = "05";
			$("#whichTitle").html(title);
		}
		else if(num == '05') {
			title = "AOP&좋아요";
			prenum = "04";
			nextnum = "06";
			$("#whichTitle").html(title);
		}
		else if(num == '06') {
			title = "강좌스케쥴";
			prenum = "05";
			nextnum = "07";
			$("#whichTitle").html(title);
		}
		else if(num == '07') {
			title = "대기자신청";
			prenum = "06";
			nextnum = "08";
			$("#whichTitle").html(title);
		}
		else if(num == '08') {
			title = "장바구니";
			prenum = "07";
			nextnum = "09";
			$("#whichTitle").html(title);
		}
		else if(num == '09') {
			title = "게시판";
			prenum = "08";
			nextnum = "10";
			$("#whichTitle").html(title);
		}
		else if(num == '10') {
			title = "댓글";
			prenum = "09";
			nextnum = "11";
			$("#whichTitle").html(title);
		}
		else if(num == '11') {
			title = "댓글조회";
			prenum = "10";
			nextnum = "12";
			$("#whichTitle").html(title);
		}
		else if(num == '12') {
			title = "댓글삭제";
			prenum = "11";
			nextnum = "13";
			$("#whichTitle").html(title);
		}
		else if(num == '13') {
			title = "차트";
			prenum = "12";
			nextnum = "14";
			$("#whichTitle").html(title);
		}
		else if(num == '14') {
			title = "E-book뷰어";
			prenum = "13";
			nextnum = "14";
			$("#whichTitle").html(title);
		}
		
		$("#prevPage").click(function() {
			location.href="<%=ctxPath%>/finalImgPopUP.somi?imgNo="+prenum;
		});
		
		$("#nextPage").click(function() {
			location.href="<%=ctxPath%>/finalImgPopUP.somi?imgNo="+nextnum;
		});
		
	});
	
	function closepopup() {
		
		window.close();
		
	}
	
	function finalGit() {
		
		var win = window.open("https://github.com/SomeeLim/awesomecenter", '_blank');
        win.focus();
		
		// location.href="https://github.com/SomeeLim/SaintLaura";
		
	}
	
</script>

<img src="resources/awesomecenter/${imgNo}asw.png" style="width: 1000px;" />

<div align="center">
	<div id="whichTitle" style="font-size: 15pt; font-weight: bold; color: #004c86;"></div>
	<br/>
	<button style="display: inline-block; cursor: pointer;" type="button" class="btn btn-default" id="prevPage">이전 구현화면</button>
	<button style="display: inline-block; cursor: pointer;" type="button" class="btn btn-default" onclick="closepopup()">닫기</button>
	<button style="display: inline-block; cursor: pointer;" type="button" class="btn btn-default" id="nextPage">다음 구현화면</button><br/><br/>
	<img src="resources/images/github.png" style="margin-left:3%; width: 20px; height: 20px; cursor: pointer;" onclick="finalGit()" />
	<span style="font-size: 10pt; text-decoration: underline; cursor: pointer; color:red;" onclick="finalGit()" >으뜸문화센터 소스코드</span>
</div>