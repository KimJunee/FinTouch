<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/> 

<!DOCTYPE html>
<html lang="ko">

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<head>
    <title>FinTouch | Community</title>

    <!-- Meta Tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Webestica.com">
    <meta name="description" content="Bootstrap based News, Magazine and Blog Theme">

    <!-- Favicon -->
    <link rel="shortcut icon" href="resources/resources1b/images/favicon.ico">

    <!-- Google Font -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@400;700&family=Rubik:wght@400;500;700&display=swap" rel="stylesheet">

    <!-- Plugins CSS -->
    <link rel="stylesheet" type="text/css" href="resources/resources1b/vendor/font-awesome/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="resources/resources1b/vendor/bootstrap-icons/bootstrap-icons.css">
    <link rel="stylesheet" type="text/css" href="resources/resources1b/vendor/apexcharts/css/apexcharts.css">
    <link rel="stylesheet" type="text/css" href="resources/resources1b/vendor/overlay-scrollbar/css/OverlayScrollbars.min.css">

    <!-- Theme CSS -->
    <link id="style-switch" rel="stylesheet" type="text/css" href="resources/resources1b/css/style.css">

</head>

<body>
    <main>
        <!-- ============ 메뉴소개 시작 ============ -->
        <section style="background-image:url('resources/resources1b/images/avatar/fintouch/community04.png'); background-position: center; height:652px; width:99%;">
            <div style="margin-left: 370px; margin-top: 520px;">
                <h5><span style="color:#2163E8;">C&nbsp;O&nbsp;M&nbsp;M&nbsp;U&nbsp;N&nbsp;I&nbsp;T&nbsp;Y</span></h5>
                <h1>실시간<span style="color:#2163E8">커뮤니티</span>인기글</h1>
            </div>
        </section>
        <!-- ============ 메뉴소개 끝 ============ -->
        <!-- ======================= 커뮤니티 메인 시작 -->
        <section class="py-4 mb-5">
            <div class="container">
                <div class="row g-4">
                    <div class="col-12">
                        <!-- Counter START -->
                        <div class="row g-4">
                            <div class="col-12">
                                <!-- 인기글 목록 시작 -->
                                <div class="card border bg-transparent rounded-3">
                                    <!-- Card body START -->
                                    <div class="card-body">
                                        <!-- 검색 시작 -->
                                        <div class="row g-3 align-items-center justify-content-between mb-3">
                                            <!-- 검색 -->
                                            <div class="col-md-12">
                                                <form class="rounded position-relative">
                                                    <input class="form-control pe-5 bg-transparent" type="search" placeholder="Search" aria-label="Search">
                                                    <button class="btn bg-transparent border-0 px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="fas fa-search fs-6 "></i></button>
                                                </form>
                                            </div>
                                        </div>
                                        <!-- 검색 끝 -->

                                        <!-- 인기글 시작 -->
                                        <div class="table-responsive border-0">
                                            <table class="table align-middle p-4 mb-0 table-hover table-shrink">
                                                <!-- Table head -->
                                                <thead class="table-dark">
                                                    <tr>
                                                        <th scope="col" class="border-0 text-center rounded-start">Categories</th>
                                                        <th scope="col" class="border-0">Title</th>
                                                        <th scope="col" class="border-0 text-center">Writer</th>
                                                        <th scope="col" class="border-0 text-center">Date</th>
                                                        <th scope="col" class="border-0 text-center">Hits</th>
                                                        <th scope="col" class="border-0 text-center rounded-end">Comments</th>
                                                    </tr>
                                                </thead>

                                                <!-- 인기글 10개 -->
                                                <tbody class="border-top-0">
                                                    <!-- 인기글 1 -->
                                                    <tr>
                                                        <!-- Categories -->
                                                        <td>
                                                            <a href="#" class="badge text-bg-warning mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Real Estate</a>
                                                        </td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">강남 역세권 청약 일정 어디서 찾아보죠?</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">서현동뒹굴이</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-11-01</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">2139</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">42</td>
                                                    </tr>

                                                    <!-- 인기글 2 -->
                                                    <tr>
                                                        <!-- Categories -->
                                                        <td>
                                                            <a href="#" class="badge text-bg-primary mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Politics</a>
                                                        </td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">정치정치조정치</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">탬버리이인</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-10-28</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">3189</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">58</td>
                                                    </tr>

                                                    <!-- 인기글 3 -->
                                                    <tr>
                                                        <!-- Categories -->
                                                        <td>
                                                            <a href="#" class="badge text-bg-danger mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Finance</a>
                                                        </td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">누가 삼전이랬냐</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">김지수투자전략본부장</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-10-16</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">2137</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">78</td>
                                                    </tr>

                                                    <!-- 인기글 4 -->
                                                    <tr>
                                                        <!-- Categories -->
                                                        <td>
                                                            <a href="#" class="badge text-bg-warning mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Real Estate</a>
                                                        </td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">청약캘린더 너무 빡쎈데요</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">미향먕먕</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-10-11</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">4355</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">65</td>
                                                    </tr>

                                                    <!-- 인기글 5 -->
                                                    <tr>
                                                        <!-- Categories -->
                                                        <td>
                                                            <a href="#" class="badge text-bg-success mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Free</a>
                                                        </td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">저는 고양이 집사입니다. 부럽죠? ㅎㅎ;;ㅈㅅ..ㅋㅋ!!</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">솦솝솟솧소</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-10-07</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">6756</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">212</td>
                                                    </tr>

                                                    <!-- 인기글 6 -->
                                                    <tr>
                                                        <!-- Categories -->
                                                        <td>
                                                            <a href="#" class="badge text-bg-danger mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Finance</a>
                                                        </td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">상여금을 코인으로 받아서 묵혀놨는데 3만원이 되버렸다</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">난망했어</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-10-01</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">1198</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">22</td>
                                                    </tr>

                                                    <!-- 인기글 7 -->
                                                    <tr>
                                                        <!-- Categories -->
                                                        <td>
                                                            <a href="#" class="badge text-bg-danger mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Finance</a>
                                                        </td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">와 따상!!!!!!!!!!!!!!!!!</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">큰손옌</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-29</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">5113</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">117</td>
                                                    </tr>

                                                    <!-- 인기글 8 -->
                                                    <tr>
                                                        <!-- Categories -->
                                                        <td>
                                                            <a href="#" class="badge text-bg-primary mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Politics</a>
                                                        </td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">이번 한미정상회담에서</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">일상이상일</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">4511</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">210</td>
                                                    </tr>

                                                    <!-- 인기글 9 -->
                                                    <tr>
                                                        <!-- Categories -->
                                                        <td>
                                                            <a href="#" class="badge text-bg-success mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Free</a>
                                                        </td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">난 회사식당 때문에 못 때려치고 있다</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">내일부터다이어트</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-20</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">3348</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">73</td>
                                                    </tr>

                                                    <!-- 인기글 10 -->
                                                    <tr>
                                                        <!-- Categories -->
                                                        <td>
                                                            <a href="#" class="badge text-bg-warning mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Real Estate</a>
                                                        </td>
                                                        <!-- Title -->
                                                        <td>
                                                            <h6 class="course-title mt-2 mt-md-0 mb-0"><a href="#">나의 작고 소중한 청약통장..귀여워..</a></h6>
                                                        </td>
                                                        <!-- Writer -->
                                                        <td class="text-center">
                                                            <h6 class="mb-0"><a href="#">건물오우너</a></h6>
                                                        </td>
                                                        <!-- Posting date -->
                                                        <td class="text-center">2022-09-22</td>
                                                        <!-- Hits -->
                                                        <td class="text-center">2234</td>
                                                        <!-- Comments -->
                                                        <td class="text-center">66</td>
                                                    </tr>

                                                </tbody>
                                                <!-- Table body END -->
                                            </table>
                                        </div>
                                        <!-- Blog list table END -->

                                        <!-- 페이지넘버 시작 -->
                                        <nav class="mb-sm-0 d-flex justify-content-center mt-2" aria-label="navigation">
                                            <ul class="pagination pagination-sm pagination-bordered mb-0">
                                                <li class="page-item disabled">
                                                    <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Prev</a>
                                                </li>
                                                <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                <li class="page-item"><a class="page-link" href="#">4</a></li>
                                                <li class="page-item"><a class="page-link" href="#">5</a></li>
                                                <li class="page-item"><a class="page-link" href="#">6</a></li>
                                                <li class="page-item"><a class="page-link" href="#">7</a></li>
                                                <li class="page-item"><a class="page-link" href="#">8</a></li>
                                                <li class="page-item"><a class="page-link" href="#">9</a></li>
                                                <li class="page-item"><a class="page-link" href="#">10</a></li>
                                                <li class="page-item">
                                                    <a class="page-link" href="#">Next</a>
                                                </li>
                                            </ul>
                                        </nav>
                                        <!-- 페이지넘버 끝 -->
                                    </div>
                                </div>
                                <!-- Blog list table END -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row g-4 mt-3">
                    <!-- 정치 첫번째줄 왼쪽 -->
                    <div class="col-6">
                        <!-- 정치글 목록 시작 -->
                        <div class="card border bg-transparent rounded-3">
                            <!-- 테두리 시작 -->
                            <div class="card-body">
                                <div class="table-responsive">
                                    <div class="d-sm-flex justify-content-between align-items-center">
                                        <div>
                                            <div style="float:left;">
                                                <a href="#" class="badge text-bg-primary mt-2" style="width: 100px;"><i class="fas fa-circle me-2 small fw-bold"></i>Politics</a>
                                            </div>
                                            <div style="float:left;">
                                                <h1>&nbsp;&nbsp;정치</h1>
                                            </div>
                                        </div>
                                        <div>
                                            <a href="# " class="text-body ">
                                                <p><b>정치글 더보기&nbsp;&nbsp;</b><i class="bi bi-arrow-right "></i></p>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="table-responsive border-0 ">
                                        <table class="table align-middle p-4 mb-0 table-hover table-shrink ">
                                            <!-- Table head -->
                                            <thead class="table-dark ">
                                                <tr>
                                                    <th scope="col " class="border-0 rounded-start ">Title</th>
                                                    <th scope="col " class="border-0 text-center ">Writer</th>
                                                    <th scope="col " class="border-0 text-center rounded-end ">Hits</th>
                                                </tr>
                                            </thead>
                                            <!-- 정치 5개 -->
                                            <tbody class="border-top-0 ">
                                                <!-- 정치 1 -->
                                                <tr>
                                                    <!-- Title -->
                                                    <td>
                                                        <h6 class="course-title mt-2 mt-md-0 mb-0 "><a href="# ">정치정치조정치</a></h6>
                                                    </td>
                                                    <!-- Writer -->
                                                    <td class="text-center ">
                                                        <h6 class="mb-0 "><a href="# ">탬버리이인</a></h6>
                                                    </td>
                                                    <!-- Hits -->
                                                    <td class="text-center ">3189</td>
                                                </tr>
                                                <!-- 정치 2 -->
                                                <tr>
                                                    <!-- Title -->
                                                    <td>
                                                        <h6 class="course-title mt-2 mt-md-0 mb-0 "><a href="# ">이번 한미정상회담에서</a></h6>
                                                    </td>
                                                    <!-- Writer -->
                                                    <td class="text-center ">
                                                        <h6 class="mb-0 "><a href="# ">일상이상일</a></h6>
                                                    </td>
                                                    <!-- Hits -->
                                                    <td class="text-center ">4511</td>
                                                </tr>
                                                <!-- 정치 3 -->
                                                <tr>
                                                    <!-- Title -->
                                                    <td>
                                                        <h6 class="course-title mt-2 mt-md-0 mb-0 "><a href="# ">러시아는 어칼라고</a></h6>
                                                    </td>
                                                    <!-- Writer -->
                                                    <td class="text-center ">
                                                        <h6 class="mb-0 "><a href="# ">호안에수류탄</a></h6>
                                                    </td>
                                                    <!-- Hits -->
                                                    <td class="text-center ">2217</td>
                                                </tr>
                                                <!-- 정치 4 -->
                                                <tr>
                                                    <!-- Title -->
                                                    <td>
                                                        <h6 class="course-title mt-2 mt-md-0 mb-0 "><a href="# ">개발자노동보호법 입법하라</a></h6>
                                                    </td>
                                                    <!-- Writer -->
                                                    <td class="text-center ">
                                                        <h6 class="mb-0 "><a href="# ">신입디벨로퍼</a></h6>
                                                    </td>
                                                    <!-- Hits -->
                                                    <td class="text-center ">1171</td>
                                                </tr>
                                                <!-- 정치 5 -->
                                                <tr>
                                                    <!-- Title -->
                                                    <td>
                                                        <h6 class="course-title mt-2 mt-md-0 mb-0 "><a href="# ">중기부가 아기유니콘 사업 심사단 모집하는데</a></h6>
                                                    </td>
                                                    <!-- Writer -->
                                                    <td class="text-center ">
                                                        <h6 class="mb-0 "><a href="# ">국민심사단</a></h6>
                                                    </td>
                                                    <!-- Hits -->
                                                    <td class="text-center ">3542</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 부동산 첫번째줄 오른쪽 -->
                    <div class="col-6">
                        <!-- 부동산글 목록 시작 -->
                        <div class="card border bg-transparent rounded-3">
                            <!-- 테두리 시작 -->
                            <div class="card-body">
                                <div class="table-responsive">
                                    <div class="d-sm-flex justify-content-between align-items-center">
                                        <div>
                                            <div style="float:left;">
                                                <a href="#" class="badge text-bg-warning mt-2" style="width: 100px;"><i class="fas fa-circle me-2 small fw-bold"></i>Real Estate</a>
                                            </div>
                                            <div style="float:left;">
                                                <h1>&nbsp;&nbsp;부동산</h1>
                                            </div>
                                        </div>
                                        <div>
                                            <a href="# " class="text-body ">
                                                <p><b>부동산글 더보기&nbsp;&nbsp;</b><i class="bi bi-arrow-right "></i></p>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="table-responsive border-0 ">
                                        <table class="table align-middle p-4 mb-0 table-hover table-shrink ">
                                            <!-- Table head -->
                                            <thead class="table-dark ">
                                                <tr>
                                                    <th scope="col " class="border-0 rounded-start ">Title</th>
                                                    <th scope="col " class="border-0 text-center ">Writer</th>
                                                    <th scope="col " class="border-0 text-center rounded-end ">Hits</th>
                                                </tr>
                                            </thead>
                                            <!-- 부동산 5개 -->
                                            <tbody class="border-top-0 ">
                                                <!-- 부동산 1 -->
                                                <tr>
                                                    <!-- Title -->
                                                    <td>
                                                        <h6 class="course-title mt-2 mt-md-0 mb-0 "><a href="# ">강남 역세권 청약 일정 어디서 찾아보죠?</a></h6>
                                                    </td>
                                                    <!-- Writer -->
                                                    <td class="text-center ">
                                                        <h6 class="mb-0 "><a href="# ">서현동뒹굴이</a></h6>
                                                    </td>
                                                    <!-- Hits -->
                                                    <td class="text-center ">2139</td>
                                                </tr>
                                                <!-- 부동산 2 -->
                                                <tr>
                                                    <!-- Title -->
                                                    <td>
                                                        <h6 class="course-title mt-2 mt-md-0 mb-0 "><a href="# ">청약캘린더 너무 빡쎈데요</a></h6>
                                                    </td>
                                                    <!-- Writer -->
                                                    <td class="text-center ">
                                                        <h6 class="mb-0 "><a href="# ">미향먕먕</a></h6>
                                                    </td>
                                                    <!-- Hits -->
                                                    <td class="text-center ">4355</td>
                                                </tr>
                                                <!-- 부동산 3 -->
                                                <tr>
                                                    <!-- Title -->
                                                    <td>
                                                        <h6 class="course-title mt-2 mt-md-0 mb-0 "><a href="# ">나의 작고 소중한 청약통장..귀여워..</a></h6>
                                                    </td>
                                                    <!-- Writer -->
                                                    <td class="text-center ">
                                                        <h6 class="mb-0 "><a href="# ">건물오우너</a></h6>
                                                    </td>
                                                    <!-- Hits -->
                                                    <td class="text-center ">2234</td>
                                                </tr>
                                                <!-- 부동산 4 -->
                                                <tr>
                                                    <!-- Title -->
                                                    <td>
                                                        <h6 class="course-title mt-2 mt-md-0 mb-0 "><a href="# ">월세 미쳤다</a></h6>
                                                    </td>
                                                    <!-- Writer -->
                                                    <td class="text-center ">
                                                        <h6 class="mb-0 "><a href="# ">90평원룸</a></h6>
                                                    </td>
                                                    <!-- Hits -->
                                                    <td class="text-center ">4213</td>
                                                </tr>
                                                <!-- 부동산 5 -->
                                                <tr>
                                                    <!-- Title -->
                                                    <td>
                                                        <h6 class="course-title mt-2 mt-md-0 mb-0 "><a href="# ">그래서 은마아파트는 어쩐다고?</a></h6>
                                                    </td>
                                                    <!-- Writer -->
                                                    <td class="text-center ">
                                                        <h6 class="mb-0 "><a href="# ">하늘에서지켜볼게</a></h6>
                                                    </td>
                                                    <!-- Hits -->
                                                    <td class="text-center ">3348</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 금융 두번째줄 왼쪽 -->
                    <div class="col-6">
                        <!-- 금융글 목록 시작 -->
                        <div class="card border bg-transparent rounded-3">
                            <!-- 테두리 시작 -->
                            <div class="card-body">
                                <div class="table-responsive">
                                    <div class="d-sm-flex justify-content-between align-items-center">
                                        <div>
                                            <div style="float:left;">
                                                <a href="#" class="badge text-bg-danger mt-2" style="width: 100px;"><i class="fas fa-circle me-2 small fw-bold"></i>Finance</a>
                                            </div>
                                            <div style="float:left;">
                                                <h1>&nbsp;&nbsp;금융</h1>
                                            </div>
                                        </div>
                                        <div>
                                            <a href="# " class="text-body ">
                                                <p><b>금융글 더보기&nbsp;&nbsp;</b><i class="bi bi-arrow-right "></i></p>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="table-responsive border-0 ">
                                        <table class="table align-middle p-4 mb-0 table-hover table-shrink ">
                                            <!-- Table head -->
                                            <thead class="table-dark ">
                                                <tr>
                                                    <th scope="col " class="border-0 rounded-start ">Title</th>
                                                    <th scope="col " class="border-0 text-center ">Writer</th>
                                                    <th scope="col " class="border-0 text-center rounded-end ">Hits</th>
                                                </tr>
                                            </thead>
                                            <!-- 금융 5개 -->
                                            <tbody class="border-top-0 ">
                                                <!-- 금융 1 -->
                                                <tr>
                                                    <!-- Title -->
                                                    <td>
                                                        <h6 class="course-title mt-2 mt-md-0 mb-0 "><a href="# ">누가 삼전이랬냐</a></h6>
                                                    </td>
                                                    <!-- Writer -->
                                                    <td class="text-center ">
                                                        <h6 class="mb-0 "><a href="# ">김지수투자전략본부장</a></h6>
                                                    </td>
                                                    <!-- Hits -->
                                                    <td class="text-center ">2137</td>
                                                </tr>
                                                <!-- 정치 2 -->
                                                <tr>
                                                    <!-- Title -->
                                                    <td>
                                                        <h6 class="course-title mt-2 mt-md-0 mb-0 "><a href="# ">상여금을 코인으로 받아서 묵혀놨는데 3만원이 되버렸다</a></h6>
                                                    </td>
                                                    <!-- Writer -->
                                                    <td class="text-center ">
                                                        <h6 class="mb-0 "><a href="# ">난망했어</a></h6>
                                                    </td>
                                                    <!-- Hits -->
                                                    <td class="text-center ">1198</td>
                                                </tr>
                                                <!-- 금융 3 -->
                                                <tr>
                                                    <!-- Title -->
                                                    <td>
                                                        <h6 class="course-title mt-2 mt-md-0 mb-0 "><a href="# ">와 따상!!!!!!!!!!!!!!!!!</a></h6>
                                                    </td>
                                                    <!-- Writer -->
                                                    <td class="text-center ">
                                                        <h6 class="mb-0 "><a href="# ">큰손옌</a></h6>
                                                    </td>
                                                    <!-- Hits -->
                                                    <td class="text-center ">5113</td>
                                                </tr>
                                                <!-- 금융 4 -->
                                                <tr>
                                                    <!-- Title -->
                                                    <td>
                                                        <h6 class="course-title mt-2 mt-md-0 mb-0 "><a href="# ">코인시장 망했어요?</a></h6>
                                                    </td>
                                                    <!-- Writer -->
                                                    <td class="text-center ">
                                                        <h6 class="mb-0 "><a href="# ">수온체크</a></h6>
                                                    </td>
                                                    <!-- Hits -->
                                                    <td class="text-center ">4107</td>
                                                </tr>
                                                <!-- 금융 5 -->
                                                <tr>
                                                    <!-- Title -->
                                                    <td>
                                                        <h6 class="course-title mt-2 mt-md-0 mb-0 "><a href="# ">대출 강화됬다는데</a></h6>
                                                    </td>
                                                    <!-- Writer -->
                                                    <td class="text-center ">
                                                        <h6 class="mb-0 "><a href="# ">신용천룡인</a></h6>
                                                    </td>
                                                    <!-- Hits -->
                                                    <td class="text-center ">2285</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 자유 두번째줄 오른쪽 -->
                    <div class="col-6">
                        <!-- 자유글 목록 시작 -->
                        <div class="card border bg-transparent rounded-3">
                            <!-- 테두리 시작 -->
                            <div class="card-body">
                                <div class="table-responsive">
                                    <div class="d-sm-flex justify-content-between align-items-center">
                                        <div>
                                            <div style="float:left;">
                                                <a href="#" class="badge text-bg-success mt-2" style="width: 100px;"><i class="fas fa-circle me-2 small fw-bold"></i>Free</a>
                                            </div>
                                            <div style="float:left;">
                                                <h1>&nbsp;&nbsp;자유</h1>
                                            </div>
                                        </div>
                                        <div>
                                            <a href="# " class="text-body ">
                                                <p><b>자유글 더보기&nbsp;&nbsp;</b><i class="bi bi-arrow-right "></i></p>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="table-responsive border-0 ">
                                        <table class="table align-middle p-4 mb-0 table-hover table-shrink ">
                                            <!-- Table head -->
                                            <thead class="table-dark ">
                                                <tr>
                                                    <th scope="col " class="border-0 rounded-start ">Title</th>
                                                    <th scope="col " class="border-0 text-center ">Writer</th>
                                                    <th scope="col " class="border-0 text-center rounded-end ">Hits</th>
                                                </tr>
                                            </thead>
                                            <!-- 자유 5개 -->
                                            <tbody class="border-top-0 ">
                                                <!-- 자유 1 -->
                                                <tr>
                                                    <!-- Title -->
                                                    <td>
                                                        <h6 class="course-title mt-2 mt-md-0 mb-0 "><a href="# ">저는 고양이 집사입니다. 부럽죠? ㅎㅎ;;ㅈㅅ..ㅋㅋ!!</a></h6>
                                                    </td>
                                                    <!-- Writer -->
                                                    <td class="text-center ">
                                                        <h6 class="mb-0 "><a href="# ">솦솝솟솧소</a></h6>
                                                    </td>
                                                    <!-- Hits -->
                                                    <td class="text-center ">6756</td>
                                                </tr>
                                                <!-- 자유 2 -->
                                                <tr>
                                                    <!-- Title -->
                                                    <td>
                                                        <h6 class="course-title mt-2 mt-md-0 mb-0 "><a href="# ">난 회사식당 때문에 못 때려치고 있다</a></h6>
                                                    </td>
                                                    <!-- Writer -->
                                                    <td class="text-center ">
                                                        <h6 class="mb-0 "><a href="# ">내일부터다이어트</a></h6>
                                                    </td>
                                                    <!-- Hits -->
                                                    <td class="text-center ">3348</td>
                                                </tr>
                                                <!-- 자유 3 -->
                                                <tr>
                                                    <!-- Title -->
                                                    <td>
                                                        <h6 class="course-title mt-2 mt-md-0 mb-0 "><a href="# ">월 200만 원 백수 되기(일 하면 절대 안 됨) vs 월 600만 원 직장인(정년까지 일 못 그만둠)</a></h6>
                                                    </td>
                                                    <!-- Writer -->
                                                    <td class="text-center ">
                                                        <h6 class="mb-0 "><a href="# ">밸런스게임빌런</a></h6>
                                                    </td>
                                                    <!-- Hits -->
                                                    <td class="text-center ">5579</td>
                                                </tr>
                                                <!-- 자유 4 -->
                                                <tr>
                                                    <!-- Title -->
                                                    <td>
                                                        <h6 class="course-title mt-2 mt-md-0 mb-0 "><a href="# ">한국인이 고통받는 순간</a></h6>
                                                    </td>
                                                    <!-- Writer -->
                                                    <td class="text-center ">
                                                        <h6 class="mb-0 "><a href="# ">크으으주모</a></h6>
                                                    </td>
                                                    <!-- Hits -->
                                                    <td class="text-center ">3471</td>
                                                </tr>
                                                <!-- 자유 5 -->
                                                <tr>
                                                    <!-- Title -->
                                                    <td>
                                                        <h6 class="course-title mt-2 mt-md-0 mb-0 "><a href="# ">RTS 게임 인트로 장면.jpg</a></h6>
                                                    </td>
                                                    <!-- Writer -->
                                                    <td class="text-center ">
                                                        <h6 class="mb-0 "><a href="# ">핫핫해</a></h6>
                                                    </td>
                                                    <!-- Hits -->
                                                    <td class="text-center ">3114</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ======================= Main contain END -->
    </main>
    <!-- **************** MAIN CONTENT END **************** -->

    <!-- =======================푸터 시작 =======================-->
    <footer class="bg-light pt-3">
        <div class="container ">
            <!-- About and Newsletter START -->
            <div class="row pt-3 pb-1 ">
                <div class="col-md-3 ">
                    <img src="resources/resources1b/images/01_main/logo_dark.png " alt="footer logo ">
                </div>
                <div class="col-md-5 ">
                    <p class="text-dark ">그 누구보다도 정치경제소식에 신속하게 닿을 수 있는 곳. <br> FinTouch는 늘 고급 정보를 여러분께 전달하기 위해 노력합니다.</p>
                </div>
                <div class="col-md-4 ">
                    <!-- Form -->
                    <form class="row row-cols-lg-auto g-2 align-items-center justify-content-end ">
                        <div class="col-12 ">
                            <input type="email " class="form-control " placeholder="Enter your email address ">
                        </div>
                        <div class="col-12 ">
                            <button type="submit " class="btn btn-primary m-0 ">Subscribe</button>
                        </div>
                    </form>
                </div>
            </div>
            <!-- Divider -->
            <hr>
            <!-- Widgets START -->
            <div class="row pt-1 text-dark ">
                <!-- Footer Widget -->
                <div class="col-md-6 col-lg-3 mb-3 ">
                    <h5 class="mb-4 text-dark ">Recent post</h5>
                    <!-- Item -->
                    <div class="mb-4 position-relative ">
                        <div><a href="# " class="badge text-bg-danger mb-2 "><i class="fas fa-circle me-2 small fw-bold "></i>Finance</a></div>
                        <a href="post-single-3.html " class="btn-link text-dark fw-normal ">10조로 커진 액티브 ETF…금리연동·채권형 대세로</a>
                    </div>
                </div>
                <!-- Footer Widget -->
                <div class="col-md-6 col-lg-3 mb-3 text-dark ">
                    <h5 class="mb-4 text-dark ">Sponsor</h5>
                    <div class="row ">
                        <div class="col-6 ">
                            <ul class="nav flex-column ">
                                <li class="nav-item "><a class="nav-link " href="# ">대한민국 국회</a></li>
                                <li class="nav-item "><a class="nav-link pt-0 " href="# ">금융감독원</a></li>
                                <li class="nav-item "><a class="nav-link pt-0 " href="# ">금융감독위원회 </a></li>
                            </ul>
                        </div>
                        <div class="col-6 ">
                            <ul class="nav flex-column ">
                                <li class="nav-item "><a class="nav-link " href="# ">기획재정부</a></li>
                                <li class="nav-item "><a class="nav-link " href="# ">국토교통부</a></li>
                                <li class="nav-item "><a class="nav-link " href="# ">주택도시기금</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- Footer Widget -->
                <div class="col-sm-6 col-lg-3 mb-3 text-dark ">
                    <h5 class="mb-4 text-dark ">Get Regular Updates</h5>
                    <ul class="nav flex-column ">
                        <li class="nav-item ">
                            <a class="nav-link pt-0 " href="# ">
                                <i class="fab fa-whatsapp fa-fw me-2 "></i>WhatsApp
                            </a>
                        </li>
                        <li class="nav-item "><a class="nav-link " href="# "><i class="fab fa-youtube fa-fw me-2 "></i>YouTube</a></li>
                        <li class="nav-item "><a class="nav-link " href="# "><i class="far fa-bell fa-fw me-2 "></i>Website Notifications</a></li>
                    </ul>
                </div>
                <!-- Footer Widget -->
                <div class="col-sm-6 col-lg-3 mb-3 ">
                    <h5 class="mb-4 text-dark ">Our Mobile App</h5>
                    <p class="text-dark ">FinTouch의 앱을 다운로드하여 최신 속보를 가장 빠르게 확인해보세요! </p>
                    <div class="row g-2 ">
                        <div class="col ">
                            <a href="# "><img class="w-100 " src="resources/resources1b/images/app-store.svg " alt="app-store "></a>
                        </div>
                        <div class="col ">
                            <a href="# "><img class="w-100 " src="resources/resources1b/images/google-play.svg " alt="google-play "></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Widgets END -->
    </footer>
    <!-- ====================== 푸터 끝 ======================= -->

    <!-- Back to top -->
    <div class="back-top"><i class="bi bi-arrow-up-short"></i></div>

    <!-- ======================= JS libraries, plugins and custom scripts -->

    <!-- Bootstrap JS -->
    <script src="resources/resources1b/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Vendors -->
    <script src="resources/resources1b/vendor/apexcharts/js/apexcharts.min.js"></script>
    <script src="resources/resources1b/vendor/overlay-scrollbar/js/OverlayScrollbars.min.js"></script>

    <!-- Template Functions -->
    <script src="resources/resources1b/js/functions.js"></script>

</body>

</html>