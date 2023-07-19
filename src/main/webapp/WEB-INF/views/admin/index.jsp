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
        <link href="../../resources/css/admin/styles.css" rel="stylesheet" />
        <script
		  src="https://code.jquery.com/jquery-3.4.1.js"
		  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
		  crossorigin="anonymous"></script>
    </head>
    <body class="d-flex flex-column">
        <main class="flex-shrink-0">
            <!-- Navigation-->
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container px-5">
                    <a class="navbar-brand" href="index.html">Start Bootstrap</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                            <li class="nav-item"><a class="nav-link" href="/admin/goodsenroll">상품등록</a></li>
                            <li class="nav-item"><a class="nav-link" href="/admin/goodsManage">상품목록</a></li>
                            <li class="nav-item"><a class="nav-link" href="/admin/authorEnroll">판매자등록</a></li>
                            <li class="nav-item"><a class="nav-link" href="/admin/authorManage">판매자관리</a></li>
                            <li class="nav-item"><a class="nav-link" href="/admin/authorManage">회원관리</a></li>
                            <li class="nav-item"><a class="nav-link" href="faq.html">고객센터</a></li>
                            <li class="nav-item"><a class="nav-link" href="/index">메인 페이지</a></li>
                            <li class="nav-item"><a class="nav-link" href="/member/logout.do">로그아웃</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- Header-->
            <header class="py-5">
                <div class="container px-5">
                    <div class="row justify-content-center">
                        <div class="col-lg-8 col-xxl-6">
                            <div class="text-center my-5">
                                <h1 class="fw-bolder mb-3">관리자 페이지에 오신것을 환영합니다.</h1>
                                <p class="lead fw-normal text-muted mb-4">관리자 페이지를 이용하여 수 많은 관리자 전용 기능들을 보다 쉽게 이용해보세요</p>
                                <a class="btn btn-primary btn-lg" href="#scroll-target">판매자 등록 바로가기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- About section one-->
            <section class="py-5 bg-light" id="scroll-target">
                <div class="container px-5 my-5">
                    <div class="row gx-5 align-items-center">
                        <div class="col-lg-6"><img class="img-fluid rounded mb-5 mb-lg-0" src="https://dummyimage.com/600x400/343a40/6c757d" alt="..." /></div>
                        <div class="col-lg-6">
                            <h2 class="fw-bolder">판매자 관리</h2>
                            <p class="lead fw-normal text-muted mb-0">판매자로 등록된 고객님의 목록을 쉽게 확인하고 점검 할 수 있습니다 
                            영상으로 사용 방법을 익혀보세요</p>
                        </div>
                    </div>
                </div>
            </section>
            <!-- About section two-->
            <section class="py-5">
                <div class="container px-5 my-5">
                    <div class="row gx-5 align-items-center">
                        <div class="col-lg-6 order-first order-lg-last"><img class="img-fluid rounded mb-5 mb-lg-0" src="https://dummyimage.com/600x400/343a40/6c757d" alt="..." /></div>
                        <div class="col-lg-6">
                            <h2 class="fw-bolder">회원관리</h2>
                            <p class="lead fw-normal text-muted mb-0">한 눈에 회원 목록을 조회하고 관리 할 수 있습니다 
                            영상으로 사용방법을 익혀보세요</p>
                        </div>
                    </div>
                </div>
            </section>
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
        </main>
        <!-- Footer-->
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
    </body>
</html>