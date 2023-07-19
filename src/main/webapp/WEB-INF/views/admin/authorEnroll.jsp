<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
        <link href="../../resources/css/admin/authorEnroll.css" rel="stylesheet" />
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
                        <div class="col-lg-8 col-xxl-6">
                            <div class="text-center my-5">
                                <h1 class="fw-bolder mb-3">판매자등록 페이지입니다</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
    			
    		<div class="admin_content_main">
                    	<form action="/admin/authorEnroll.do" method="post" id="enrollForm">
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>판매자 이름</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="authorName">
                    				<span id="warn_authorName">판매자 이름을 입력 해주세요.</span>
                    			</div>
                    		</div>
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>소속</label>
                    			</div>
                    			<div class="form_section_content">
                    				<select name="SellerId">
                    					<option value="none" selected>=== 선택 ===</option>
                    					<option value="01">개인</option>
                    					<option value="02">기업</option>
                    				</select>
                    				<span id="warn_SellerId">소속을 선택해주세요.</span>
                    			</div>
                    		</div>
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>판매자소개</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="authorIntro" type="text">
                    				<span id="warn_authorIntro">판매자소개를 입력 해주세요.</span>
                    			</div>
                    		</div>
                   		</form>
                   			<div class="btn_section">
                   				<button id="cancelBtn" class="btn">취 소</button>
	                    		<button id="enrollBtn" class="btn enroll_btn">등 록</button>
	                    	</div> 
                    </div>
    			
    			
           <!-- Team members section-->
            <section class="py-5 bg-light">
                <div class="container px-5 my-5">
                    <div class="text-center">
                        <h2 class="fw-bolder">기능 바로가기</h2>
                        <p class="lead fw-normal text-muted mb-5">보다 보기 쉬운 아이콘으로 쉽게 원하는 기능을 찾아보세요</p>
                    </div>
                    <div class="row gx-5 row-cols-1 row-cols-sm-2 row-cols-xl-4 justify-content-center">
                        <div class="col mb-5 mb-5 mb-xl-0">
                            <div class="text-center">
                            	<a href="/admin/goodsenroll">
                                <img class="img-fluid rounded-circle mb-4 px-4" src="https://dummyimage.com/150x150/ced4da/6c757d" alt="..." />
                                </a>
                                <h5 class="fw-bolder">상품 등록</h5>
                                <div class="fst-italic text-muted">상품을 등록합니다</div>
                            </div>
                        </div>
                        <div class="col mb-5 mb-5 mb-xl-0">
                            <div class="text-center">
                            <a href="/admin/goodsManage">
                                <img class="img-fluid rounded-circle mb-4 px-4" src="https://dummyimage.com/150x150/ced4da/6c757d" alt="..." />
                               </a>
                                <h5 class="fw-bolder">상품 목록</h5>
                                <div class="fst-italic text-muted">상품 목록을 조회합니다</div>
                            </div>
                        </div>
                        <div class="col mb-5 mb-5 mb-xl-0">
                            <div class="text-center">
                            <a href="/admin/authorEnroll">
                                <img class="img-fluid rounded-circle mb-4 px-4" src="https://dummyimage.com/150x150/ced4da/6c757d" alt="..." />
                            </a>
                                <h5 class="fw-bolder">판매자 등록</h5>
                                <div class="fst-italic text-muted">판매자를 등록합니다</div>
                            </div>
                        </div>
                        <div class="col mb-5 mb-5 mb-sm-0">
                            <div class="text-center">
                            <a href="/admin/authorManage">
                                <img class="img-fluid rounded-circle mb-4 px-4" src="https://dummyimage.com/150x150/ced4da/6c757d" alt="..." />
                            </a>
                                <h5 class="fw-bolder">판매자 관리</h5>
                                <div class="fst-italic text-muted">판매자 정보를 관리 합니다</div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        <footer class="bg-dark py-4 mt-auto">
            <div class="container px-5">
                <div class="row align-items-center justify-content-between flex-column flex-sm-row">
                    <div class="col-auto"><div class="small m-0 text-white">Copyright &copy; Your Website 2023</div></div>
                    <div class="col-auto">
                        <a class="link-light small" href="#!">Privacy</a>
                        <span class="text-white mx-1">&middot;</span>
                        <a class="link-light small" href="#!">Terms</a>
                        <span class="text-white mx-1">&middot;</span>
                        <a class="link-light small" href="#!">Contact</a>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="../../resources/js/admin/scripts.js"></script>
        <script>

        /* 등록 버튼 */
        $("#enrollBtn").click(function(){    
            /* 검사 통과 유무 변수 */
            let nameCheck = false;            // 작가 이름
            let SellerCheck = false;        // 소속 국가
            let introCheck = false;            // 작가 소개    
            
            /* 입력값 변수 */
            let authorName = $('input[name=authorName]').val();        // 작가 이름
            let SellerId = $('select[name=SellerId]').val();        // 소속 국가
            let authorIntro = $('input[name=authorIntro]').val();    // 작가 소개
            /* 공란 경고 span태그 */
            let wAuthorName = $('#warn_authorName');
            let wSellerId = $('#warn_SellerId');
            let wAuthorIntro = $('#warn_authorIntro');    
            
            /* 작기 이름 공란 체크 */
            if(authorName ===''){
                wAuthorName.css('display', 'block');
                nameCheck = false;
            } else{
                wAuthorName.css('display', 'none');
                nameCheck = true;
            }
            
            /* 소속 국가 공란 체크 */
            if(SellerId ==='none'){
                wSellerId.css('display', 'block');
                SellerCheck = false;
            } else{
                wSellerId.css('display', 'none');
                SellerCheck = true;
            }    
            
            /* 작가 소개 공란 체크 */
            if(authorIntro ===''){
                wAuthorIntro.css('display', 'block');
                introCheck = false;
            } else{
                wAuthorIntro.css('display', 'none');
                introCheck = true;
            }    
            
            /* 최종 검사 */
            if(nameCheck && SellerCheck && introCheck){
                $("#enrollForm").submit();    
            } else{
                return;
            }
        });
		 
		/* 취소 버튼 */
		$("#cancelBtn").click(function(){
		    location.href="/admin/authorManage"
		});
		 
		</script>

    </body>
</html>