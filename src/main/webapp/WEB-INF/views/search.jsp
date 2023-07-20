<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Modern Business - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="resources/assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.js delivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="resources/css/member/search.css" rel="stylesheet" />
        <script
		  src="https://code.jquery.com/jquery-3.4.1.js"
		  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
		  crossorigin="anonymous"></script>
    </head>
    <body class="d-flex flex-column h-100">
        <main class="flex-shrink-0">
            <!-- Navigation-->
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container px-5">
                    <a class="navbar-brand" href="index.html">Start Bootstrap</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <div class="search_wrap">
                		<form id="searchForm" action="/search" method="get">
                			<div class="search_input">
                				<select name="type">
                					<option value="T">물품명</option>
                				</select>
                				<input type="text" name="keyword" value="<c:out value="${pageMaker.cri.keyword}"/>">
                    			<button class='search_btn'>검 색</button>                				
                			</div>
                		</form>
                	</div>
                        <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
                            <li class="nav-item"><a class="nav-link" href="/admin/goodsenroll">상품등록</a></li>
                            <li class="nav-item"><a class="nav-link" href="/admin/goodsManage">상품목록</a></li>
                            <li class="nav-item"><a class="nav-link" href="/admin/authorEnroll">판매자등록</a></li>
                            <li class="nav-item"><a class="nav-link" href="/admin/authorManage">판매자관리</a></li>
                            <li class="nav-item"><a class="nav-link" href="/admin/qna">고객센터</a></li>
                            <li class="nav-item"><a class="nav-link" href="/member/join">회원가입</a></li>
                            <li class="nav-item"><a class="nav-link" href="/member/login">로그인</a></li>
                            <c:if test="${ member != null }">
                            	<c:if test="${ member.adminCk == 1 }">
                            <li class="nav-item"><a class="nav-link" href="/admin/index">관리자 페이지</a></li>
                            </c:if>
                            </c:if>
                            <li>
	                        <a id="gnb_logout_button">로그아웃</a>
	                        </li>
                        </ul>
                    </div>
                </div>
            </nav> 
<div class="content_area">
<!-- 게시물 o -->
			<c:if test="${listcheck != 'empty'}">
			<div class="list_search_result">
					<table class="type_list">
						<colgroup>
							<col width="110">
							<col width="*">
							<col width="120">
							<col width="120">
							<col width="120">
						</colgroup>
						<tbody id="searchList>">
							<c:forEach items="${list}" var="list">
								<tr>
									<td class="image">
										<div class="image_wrap" data-prodid="${list.imageList[0].prodId}" data-path="${list.imageList[0].uploadPath}" data-uuid="${list.imageList[0].uuid}" data-filename="${list.imageList[0].fileName}">
										<img>
										</div>
									</td>
									<td class="detail">
										<div class="category">
											[${list.cateName}]
										</div>
										<div class="title">
											${list.prodName}
										</div>
										<div class="author">
											<fmt:parseDate var="publeYear" value="${list.publeYear}" pattern="yyyy-MM-dd" />
											ID ${list.authorName} | ${list.publisher} 판매자 | <fmt:formatDate value="${publeYear}" pattern="yyyy-MM-dd"/>
										</div>
									</td>
									<td class="info">
										<div class="rating">
											평점(추후 추가)
										</div>
									</td>
									<td class="price">
										<div class="org_price">
											<del>
												<fmt:formatNumber value="${list.prodPrice}" pattern="#,### 원" />
											</del>
										</div>
										<div class="sell_price">
											<strong>
												<fmt:formatNumber value="${list.prodPrice * (1-list.prodDiscount)}" pattern="#,### 원"/>
											</strong>
										</div>
									</td>
									<td class="option"></td>
								</tr>
							</c:forEach>
						</tbody>
					
					</table>
				</div>
				
				<!-- 페이지 이동 인터페이스 -->
				<div class="pageMaker_wrap">
					<ul class="pageMaker">
	                			
						<!-- 이전 버튼 -->
						<c:if test="${pageMaker.prev }">
	               			<li class="pageMaker_btn prev">
	               				<a href="${pageMaker.pageStart -1}">이전</a>
	               			</li>
						</c:if>
	               			
	               		<!-- 페이지 번호 -->
	               		<c:forEach begin="${pageMaker.pageStart }" end="${pageMaker.pageEnd }" var="num">
	               			<li class="pageMaker_btn ${pageMaker.cri.pageNum == num ? 'active':''}">
	               				<a href="${num}">${num}</a>
	               			</li>	
	               		</c:forEach>
	               		
	                   	<!-- 다음 버튼 -->
	                   	<c:if test="${pageMaker.next}">
	                   		<li class="pageMaker_btn next">
	                   			<a href="${pageMaker.pageEnd + 1 }">다음</a>
	                   		</li>
	                   	</c:if>
					</ul>
				</div>
				
				<form id="moveForm" action="/search" method="get" >
					<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
					<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
					<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
					<input type="hidden" name="type" value="${pageMaker.cri.type}">
				</form>
				
			</c:if>
			<!-- 게시물 x -->
			<c:if test="${listcheck == 'empty'}">
				<div class="table_empty">
					검색결과가 없습니다.
				</div>
			</c:if>
</div>
</main>
</body>
<script>

/* 페이지 이동 버튼 */
const moveForm = $('#moveForm');

$(".pageMaker_btn a").on("click", function(e){
	
	e.preventDefault();
	
	moveForm.find("input[name='pageNum']").val($(this).attr("href"));
	
	moveForm.submit();
	
});

$(document).ready(function(){
	
	// 검색 타입 selected
	const selectedType = '<c:out value="${pageMaker.cri.type}"/>';
	if(selectedType != ""){
		$("select[name='type']").val(selectedType).attr("selected", "selected");	
	}
	
	/* 이미지 삽입 */
	$(".image_wrap").each(function(i, obj){
		
		const bobj = $(obj);
		
		if(bobj.data("prodid")){
		const uploadPath = bobj.data("path");
		const uuid = bobj.data("uuid");
		const fileName = bobj.data("filename");
		
		const fileCallPath = encodeURIComponent(uploadPath + "/s_" + uuid + "_" + fileName);
		
		$(this).find("img").attr('src', '/display?fileName=' + fileCallPath);
		} else {
			$(this).find("img").attr('src', '/resources/assets/몰루.jpg');
		}
		
	});
	
});

</script>
</html>