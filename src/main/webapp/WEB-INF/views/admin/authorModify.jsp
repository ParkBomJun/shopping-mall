<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="KR">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Modern Business - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../../resources/css/admin/authorModify.css" rel="stylesheet" />
        <script
		src="https://code.jquery.com/jquery-3.4.1.js"
		integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
		crossorigin="anonymous"></script>
    </head>
            <%@include file="../includes/admin/header.jsp" %>
            <!-- Header-->
            <header class="py-5">
                <div class="container px-5">
                    <div class="row justify-content-center">
                        <div class="col-lg-12 col-xxl-12">
                            <div class="text-center my-5 ">
                                <h1 class="fw-bolder mb-5">판매자 수정 페이지입니다</h1>
                                <div class="admin_content_wrap">
                    <div class="admin_content_main">
                    	<form id="modifyForm" action="/admin/authorModify" method="post">
                   		<div class="form_section">
                   			<div class="form_section_title">
                   				<label>판매자 번호</label>
                   			</div>
                   			<div class="form_section_content">
                   				<input class="input_block" name="authorId" readonly="readonly" value="<c:out value='${authorInfo.authorId }'></c:out>">
                   				
                   			</div>
                   		</div>                    
                   		<div class="form_section">
                   			<div class="form_section_title">
                   				<label>판매자 이름</label>
                   			</div>
                   			<div class="form_section_content">
                   				<input class="input_block" name="authorName" value="<c:out value='${authorInfo.authorName }'></c:out>" >
                   				<span id="warn authorName">판매자 이름을 입력 해주세요</span>
                   			</div>
                   		</div>
                   		<div class="form_section">
                   			<div class="form_section_title">
                   				<label>식별번호</label>
                   			</div>
                   			<div class="form_section_content">
                   				<select class="input_block" name="sellerId" >
                   					<option value="none" selected disabled="disabled">=== 선택 ===</option>
                   					<option value="01" <c:out value=" ${authorInfo.sellerId eq '01' ?'selected':''}"/>>개인</option>
                   					<option value="02" <c:out value=" ${authorInfo.sellerId eq '02' ?'selected':''}"/>>기업</option>
                   				</select>
                   			</div>
                   		</div>
                   		<div class="form_section">
                   			<div class="form_section_title">
                   				<label>판매자 소개</label>
                   			</div>
                   			<div class="form_section_content">
                   				<textarea name="authorIntro"><c:out value='${authorInfo.authorIntro }'/></textarea>
                   				<span id="warn authorIntro">판매자 소개를 입력해주세요</span>
                   			</div>
                   		</div>
                   		<div class="form_section">
                   			<div class="form_section_title">
                   				<label>등록 날짜</label>
                   			</div>
                   			<div class="form_section_content">
                   				<input class="input_block" type="text" readonly="readonly" value="<fmt:formatDate value="${authorInfo.regdate}" pattern="yyyy-MM-dd"/>">
                   			</div>
                   		</div>
                   		                   		                   		<div class="form_section">
                   			<div class="form_section_title">
                   				<label>수정 날짜</label>
                   			</div>
                   			<div class="form_section_content">
                   				<input class="input_block" type="text" readonly="readonly" value="<fmt:formatDate value="${authorInfo.updateDate}" pattern="yyyy-MM-dd"/>">
                   			</div>
                   		</div>
                   			<div class="btn_section">
                   				<button id="cancelBtn" class="btn">취소</button>
	                    		<button id="modifyBtn" class="btn modify_btn">수 정</button>
	                    		<button id="deleteBtn" class="btn delete_btn">삭 제</button>
	                    	</div> 
	                    	</form>
                    </div>     
                    <form id="moveForm" method="get">
                	<input type="hidden" name="authorId" value='<c:out value="${authorInfo.authorId }"/>'>
                	<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum }"/>'>
                	<input type="hidden" name="amount" value='<c:out value="${cri.amount }"/>' >
                	<input type="hidden" name="keyword" value='<c:out value="${cri.keyword }"/>'>
                </form>               
                </div>
                </div>
                </div>
                </div>
                </div>
            </header>
            <%@include file="../includes/admin/footer.jsp" %>
         
         <script>
         let moveForm = $("#moveForm");
     	let modifyForm = $("#modifyForm");
     	



     	/* 판매자 상세 페이지 이동 버튼 */
     	$("#cancelBtn").on("click", function(e){
     		
     		e.preventDefault();
     				
     		moveForm.attr("action", "/admin/authorDetail")
     		moveForm.submit();
     		
     	});
     	
     	/* 판매자 수정 버튼 작동 및 유효성 검사 */
     	$("#modifyBtn").on("click", function(e){

     		let authorName = $(".form_section_content input[name='authorName']").val();
     		let authorIntro = $(".form_section_content textarea").val();		

     		let	nameCk = false;
     		let introCk = false;		
     		
     		e.preventDefault();
     		
     		if(!authorName){
     			$("#warn_authorName").css("display", "block");
     		} else {
     			$("#warn_authorName").css("display", "none");
     			nameCk = true;
     		}
     		if(!authorIntro){
     			$("#warn_authorIntro").css("display", "block");
     		} else {
     			$("#warn_authorIntro").css("display", "none");
     			introCk = true;
     		}

     		
     		if(nameCk && introCk ){
     			modifyForm.submit();	
     		} else {
     			return false;
     		}
     		
     		
     	});
     	
     	/* 삭제 버튼 */
    	$("#deleteBtn").on("click", function(e){
    		e.preventDefault();
    		moveForm.find("input").remove();
    		moveForm.append('<input type="hidden" name="authorId" value="${authorInfo.authorId}">');
    		moveForm.attr("action", "/admin/authorDelete");
    		moveForm.attr("method", "post");
    		moveForm.submit();
    	});
         </script>
         
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="../../resources/js/admin/scripts.js"></script>
    </body>
</html>
