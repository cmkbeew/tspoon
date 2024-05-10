<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!doctype html>
<html lang="ko">


<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/mypage/oneboard_02.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:22:08 GMT -->
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
	<meta name="format-detection" content="telephone=no, address=no" />
	<title>T 클래스</title>
	<script src="/tclass/include/js/jquery-3.4.1.min.js"></script>
	<script src="/tclass/include/js/ui.js"></script>
	<script src="/tclass/include/js/chart.js"></script>
	<script src="/tclass/include/js/swiper.js"></script>
	<script src="/tclass/include/js/aos.js"></script>
	<link rel="stylesheet" type="text/css" href="/tclass/include/css/common.css" />
	<link href="/tclass/include/css/aos.css" rel="stylesheet">
</head>
<body>
	<!--웹영역 전체//-->
	<div id="wrap" class="wrap">
		<!--해더영역//-->
		<div id="header">
			<!-- 23-02-01 수정 --><h1>1:1 친절 상담</h1>
			<span class="btnSide"><a href="#" onclick="openNav()">좌측메뉴 펼침</a></span>
        </div>
        <jsp:include page="/menu.jsp" />
		<!--//해더영역-->
		<!--컨텐츠 본문//-->
		<div id="content" class="pb_0">
			<!--1:1게시판 전체//-->
			<div class="oneBoardWrap">
				<!--탭//-->
				<ul class="boardTab">
					<li><a href="./oneboard.jsp" target="_self">1:1 문의글 작성</a></li>
					<li class="on"><a href="./myboard.do" target="_self">내가 작성한 글</a></li>
				</ul>
				<!--//탭-->
				<!--문의 작성//-->
				<div class="boardBox">
					 <!--상세//-->
					<ul class="boardView">
						<li>
							<p class="title_01">${boardView.division1}<span>${boardView.division2}</span></p>
							<span class="title_02">${boardView.boardTitle}</span>
							<span class="date">${boardView.regDate}<u>${boardView.replyState}</u></span>
						</li>
						<script >
						//itxtArea 영역 반응형 리사이징
						$(document).ready(function(){
							$(window).resize(resizeContents);
							resizeContents();
						});
						function resizeContents() {
							$(".itxtArea").height($(window).height()-405);
						}
						</script>
					   <li class="itxtArea">
							${boardView.boardContent}
						</li>
					</ul>
					<p class="info">답변이 달린 경우 글을 수정하거나 삭제할 수 없습니다.</p>
					<ul class="btnList mt_20">
						<li><button class="button dark big" onclick="location.href='./deleteBoard.do?boardIdx=${boardView.boardIdx}'">삭제</button></li>
						<li><button class="button blue big" onclick="location.href='./modifyBoard.do?boardIdx=${boardView.boardIdx}'">수정</button></li>
					</ul>
					<!--//상세-->
				</div>
				<!--//문의 작성-->
				<!--안내//-->
				 <div class="boardFooter">
					<p>
					1:1 친절상담은 문의 접수일로부터 평일 기준 24시간 이내
					답변을 받으실 수 있습니다. <strong>결제, 환불/취소, 배송문의</strong>는 담당
					관리선생님 또는 아래의 고객센터로 문의 주시기 바랍니다.
					</p>
					<ul>
						<li><strong>유아</strong><span>1522-6002</span></li>
						<li><strong>초등</strong><span>1577-1533</span></li>
						<li><strong>중고등</strong><span>1522-5533</span></li>
					</ul>
				</div>
				<!--//안내-->
			</div>
			<!--//1:1게시판 전체-->
		</div>
		<!--//컨텐츠 본문-->
	</div>
	<!--//웹영역 전체-->
</body>

<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/mypage/oneboard_02.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:22:08 GMT -->
</html>
