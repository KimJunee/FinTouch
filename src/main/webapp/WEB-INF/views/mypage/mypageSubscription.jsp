<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html lang="ko">

<head>
    <title>FinTouch | My Page | Subscription</title>
	<!-- Favicon -->
    <link rel="shortcut icon" href="${path}/resources/resources1b/images/favicon.ico">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
    <!-- 마이페이지 CSS -->
    <link rel="stylesheet" type="text/css" href="${path}/resources/css/mypage.css">
</head>

<body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <main>
        <!-- ======================= Main contain START -->
        <section class="py-4">
            <div class="container mt-5">
                <div class="row">
                    <div class="col-12 d-sm-flex justify-content-between align-items-center" style="margin-bottom:10px;">
                        <div class="col-4"></div>
                        <div class="col-8 mb-1" style="margin-left:20px;">
                            <h3 class="mb-2 mb-sm-0"><i class="bi bi-building"></i>&nbsp;My Subscription</h3>
                        </div>
                    </div>
                    <div class="col-4 mb-0">
                        <aside class="pe-xl-4 mb-5">
                            <!-- 왼쪽 사이드바 -->
                            <div class="card border card-body shadow-sm pb-1 me-lg-1">
                                <div class="d-flex d-md-block d-lg-flex align-items-start pt-lg-2 mb-2"><img class="" src="${path}/resources/resources1b/images/avatar_w2.png" width="48" alt="Annette Black">
                                    <div class="pt-md-2 pt-lg-0 ps-3 ps-md-0 ps-lg-3">
                                        <h2 class="fs-lg mb-0" style="margin-left: 10px;">탬버리이인</h2>
                                        <ul class="list-unstyled fs-sm mt-1 mb-0">
                                            <li>
                                                <a class="nav-link fw-normal p-0" href="mailto:annette_black@email.com">
                                                    <i class="fi-mail opacity-60 me-2"></i>rlaxodla91@email.com</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <a class="btn btn-outline-primary btn-lg w-100 mb-2 fw-bold" style="border-radius: 10px;" href="1community-board-post-lightfooter.html">+ 게시글 작성하기</a>
                                <div class="collapse d-md-block mt-0 fw-bold" id="account-nav">
                                    <div class="card-nav">
                                        <a class="card-nav-link" href="${path}/member/view"><i class="fa fa-solid fa-user" style="margin-right:10px; margin-left: 10px;"></i>회원정보</a>
                                        <a class="card-nav-link" href="${path}/mypage/finPro"><i class="fa fa-solid fa-piggy-bank" style="margin-right:10px; margin-left: 6px;"></i>내 금융상품</a>
                                        <a class="card-nav-link active" href="1myPageSubscription.html"><i class="fa fa-solid fa-building" style="margin-right:10px; margin-left: 10px;"></i>부동산청약</a>
                                        <a class="card-nav-link" href="${path}/myNews"><i class="fa fa-solid fa-bookmark" style="margin-right:10px; margin-left: 10px;"></i>뉴스스크랩</a>
                                        <a class="card-nav-link" href="${path}/MypageBoard/mylist"><i class="fa fa-solid fa-quote-left" style="margin-right:10px; margin-left: 10px;"></i>내 글 목록</a>
                                        <a class="card-nav-link" href="${path}/MypageBoard/myReply"><i class="fa fa-solid fa-comment-dots" style="margin-right:10px; margin-left: 10px;"></i>내 댓글 목록</a>
                                    </div>
                                </div>
                            </div>
                        </aside>
                    </div>
                    <!-- 부동산청약 시작 -->
                    <div class="col-8 col-xxl-8">
                        <!-- Blog list table START -->
                        <div class="card border bg-transparent rounded-3">
                            <!-- Card body START -->
                            <div class="card-body">
                                <!-- Search and select START -->
                                <div class="row g-3 align-items-center justify-content-between mb-3">
                                    <!-- Search -->
                                    <div class="col-md-8">
                                        <form class="rounded position-relative">
                                            <input class="form-control pe-5 bg-transparent" type="search" placeholder="Search" aria-label="Search">
                                            <button class="btn bg-transparent border-0 px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="fas fa-search fs-6 "></i></button>
                                        </form>
                                    </div>
                                    <!-- Select option -->
                                    <div class="col-md-3">
                                        <!-- Short by filter -->
                                        <form>
                                            <select class="form-select z-index-9 bg-transparent" aria-label=".form-select-sm">
                                                <option value="">최근 찜 순</option>
                                                <option>최근 공고일 순</option>
                                                <option>오래된 공고일 순</option>
                                                <option>공고제목 순</option>
                                            </select>
                                        </form>
                                    </div>
                                </div>
                                <!-- Search and select END -->
                                <!-- Blog list table START -->
                                <div class="table-responsive border-0">
                                    <table class="table align-middle p-4 mb-0 table-hover table-shrink">
                                        <!-- Table head -->
                                        <thead class="table-dark">
                                            <tr>
                                                <th scope="col" class="border-0 rounded-start text-center">공고명</th>
                                                <th scope="col" class="border-0">공고 모집일</th>
                                                <th scope="col" class="border-0 text-center">HomePage</th>
                                                <th scope="col" class="border-0 rounded-end">delete</th>
                                            </tr>
                                        </thead>

                                        <!-- Table body START -->
                                        <tbody class="border-top-0 ">
                                            <!-- Table item -->
                                            <tr>
                                                <!-- 청약공고명 -->
                                                <td>
                                                    <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">인천 검단신도시 AB17BL 우미린 클래스원</a></h6>
                                                </td>
                                                <!-- 공고모집일 -->
                                                <td>
                                                    <h6 class="mb-0"><a href="#">2022-11-02</a></h6>
                                                </td>
                                                <!-- 홈페이지 링크 -->
                                                <td class="text-center"><button class="btn btn-sm-cus btn-primary-cus mb-0 fw-bold" type="submit">홈페이지</button></td>
                                                <!-- delete -->
                                                <td>
                                                    <div class="d-flex gap-2">
                                                        <a href="#" style="margin-left: 5px;" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete"><i class="bi bi-trash"></i></a>
                                                    </div>
                                                </td>
                                            </tr>

                                            <!-- Table item -->
                                            <tr>
                                                <!-- Table data -->
                                                <td>
                                                    <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">남전주IC 서희스타힐스</a></h6>
                                                </td>
                                                <!-- Table data -->
                                                <td>
                                                    <h6 class="mb-0"><a href="#">2022-10-29</a></h6>
                                                </td>
                                                <!-- Table data -->
                                                <td class="text-center"><button class="btn btn-sm-cus btn-primary-cus mb-0 fw-bold" type="submit">홈페이지</button></td>
                                                <!-- Table data -->
                                                <td>
                                                    <div class="d-flex gap-2">
                                                        <a href="#" style="margin-left: 5px;" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete"><i class="bi bi-trash"></i></a>
                                                    </div>
                                                </td>
                                            </tr>

                                            <!-- Table item -->
                                            <tr>
                                                <!-- Table data -->
                                                <td>
                                                    <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">천안 롯데캐슬 더 청당</a></h6>
                                                </td>
                                                <!-- Table data -->
                                                <td>
                                                    <h6 class="mb-0"><a href="#">2022-10-22</a></h6>
                                                </td>
                                                <!-- Table data -->
                                                <td class="text-center"><button class="btn btn-sm-cus btn-primary-cus mb-0 fw-bold" type="submit">홈페이지</button></td>
                                                <!-- Table data -->
                                                <td>
                                                    <div class="d-flex gap-2">
                                                        <a href="#" style="margin-left: 5px;" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete"><i class="bi bi-trash"></i></a>
                                                    </div>
                                                </td>
                                            </tr>

                                            <!-- Table item -->
                                            <tr>
                                                <!-- Table data -->
                                                <td>
                                                    <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">아산 한신더휴</a></h6>
                                                </td>
                                                <!-- Table data -->
                                                <td>
                                                    <h6 class="mb-0"><a href="#">2022-10-13</a></h6>
                                                </td>
                                                <!-- Table data -->
                                                <td class="text-center"><button class="btn btn-sm-cus btn-primary-cus mb-0 fw-bold" type="submit">홈페이지</button></td>
                                                <!-- Table data -->
                                                <td>
                                                    <div class="d-flex gap-2">
                                                        <a href="#" style="margin-left: 5px;" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete"><i class="bi bi-trash"></i></a>
                                                    </div>
                                                </td>
                                            </tr>

                                            <!-- Table item -->
                                            <tr>
                                                <!-- Table data -->
                                                <td>
                                                    <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">고성 스위트엠 엘크루</a></h6>
                                                </td>
                                                <!-- Table data -->
                                                <td>
                                                    <h6 class="mb-0"><a href="#">2022-10-06</a></h6>
                                                </td>
                                                <!-- Table data -->
                                                <td class="text-center"><button class="btn btn-sm-cus btn-primary-cus mb-0 fw-bold" type="submit">홈페이지</button></td>
                                                <!-- Table data -->
                                                <td>
                                                    <div class="d-flex gap-2">
                                                        <a href="#" style="margin-left: 5px;" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete"><i class="bi bi-trash"></i></a>
                                                    </div>
                                                </td>
                                            </tr>

                                            <!-- Table item -->
                                            <tr>
                                                <!-- Table data -->
                                                <td>
                                                    <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">서현 풍림아이원</a></h6>
                                                </td>
                                                <!-- Table data -->
                                                <td>
                                                    <h6 class="mb-0"><a href="#">2022-10-23</a></h6>
                                                </td>
                                                <!-- Table data -->
                                                <td class="text-center"><button class="btn btn-sm-cus btn-primary-cus mb-0 fw-bold" type="submit">홈페이지</button></td>
                                                <!-- Table data -->
                                                <td>
                                                    <div class="d-flex gap-2">
                                                        <a href="#" style="margin-left: 5px;" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip" data-bs-placement="top" title="Delete"><i class="bi bi-trash"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <!-- Table body END -->
                                    </table>
                                </div>
                                <!-- 부동산청약 끝 -->
                            </div>
                        </div>
                        <!-- 페이지넘버 시작 -->
                        <div class="mt-4" style="margin-bottom:80px;">
                            <nav class="mb-sm-0 d-flex justify-content-center mt-0 " aria-label="navigation ">
                                <ul class="pagination pagination-sm pagination-bordered mb-3 ">
                                    <li class="page-item disabled ">
                                        <a class="page-link " href="# " tabindex="-1 " aria-disabled="true ">Prev</a>
                                    </li>
                                    <li class="page-item active "><a class="page-link " href="# ">1</a></li>
                                    <li class="page-item "><a class="page-link " href="# ">2</a></li>
                                    <li class="page-item "><a class="page-link " href="# ">3</a></li>
                                    <li class="page-item "><a class="page-link " href="# ">4</a></li>
                                    <li class="page-item "><a class="page-link " href="# ">5</a></li>
                                    <li class="page-item "><a class="page-link " href="# ">6</a></li>
                                    <li class="page-item "><a class="page-link " href="# ">7</a></li>
                                    <li class="page-item "><a class="page-link " href="# ">8</a></li>
                                    <li class="page-item "><a class="page-link " href="# ">9</a></li>
                                    <li class="page-item "><a class="page-link " href="# ">10</a></li>
                                    <li class="page-item ">
                                        <a class="page-link " href="# ">Next</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                        <!-- 페이지넘버 끝 -->
                    </div>
                </div>
        </section>
    </main>
   <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>

</html>