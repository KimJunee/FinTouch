<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>  

<!DOCTYPE html>
<html lang="ko">

<head>
    <title>FinTouch | FinanceProduct | Detail</title>
        <!-- Favicon -->
    <link rel="shortcut icon" href="resources/resources1b/images/favicon.ico">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>
    <!-- **************** 메인컨텐츠 시작 **************** -->
    <main>
        <div class="tiny-slider arrow-hover arrow-blur arrow-round position-relative ">
            <!-- <div class="page bg-dark-overlay-5" style="background-image:url('assets/images/01_main/finance_1.jpg'); background-size: cover;"> -->
            <!-- <section> -->
            <!-- <div class="container"> -->
            <div class="tiny-slider arrow-hover arrow-blur arrow-round position-relative">
                <div class="tiny-slider-inner" data-autoplay="false" data-hoverpause="true" data-gutter="2" data-arrow="false" data-dots="true" data-items="1">
                    <!-- Slide item -->
                    <div class="card bg-dark-overlay-4 rounded-0 h-400 h-lg-500 h-xl-700 position-relative overflow-hidden " style="background-image:url(assets/images/01_main/finance_1.jpeg); background-position: center left; background-size: cover;">
                        <!-- Card Image overlay -->
                        <div class="card-img-overlay rounded-0 d-flex align-items-center ">
                            <div class="container px-3 my-auto ">
                                <div class="row">
                                    <div class="col-lg-11">
                                        <div class="col-lg-11 text-white mb-3 ">
                                            <h5 class="text-white mice">Finance &nbsp;+&nbsp; Technology&nbsp; + &nbsp;Touch</h5>
                                        </div>
                                        <h1 class="text-white mice">한 손에 잡히는 경제지식</h1>
                                        <div class=" ">
                                            <p class="lead text-white mice ">FinTouch는 올바른 금융 지식 습득을 위한 정치 · 경제 · 금융 · 부동산 정보를<br>한번에 볼 수 있는 금융포털커뮤니티 사이트입니다. </p>
                                        </div>
                                        <div class="d-md-flex align-items-center mt-4 ">
                                            <!-- <h5 class="text-white me-3 ">Share on: </h5> -->
                                            <a type="button " class="btn btn-outline-white" href="02_fin_main.html">S T A R T &nbsp;&nbsp; E X P L O R I N G&nbsp;&nbsp;  F I N A N C E &nbsp;&nbsp; > </a>
                                        </div>

                                        <!-- Custom thumb START -->
                                        <div class="col-xl-4 pe-5 position-absolute top-50 end-0 translate-middle-y d-none d-xxl-block x " id="custom ">
                                            <!-- Thumb 1 -->
                                            <div class="row align-items-center g-3 mb-4 ">
                                                <div class="col-auto ">
                                                    <div class="avatar avatar-lg avatar-img rounded-circle bg-light bg-opacity-50 ">
                                                        <i class="bi bi-bar-chart-line text-center opacity-60" style="font-size: 40px; text-align: center; margin-left: 10px;"></i>
                                                    </div>
                                                </div>
                                                <div class="col-8 ">
                                                    <a href="02_fin_main.html" class="badge text-bg-danger mb-2 "><i class="fas fa-circle me-2 small fw-bold "></i>Finance</a>
                                                    <h4 class="fw-normal text-truncate mb-1 mice text-white ">
                                                        <a href="02_fin_main.html" class="btn-link text-reset fw-bold">오늘의 주식시장을 확인해보세요!</a></h4>
                                                </div>
                                            </div>
                                            <!-- Thumb 2 -->
                                            <div class="row align-items-center g-3 mb-4  " data-autoplay="false " data-hoverpause="true " data-gutter="0 " data-arrow="true " data-dots="false " data-items="1 ">
                                                <div class="col-auto ">
                                                    <div class="avatar avatar-lg avatar-img rounded-circle bg-light bg-opacity-50 ">
                                                        <i class="bi bi-building text-center opacity-70" style="font-size: 40px; text-align: center; margin-left: 10px;"></i>
                                                    </div>
                                                </div>
                                                <div class="col-8 ">
                                                    <a href="03_reales_main.html " class="badge text-bg-warning mb-2 "><i class="fas fa-circle me-2 small fw-bold "></i>Real Estate</a>
                                                    <h4 class="fw-normal text-truncate mb-1 mice text-white "><a href="03_reales_main.html " class="btn-link text-reset fw-bold ">주거고민이 있으신가요?</a></h4>
                                                </div>
                                            </div>
                                            <!-- Thumb 3 -->
                                            <div class="row align-items-center g-3 ">
                                                <div class="col-auto ">
                                                    <div class=" avatar-lg rounded-circle bg-light bg-opacity-50 ">
                                                        <i class="fa fa-solid fa-pen-nib text-center opacity-70 " style="font-size: 37px; text-align: center; margin-left: 12px; margin-top: 12px;" src="assets/images/01_main/main_opi_01.jpg "></i>
                                                    </div>
                                                </div>
                                                <div class="col-8 ">
                                                    <a href="06_opinion.html " class="badge text-bg-success mb-2 "><i class="fas fa-circle me-2 small fw-bold "></i>Opinion</a>
                                                    <h4 class="fw-normal text-truncate mb-1 mice text-white "><a href="06_opinion.html " class="btn-link text-reset fw-bold ">각 분야 전문가들의 기고/칼럼</a></h4>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Custom thumb END -->
                </div>
                <!-- ======================= Inner intro END -->
                <!-- 지수님 여기서부터 작업하시면 됩니다!!! 그래프자리 -->
                <section style="margin-top: -10px;">
                    <div class="container" style="margin: top 50px;">
                        <div class="row">
                            <div class="col-1">
                                <h5 class="mt-0 text-truncate" style="font-weight: bold; font-size: 15px; color:rgb(71, 103, 231)">KOSPI</h5>
                                <h3 class="my-2 py-1" style="font-weight: bold; font-size: 30px;">2,215.54</h3>
                                <p class="mb-0 text-muted">
                                    <span class="text-danger me-2"><i class="mdi mdi-arrow-up-bold" style="color:red"></i>-12.24(-3.92%)</span>
                                </p>
                            </div>
                            <!-- <div class="col-1">
                            <div class="text-end">
                                <div id="new-leads-chart1" data-colors="#0acf97"></div>
                            </div>
                        </div> -->
                            <div class="col-2">
                                <div dir="ltr" style="padding-left: 30px;">
                                    <!-- <div id="basic-area1" class="apex-charts" data-colors="#fa6767"></div> -->
                                    <!-- 상승장일때-->
                                    <div id="basic-area1" class="apex-charts" data-colors="#fa6767"></div>
                                    <!-- 하락장일때-->
                                </div>
                            </div>

                            <div class="col-1">
                                <h5 class="mt-0 text-truncate" style="font-weight: bold; font-size: 15px; color:rgb(71, 103, 231)">KOSDAQ</h5>
                                <h3 class="my-2 py-1" style="font-weight: bold; font-size: 30px;">695.70</h3>
                                <p class="mb-0 text-muted">
                                    <span style="color:rgb(2, 162, 16)"><i class="mdi mdi-arrow-up-bold" style="color:red"></i>+0.29(+0.85%)</span>
                                </p>
                            </div>
                            <div class="col-2">
                                <div dir="ltr" style="padding-left: 30px;">
                                    <!-- <div id="basic-area1" class="apex-charts" data-colors="#fa6767"></div> -->
                                    <!-- 상승장일때-->
                                    <div id="basic-area2" class="apex-charts" data-colors="#008000"></div>
                                    <!-- 하락장일때-->
                                </div>
                            </div>
                            <div class="col-1" style="padding-right: 10px;">
                                <h5 class="mt-0 text-truncate" style="font-weight: bold; font-size: 15px; color:rgb(71, 103, 231)">USD/KRW</h5>
                                <h3 class="my-2 py-1" style="font-weight: bold; font-size: 30px;">1,439.65</h3>
                                <p class="mb-0 text-muted">
                                    <span class="text-danger me-2"><i class="mdi mdi-arrow-up-bold" style="color:red"></i>-6.24(-5.38%)</span>
                                </p>
                            </div>
                            <div class="col-2">
                                <div dir="ltr" style="padding-left: 20px;">
                                    <!-- <div id="basic-area1" class="apex-charts" data-colors="#fa6767"></div> -->
                                    <!-- 상승장일때-->
                                    <div id="basic-area3" class="apex-charts" data-colors="#fa6767"></div>
                                    <!-- 하락장일때-->
                                </div>
                            </div>
                            <div class="col-1" style="padding-right: 10px;">
                                <h5 class=" mt-0 text-truncate" style="font-weight: bold; font-size: 15px; color:rgb(71, 103, 231)">CNY/KRW</h5>
                                <h3 class="my-2 py-1" style="font-weight: bold; font-size: 30px;">199.47</h3>
                                <p class="mb-0 text-muted">
                                    <span style="color:rgb(2, 162, 16)"><i class="mdi mdi-arrow-down-bold" style="font-weight: bold; font-size: 20px; color:rgb(56, 246, 72)"></i>+1.29(+3.38%)</span>
                                </p>
                            </div>
                            <div class="col-2">
                                <div dir="ltr" style="padding-left: 20px;">
                                    <!-- <div id="basic-area1" class="apex-charts" data-colors="#fa6767"></div> -->
                                    <!-- 상승장일때-->
                                    <div id="basic-area4" class="apex-charts" data-colors="#008000"></div>
                                    <!-- 하락장일때-->
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>

            <!-- 지수님 여기서부터 작업하시면 됩니다!!! 그래프 끝 -->


            <!-- ======================= 카드로 보는 뉴스 시작 -->
            <section class="position-relative" style="margin-top: -90px;">
                <div class="container" data-sticky-container>
                    <div class="row">
                        <!-- Main Post START -->
                        <div class="col-lg-9">
                            <!-- Top highlights START -->
                            <div class="mb-4">
                                <h2 class="m-0 mice"><i class="bi bi-hourglass-top me-2"></i>카드로 보는 뉴스</h2>
                                <p>알기 쉬운 인포그래픽 및 카드뉴스를 제공해 드립니다.</p>
                            </div>
                            <div class="tiny-slider arrow-blur arrow-round rounded-3">
                                <div class="tiny-slider-inner" data-autoplay="true" data-hoverpause="true" data-gutter="24" data-arrow="true" data-dots="false" data-items-sm="1" data-items-xs="1" data-items="2">
                                    <!-- 카드뉴스 1 -->
                                    <div class="card">
                                        <div class="position-relative">
                                            <img class="card-img" src="assets/images/01_main/main_card_01.png" alt="Card image">
                                            <div class="card-img-overlay d-flex align-items-start flex-column p-3">
                                            </div>
                                        </div>
                                        <div class="card-body px-0 pt-3">
                                            <h4 class="card-title mice"><a href="post-single-3.html" class="btn-link text-reset fw-bold">8월 18일부터 달라지는 산업안전 제도</a></h4>
                                            <p class="card-text ">뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용</p>
                                            <p class="nav-item">2022.10.02</p>
                                        </div>
                                    </div>
                                    <!-- 카드뉴스 2 -->
                                    <div class="card">
                                        <div class="position-relative">
                                            <img class="card-img" src="assets/images/01_main/main_card_02.png" alt="Card image">
                                            <div class="card-img-overlay d-flex align-items-start flex-column p-3">
                                            </div>
                                        </div>
                                        <div class="card-body px-0 pt-3">
                                            <h4 class="card-title mice"><a href="post-single-3.html" class="btn-link text-reset fw-bold">2023년 최저임금</a></h4>
                                            <p class="card-text ">뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용</p>
                                            <p class="nav-item">2022.10.02</p>
                                        </div>
                                    </div>
                                    <!-- 카드뉴스 3 -->
                                    <div class="card">
                                        <div class="position-relative">
                                            <img class="card-img" src="assets/images/01_main/main_card_03.png" alt="Card image">
                                            <div class="card-img-overlay d-flex align-items-start flex-column p-3">
                                            </div>
                                        </div>
                                        <div class="card-body px-0 pt-3">
                                            <h4 class="card-title mice"><a href="post-single-3.html" class="btn-link text-reset fw-bold">청년고용지원금 안내</a></h4>
                                            <p class="card-text ">뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용 뉴스내용</p>
                                            <p class="nav-item">2022.10.02</p>
                                        </div>
                                    </div>
                                    <!-- Card item END -->
                                </div>
                            </div>
                            <!-- ======================= 카드로 보는 뉴스 끝 -->

                            <!-- 구분선 -->
                            <div class="border-bottom border-primary border-2 opacity-1 my-4  "></div>
                            <!-- 청약캘린더 시작 -->
                            <div class="card mb-2 mb-sm-4 " style="margin-bottom: -90px;">
                                <div class="row g-3">
                                    <div class="col-md-4 order-sm-2">
                                        <div class="rounded-3 overflow-hidden">
                                            <h2 class="m-0 mice "><i class="bi bi-bell-fill m-2"></i><a class="text-dark">&nbsp;오늘<a class="text-danger">마감</a>청약</a>
                                            </h2>
                                            <!-- <p>오늘 마감되는 청약을 확인해보세요</p> -->
                                            <div class="card card-body bg-warning bg-opacity-15 p-4 h-75 text-center">
                                                <h3 class=" ">22.09.27</h3>
                                                <!-- <h5>마감 청약</h5> -->
                                                <h1 class="fs-1 text-danger">16개</h1>
                                                <!-- <p>오늘 모집 마감되는 청약일정과 <br> 공급 대상들을 즉시 확인하실 수 있습니다!</p> -->
                                                <div class="mt-auto"><a href="03_reales_detailList.html" class="btn btn-link text-reset p-0 mb-0">일정 확인하러 가기!</a></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-8 ">
                                        <div class="d-sm-flex justify-content-sm-between mb-2 ">
                                            <a href="# " class="badge text-bg-warning "><i class="fas fa-circle me-2 small fw-bold "></i>Real Estate</a>
                                        </div>
                                        <h3 class="mice ">
                                            <a href="post-single-6.html " class="btn-link text-reset fw-bold ">FinTouch에서는 <a class="text-warning">부동산청약</a>에 대해 <br>다양한 정보를 제공합니다.
                                            </a>
                                        </h3>
                                        <p>주택을 구매하는 방법 중에서 가장 일반적인 방법은, 주택청약에 당첨되어서 분양권부터 입주를 기다리는 방식입니다. 국내 아파트 시장은 선분양 후시공이 대다수기 때문에 많은 어려움에 봉착합니다. 이러한 고민들을, 저희 FinTouch와 함께 알아보시는 건 어떠실까요?</p>
                                        <!-- <h3 class="mice "><a href="post-single-6.html " class="btn-link text-reset fw-bold ">청약캘린더 임시자리배치</a></h3>
                                    <p>한주 달력 형식으로 2주 뽑아볼까 했는데 왤케 어려움???? 노력하였으나 사망하였다 나를 찾지말아주세요</p> -->
                                        <!-- Card info -->
                                    </div>
                                </div>
                            </div>
                            <!-- 청약캘린더 끝 -->
                        </div>
                        <!-- 오른쪽 사이드바 시작 -->
                        <div class="col-lg-3 mt-5 mt-lg-0 ">
                            <div data-sticky data-margin-top="80 " data-sticky-for="767 ">
                                <!-- Social links -->
                                <div class="row g-2 ">
                                    <a href="# " class="d-flex justify-content-between align-items-center bg-facebook text-white-force rounded p-2 position-relative ">
                                        <i class="fab fa-facebook-square fs-3 "></i>
                                        <div class="d-flex ">
                                            <h6 class="me-1 mb-0 ">1.5K</h6>
                                            <small class="small ">Fans</small>
                                        </div>
                                    </a>
                                    <a href="# " class="d-flex justify-content-between align-items-center bg-instagram-gradient text-white-force rounded p-2 position-relative ">
                                        <i class="fab fa-instagram fs-3 "></i>
                                        <div class="d-flex ">
                                            <h6 class="me-1 mb-0 ">1.8M</h6>
                                            <small class="small ">Followers</small>
                                        </div>
                                    </a>
                                    <a href="# " class="d-flex justify-content-between align-items-center bg-youtube text-white-force rounded p-2 position-relative ">
                                        <i class="fab fa-youtube-square fs-3 "></i>
                                        <div class="d-flex ">
                                            <h6 class="me-1 mb-0 ">22K</h6>
                                            <small class="small ">Subscribers</small>
                                        </div>
                                    </a>
                                </div>
                                <!-- 인기검색어 -->
                                <div class="row g-2 mt-5 ">
                                    <h4 class="mice ">인기검색어</h4>
                                    <div class="d-flex justify-content-between align-items-center bg-warning bg-opacity-15 rounded p-2 position-relative ">
                                        <h6 class="m-0 text-warning ">디지털 경쟁력</h6>
                                        <a href="# " class="badge bg-warning text-dark stretched-link ">09</a>
                                    </div>
                                    <div class="d-flex justify-content-between align-items-center bg-info bg-opacity-10 rounded p-2 position-relative ">
                                        <h6 class="m-0 text-info ">소상공인 대출</h6>
                                        <a href="# " class="badge bg-info stretched-link ">25</a>
                                    </div>
                                    <div class="d-flex justify-content-between align-items-center bg-danger bg-opacity-10 rounded p-2 position-relative ">
                                        <h6 class="m-0 text-danger ">전세피해지원센터</h6>
                                        <a href="# " class="badge bg-danger stretched-link ">75</a>
                                    </div>
                                    <div class="d-flex justify-content-between align-items-center bg-primary bg-opacity-10 rounded p-2 position-relative ">
                                        <h6 class="m-0 text-primary ">세계 전기차 점유율</h6>
                                        <a href="# " class="badge bg-primary stretched-link ">19</a>
                                    </div>
                                    <div class="d-flex justify-content-between align-items-center bg-success bg-opacity-10 rounded p-2 position-relative ">
                                        <h6 class="m-0 text-success ">복지멤버십</h6>
                                        <a href="# " class="badge bg-success stretched-link ">35</a>
                                    </div>
                                </div>
                                <!-- 커뮤니티 실시간 -->
                                <div>
                                    <h4 class="mt-5 mb-3 mice ">커뮤니티 실시간&nbsp;<a class="badge text-bg-danger mb-3 " style="font-size: 70%; ">HOT</a></h4>
                                    <div class="d-flex position-relative mb-3 ">
                                        <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5 ">01</span>
                                        <h6><a href="# " class="stretched-link text-reset btn-link ">강남 역세권 청약 일정 어디서 찾아보죠?</a></h6>
                                    </div>
                                    <div class="d-flex position-relative mb-3 ">
                                        <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5 ">02</span>
                                        <h6><a href="# " class="stretched-link text-reset btn-link ">나는솔로 보면서, 영철님 같은 분들 많으시죠? 저만 그런가.. </a></h6>
                                    </div>
                                    <div class="d-flex position-relative mb-3 ">
                                        <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5 ">03</span>
                                        <h6><a href="# " class="stretched-link text-reset btn-link ">삼전은 지금 끝물이죠.. 지금 왜 들어갑니까?</a></h6>
                                    </div>
                                    <div class="d-flex position-relative mb-3 ">
                                        <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5 ">04</span>
                                        <h6><a href="# " class="stretched-link text-reset btn-link ">코스피 연말에 2400갈겁니다. 두고보세요. </a></h6>
                                    </div>
                                    <div class="d-flex position-relative mb-3 ">
                                        <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5 ">05</span>
                                        <h6><a href="# " class="stretched-link text-reset btn-link ">저희집 고양이 좀 보고가세요. </a></h6>
                                    </div>
                                    <div class="d-flex position-relative mb-3 ">
                                        <span class="me-3 mt-n1 fa-fw fw-bold fs-3 opacity-5 ">06</span>
                                        <h6><a href="# " class="stretched-link text-reset btn-link ">상여금을 코인으로 받아서 묵혀놨는데 3만원이 되버렸는데 어쩌죠?</a></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Sidebar END -->
                    </div>
                    <!-- Row end -->
                </div>
            </section>
            <!-- ======================= 뉴스 + 카드뉴스 + 오른쪽 사이드바 끝 -->

            <!-- ======================= 한 눈에 보는 90초 금융 시작 -->
            <section class="bg-dark ">
                <div class="container ">
                    <div class="row g-4 ">
                        <div class="col-md-12 ">
                            <!-- Title -->
                            <div class="d-sm-flex justify-content-between align-items-center ">
                                <h2 class="m-sm-0 text-white mice "><i class="bi bi-camera-video "></i>&nbsp; 한 눈에 보는 90초 금융</h2>
                            </div>
                        </div>
                        <!-- 유튜브 1 -->
                        <div class="col-sm-6 col-lg-3 ">
                            <div class="card bg-transparent overflow-hidden ">
                                <div class="position-relative rounded-3 overflow-hidden ">
                                    <iframe src="https://www.youtube.com/embed/-B8F1x9o1VM " title="YouTube video player " frameborder="0 " allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture " allowfullscreen></iframe>
                                </div>
                            </div>
                            <div class="card-body px-0 pt-3 ">
                                <h5 class="card-title "><a href="podcast-single.html " class="btn-link text-white fw-bold mice ">은행 창구에서 이것 보여주면 계좌 개설 가능</a></h5>
                                <p class="nav-item text-white mt-2 ">금융위원회</p>
                                <p class="nav-item text-white " style="margin-top:-10px; ">2022.08.25</p>
                            </div>
                        </div>
                        <!-- 유튜브 2 -->
                        <div class="col-sm-6 col-lg-3 ">
                            <div class="card bg-transparent overflow-hidden ">
                                <div class="position-relative rounded-3 overflow-hidden ">
                                    <iframe src="https://www.youtube.com/embed/TPEFszY7j90 " title="YouTube video player " frameborder="0 " allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture " allowfullscreen></iframe>
                                </div>
                            </div>
                            <div class="card-body px-0 pt-3 ">
                                <h5 class="card-title "><a href="podcast-single.html " class="btn-link text-white fw-bold mice ">뭐니! 뭐니? 이건 Money 어디 숨어있니? 내 돈?</a></h5>
                                <p class="nav-item text-white mt-2 ">금융위원회</p>
                                <p class="nav-item text-white " style="margin-top:-10px; ">2022.08.25</p>
                            </div>
                        </div>
                        <!-- 유튜브 3 -->
                        <div class="col-sm-6 col-lg-3 ">
                            <div class="card bg-transparent overflow-hidden ">
                                <div class="position-relative rounded-3 overflow-hidden ">
                                    <iframe src="https://www.youtube.com/embed/zR0lM7o3AhU " title="YouTube video player " frameborder="0 " allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture " allowfullscreen></iframe>
                                </div>
                            </div>
                            <div class="card-body px-0 pt-3 ">
                                <h5 class="card-title "><a href="podcast-single.html " class="btn-link text-white fw-bold mice ">청년층에 유리한 조건으로 바뀐 "통합 채무조정 " [2022년 달라지는 금융제도]</a></h5>
                                <p class="nav-item text-white mt-2 ">금융위원회</p>
                                <p class="nav-item text-white " style="margin-top:-10px; ">2022.08.25</p>
                            </div>
                        </div>
                        <!-- 유튜브 4 -->
                        <div class="col-sm-6 col-lg-3 ">
                            <div class="card bg-transparent overflow-hidden ">
                                <div class="position-relative rounded-3 overflow-hidden ">
                                    <iframe src="https://www.youtube.com/embed/TfJuv2oYStE " title="YouTube video player " frameborder="0 " allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture " allowfullscreen></iframe>
                                </div>
                            </div>
                            <div class="card-body px-0 pt-3 ">
                                <h5 class="card-title "><a href="podcast-single.html " class="btn-link text-white fw-bold ">DSR 계산 어떻게? 금융위가 알려드립니다.[2022년 달라지는 금융제도]</a></h5>
                                <p class="nav-item text-white mt-2 ">금융위원회</p>
                                <p class="nav-item text-white " style="margin-top:-10px; ">2022.08.25</p>
                            </div>
                        </div>
                        <!-- Card small START -->
                    </div>
                </div>
            </section>
            <!-- ======================= 한 눈에 보는 90초 금융 끝 -->

            <!-- ======================= 오피니언 시작 -->
            <section style="margin: top 200px; ">
                <div class="container " style="margin: top 200px; ">
                    <div class="row ">
                        <h2 class="mice "><i class="fa fa-solid fa-pen-nib " style="margin-right:10px; "></i>오피니언</h2>
                        <div class="col-12 ">
                            <div class="tiny-slider arrow-blur arrow-round rounded-3 overflow-hidden ">
                                <div class="tiny-slider-inner " data-autoplay="true " data-hoverpause="true " data-gutter="24 " data-arrow="true " data-dots="false " data-items-xl="4 " data-items-lg="3 " data-items-md="3 " data-items-sm="2
                                                " data-items-xs="1 ">
                                    <!-- 오피니언 1 -->
                                    <div>
                                        <div class="card card-overlay-bottom card-img-scale " style="width: 250px; height: 350px; ">
                                            <!-- Card Image -->
                                            <img class="card-img " src="assets/images/01_main/main_opi_01.jpg " alt=" " style="width: 250px; height: 350px; ">
                                            <!-- Card Image overlay -->
                                            <div class="card-img-overlay d-flex flex-column p-3 p-sm-4 ">
                                                <div class="w-100 mt-auto ">
                                                    <h4 class="text-white "><a href="post-single-2.html " class="btn-link text-reset stretched-link ">[시각과 전망] '음식디미방’과 ‘맛의 방주’</a></h4>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="margin-top:30px; ">
                                            <h5 class="nav-item ">배성훈 경북본사장</h5>
                                            <p class="nav-item ">2022.10.04</p>
                                        </div>
                                    </div>
                                    <!-- 오피니언 2 -->
                                    <div>
                                        <div class="card card-overlay-bottom card-img-scale " style="width: 250px; height: 350px; ">
                                            <!-- Card Image -->
                                            <img class="card-img " src="assets/images/01_main/main_opi_02.jpg " alt=" " style="width: 250px; height: 350px; ">
                                            <!-- Card Image overlay -->
                                            <div class="card-img-overlay d-flex flex-column p-3 p-sm-4 ">
                                                <div class="w-100 mt-auto ">
                                                    <h4 class="text-white ">
                                                        <a href="post-single-2.html " class="btn-link text-reset stretched-link ">&lt;시평&gt;‘당당한 군대’ 복원 절실하다</a>
                                                    </h4>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="margin-top:30px; ">
                                            <h5 class="nav-item ">배성훈 경북본사장</h5>
                                            <p class="nav-item ">2022.10.04</p>
                                        </div>
                                    </div>
                                    <!-- 오피니언 3 -->
                                    <div>
                                        <div class="card card-overlay-bottom card-img-scale " style="width: 250px; height: 350px; ">
                                            <!-- Card Image -->
                                            <img class="card-img " src="assets/images/01_main/main_opi_03.jpg " alt=" " style="width: 250px; height: 350px; ">
                                            <!-- Card Image overlay -->
                                            <div class="card-img-overlay d-flex flex-column p-3 p-sm-4 ">
                                                <div class="w-100 mt-auto ">
                                                    <h4 class="text-white "><a href="post-single-2.html " class="btn-link text-reset stretched-link ">[기고]탄소장벽 세워지는데…기업들은 속이 탄다</a></h4>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="margin-top:30px; ">
                                            <h5 class="nav-item ">배성훈 경북본사장</h5>
                                            <p class="nav-item ">2022.10.04</p>
                                        </div>
                                    </div>
                                    <!-- 오피니언 4 -->
                                    <div>
                                        <div class="card card-overlay-bottom card-img-scale " style="width: 250px; height: 350px; ">
                                            <!-- Card Image -->
                                            <img class="card-img " src="assets/images/01_main/main_opi_04.jpg " alt=" " style="width: 250px; height: 350px; ">
                                            <!-- Card Image overlay -->
                                            <div class="card-img-overlay d-flex flex-column p-3 p-sm-4 ">
                                                <div class="w-100 mt-auto ">
                                                    <h4 class="text-white "><a href="post-single-2.html " class="btn-link text-reset stretched-link ">[시각과 전망] '음식디미방’과 ‘맛의 방주’</a></h4>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="margin-top:30px; ">
                                            <h5 class="nav-item ">배성훈 경북본사장</h5>
                                            <p class="nav-item ">2022.10.04</p>
                                        </div>
                                    </div>
                                    <!-- 오피니언 5 -->
                                    <div>
                                        <div class="card card-overlay-bottom card-img-scale " style="width: 250px; height: 350px; ">
                                            <!-- Card Image -->
                                            <img class="card-img " src="assets/images/01_main/main_opi_03.jpg " alt=" " style="width: 250px; height: 350px; ">
                                            <!-- Card Image overlay -->
                                            <div class="card-img-overlay d-flex flex-column p-3 p-sm-4 ">
                                                <div class="w-100 mt-auto ">
                                                    <h4 class="text-white "><a href="post-single-2.html " class="btn-link text-reset stretched-link ">[시각과 전망] '음식디미방’과 ‘맛의 방주’</a></h4>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="margin-top:30px; ">
                                            <h5 class="nav-item ">배성훈 경북본사장</h5>
                                            <p class="nav-item ">2022.10.04</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- =======================오피니언 끝 =======================-->
    </main>
    <!-- **************** MAIN CONTENT END **************** -->

    <!-- =======================푸터 시작 =======================-->
    <footer class="bg-dark pt-3 ">
        <div class="container ">
            <!-- About and Newsletter START -->
            <div class="row pt-3 pb-1 ">
                <div class="col-md-3 ">
                    <img src="assets/images/01_main/logo_white.png " alt="footer logo ">
                </div>
                <div class="col-md-5 ">
                    <p class="text-muted ">그 누구보다도 정치경제소식에 신속하게 닿을 수 있는 곳. <br> FinTouch는 늘 고급 정보를 여러분께 전달하기 위해 노력합니다.</p>
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
            <div class="row pt-1 ">
                <!-- Footer Widget -->
                <div class="col-md-6 col-lg-3 mb-3 ">
                    <h5 class="mb-4 text-white ">Recent post</h5>
                    <!-- Item -->
                    <div class="mb-4 position-relative ">
                        <div>
                            <a href="# " class="badge text-bg-danger mb-2 ">
                                <i class="fas fa-circle me-2 small fw-bold "></i>Finance</a>
                        </div>
                        <a href="post-single-3.html " class="btn-link text-white fw-normal ">10조로 커진 액티브 ETF…금리연동·채권형 대세로</a>
                        <div>
                        </div>
                        <!-- <a href="post-single-3.html " class="btn-link text-white fw-normal ">지속가능한 부동산 산업의 미래</a> -->
                    </div>
                </div>
                <!-- Footer Widget -->
                <div class="col-md-6 col-lg-3 mb-3 ">
                    <h5 class="mb-4 text-white ">Sponsor</h5>
                    <div class="row ">
                        <div class="col-6 ">
                            <ul class="nav flex-column text-primary-hover ">
                                <li class="nav-item "><a class="nav-link " href="# ">대한민국 국회</a></li>
                                <li class="nav-item "><a class="nav-link pt-0 " href="# ">금융감독원</a></li>
                                <li class="nav-item "><a class="nav-link pt-0 " href="# ">금융감독위원회 </a></li>
                                <!-- <li class="nav-item "><a class="nav-link " href="# ">한국예탁결제원</a></li> -->
                            </ul>
                        </div>
                        <div class="col-6 ">
                            <ul class="nav flex-column text-primary-hover ">
                                <li class="nav-item "><a class="nav-link " href="# ">기획재정부</a></li>
                                <li class="nav-item "><a class="nav-link " href="# ">국토교통부</a></li>
                                <li class="nav-item "><a class="nav-link " href="# ">주택도시기금</a></li>
                                <!-- <li class="nav-item "><a class="nav-link " href="# ">매일경제</a></li> -->
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- Footer Widget -->
                <div class="col-sm-6 col-lg-3 mb-3 ">
                    <h5 class="mb-4 text-white ">Get Regular Updates</h5>
                    <ul class="nav flex-column text-primary-hover ">
                        <li class="nav-item "><a class="nav-link pt-0 " href="# "><i class="fab fa-whatsapp fa-fw me-2 "></i>WhatsApp</a></li>
                        <li class="nav-item "><a class="nav-link " href="# "><i class="fab fa-youtube fa-fw me-2 "></i>YouTube</a></li>
                        <li class="nav-item "><a class="nav-link " href="# "><i class="far fa-bell fa-fw me-2 "></i>Website Notifications</a></li>
                    </ul>
                </div>

                <!-- Footer Widget -->
                <div class="col-sm-6 col-lg-3 mb-3 ">
                    <h5 class="mb-4 text-white ">Our Mobile App</h5>
                    <p class="text-muted ">FinTouch의 앱을 다운로드하여 최신 속보를 가장 빠르게 확인해보세요! </p>
                    <div class="row g-2 ">
                        <div class="col ">
                            <a href="# "><img class="w-100 " src="assets/images/app-store.svg " alt="app-store "></a>
                        </div>
                        <div class="col ">
                            <a href="# "><img class="w-100 " src="assets/images/google-play.svg " alt="google-play "></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Widgets END -->
    </footer>
    <!-- =======================푸터 끝 =======================-->



    <!-- Back to top -->
    <div class="back-top "><i class="bi bi-arrow-up-short "></i></div>

    <!-- =======================
JS libraries, plugins and custom scripts -->

    <!--그래프 관련1 -지수- - 그래프 관련script 순서 맞춘겁니다 이 위치에 두세요 절대 건들지마세요- -->
    <script src="assets/vendor/apexcharts/js/apexcharts.min.js "></script>

    <!-- 그래프 관련2 -지수- - 그래프 관련script 순서 맞춘겁니다 이 위치에 두세요 절대 건들지마세요- -->
    <script src="https://apexcharts.com/samples/assets/stock-prices.js "></script>

    <!-- Bootstrap JS -->
    <script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js "></script>

    <!-- Vendors -->
    <script src="assets/vendor/tiny-slider/tiny-slider.js "></script>
    <script src="assets/vendor/sticky-js/sticky.min.js "></script>
    <script src="assets/vendor/glightbox/js/glightbox.js "></script>
    <script src="assets/vendor/plyr/plyr.js "></script>

    <!-- Template Functions -->
    <script src="assets/js/functions.js "></script>

    <!-- jquery -->
    <script src="https://code.jquery.com/jquery-3.4.1.js "></script>

    <!--그래프 관련3 - 그래프 관련script 순서 맞춘겁니다 이 위치에 두세요 절대 건들지마세요- -->
    <script src="assets/js/demo.apex-area.js "></script>
    <script src="assets/js/demo.apex-area2.js "></script>
    <script src="assets/js/demo.apex-area3.js "></script>
    <script src="assets/js/demo.apex-area4.js "></script>
    <script src="assets/js/demo.crm-dashboard.js "></script>
    <script src="assets/js/vendor.min.js "></script>

    <!-- 그래프 관련4 - 그래프 관련script 순서 맞춘겁니다 이 위치에 두세요 절대 건들지마세요- -->
    <script src="https://apexcharts.com/samples/assets/series1000.js "></script>
    <script src="https://apexcharts.com/samples/assets/github-data.js "></script>
    <script src="https://apexcharts.com/samples/assets/irregular-data-series.js "></script>

</body>

</html>