<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>  
<%@include file="/WEB-INF/views/common/header.jsp" %>

<style>
    .wrap {
        position: absolute;
        left: 0;
        bottom: 40px;
        width: 288px;
        height: 132px;
        margin-left: -144px;
        text-align: left;
        overflow: hidden;
        font-size: 12px;
        font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
        line-height: 1.5;
    }
    
    .wrap * {
        padding: 0;
        margin: 0;
    }
    
    .wrap .info {
        width: 286px;
        height: 120px;
        border-radius: 5px;
        border-bottom: 2px solid #ccc;
        border-right: 1px solid #ccc;
        overflow: hidden;
        background: #fff;
    }
    
    .wrap .info:nth-child(1) {
        border: 0;
        box-shadow: 0px 1px 2px #888;
    }
    
    .info .title {
        padding: 5px 0 0 10px;
        height: 30px;
        background: #eee;
        border-bottom: 1px solid #ddd;
        font-size: 18px;
        font-weight: bold;
    }
    
    .info .close {
        position: absolute;
        top: 10px;
        right: 10px;
        color: #888;
        width: 17px;
        height: 17px;
        background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');
    }
    
    .info .close:hover {
        cursor: pointer;
    }
    
    .info .body {
        position: relative;
        overflow: hidden;
    }
    
    .info .desc {
        position: relative;
        margin: 13px 0 0 90px;
        height: 75px;
    }
    
    .desc .ellipsis {
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
    }
    
    .desc .jibun {
        font-size: 11px;
        color: #888;
        margin-top: -2px;
    }
    
    .info .img {
        position: absolute;
        top: 6px;
        left: 5px;
        width: 73px;
        height: 71px;
        border: 1px solid #ddd;
        color: #888;
        overflow: hidden;
    }
    
    .info:after {
        content: '';
        position: absolute;
        margin-left: -12px;
        left: 50%;
        bottom: 0;
        width: 22px;
        height: 12px;
        background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')
    }
    
    .info .link {
        color: #5085BB;
    }
    
    path:hover {
        cursor: pointer;
    }
</style>

<head>
    <title>Blogzine - Blog and Magazine Bootstrap 5 Theme</title>
</head>


    <!-- **************** MAIN CONTENT START **************** -->
    <!-- =======================섹션1: 청약 메인 시작 =======================-->
    <section class="position-relative overflow-hidden" style="background-image:url(resources/resources1b/images/02_realEstate/501b249c45892.jpg); background-position: center; background-size: cover;">
        <div class="bg-overlay bg-transparent opacity-5"></div>
        <!-- SVG decoration for curve -->
        <figure class="position-absolute bottom-0 left-0 w-100 d-md-block mb-n3 z-index-9">
            <svg class="fill-white" width="100%" height="150" viewBox="0 0 500 150" preserveAspectRatio="none">
                <path d="M0,150 L0,40 Q250,150 500,40 L580,150 Z"></path>
            </svg>
        </figure>

        <div class="container z-index-9 position-relative">
            <div class="row py-0 align-items-center text-center text-sm-start">
                <div class="col-sm-12 all-text-white mt-md-0">
                    <div class="py-0 py-md-5 my-2">
                        <!-- Badge with content -->
                        <div class="d-inline-block bg-white bg-opacity-75 px-3 py-2 rounded-pill mb-3">
                            <p class="mb-0 text-dark"><span class="badge text-bg-success rounded-pill me-1">New</span> Start with the best Real Estate</p>
                        </div>
                        <!-- Title -->
                        <h1 class="text-white display-5">청약정보</h1>
                        <p class="text-white">청약에 대한 상세 정보를 지도와 함께 확인하실 수 있습니다. </p>
                        <div class="d-sm-flex align-items-center mt-4">
                            <!-- Button -->
                            <a href="#" class="btn btn-primary me-2 mb-4 mb-sm-0">Get Started</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- =======================섹션1: 청약 메인 끝 =======================-->

    <!-- =======================섹션2: 분양단지 상세 정보 시작 =======================-->
    <section>
        <div class="container">
            <h2 class="m-0"><i class="bi bi-building me-2"></i>성남 금토지구 A-3블록 중흥S-클래스</h2>
            <p>분양 단지의 상세정보를 확인해보세요.</p>
            <div class="row g-4">
                <!-- Image -->
                <div class="col-xl-7">
                    <!-- 카카오 지도 부분 시작 -->
                    <div class="row g-2">
                        <div class="col-12">
                            <div class="bg-white rounded-2 glightbox-bg p-1 position-relative">
                                <img src="resources/resources1b/images/02_realEstate/pic01.png" style="width:650px; height:450px;" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Detail -->
                <div class="col-xl-5">
                    <!-- Title -->
                    <div class="card-body table text-sm mb-0 rounded-2 bg-black ">
                        <tr>
                            <h5 class="border-0 text-center p-3 text-white">조회결과</h5>
                        </tr>
                    </div>
                    <!-- Variant END -->

                    <div class="card-body p-3">
                        <table class="table text-sm mb-0 ">
                            <tr>
                                <th class="p-3 h5 text-center" style="width: 150px">공급위치</th>
                                <td class="p-3 h5 text-center">경기도 성남시 수정구 금토로 44-5(금토동)</td>
                            </tr>
                            <tr>
                                <th class="p-3 h5 text-center" style="width: 150px">모집 공고일</th>
                                <td class="p-3 h5 text-center">2023-02-10</td>
                            </tr>
                            <tr>
                                <th class="p-3 h5 text-center">공급규모</th>
                                <td class="p-3 h5 text-center">229세대</td>
                            </tr>
                            <tr>
                                <th class="p-3 h5 text-center" style="width: 150px;">입주예정월</th>
                                <td class="p-3 h5 text-center">2023-03월</td>
                            </tr>
                            <tr>
                                <th class="p-3 h5 text-center">문의처</th>
                                <td class="p-3 h5 text-center text-success"><i class="bi bi-telephone-fill me-2"></i>031-214-9565</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- =======================섹션2: 분양단지 상세 정보 끝 =======================-->

    <!-- =======================섹션3: 입주자 모집공고 시작 =======================-->
    <section class="pb-0">
        <div class="container text-center">
            <!-- Card header -->
            <p class="subtitle pb-5" style="font-size: 20px; margin-bottom: 1%; color:#e83e9e "><b>T H E S E &nbsp A R E &nbsp E X P I R I N G &nbsp S O O N</b></p>
            <h2 class="m-0"><i class="bi bi-geo me-2 "></i>입주자모집공고</h2>
            <p>※ 특별공급 종류에 따라 접수기간 및 장소가 다를 수 있으니 모집공고를 반드시 확인하시기 바랍니다. </p>
            <div class="container pt-3">
                <div class="card-body rounded-2">
                    <!-- Form START -->
                    <form class="row g-3 ">
                        <!-- Payment option -->
                        <!-- Card body -->
                        <div class="col-md-6">
                            <div class="card border-0 shadow mb-5 ">
                                <div class="card-header py-4 border-0 ">
                                    <tr>
                                        <h3>단지정보</h3>
                                    </tr>
                                </div>
                                <div class="card-body  pb-5">
                                    <table class="table mb-0 m-2">
                                        <tr>
                                            <th class="ps-2 ">공고번호</th>
                                            <td class="pe-2 ">2022000248</td>
                                        </tr>
                                        <tr>
                                            <th class="ps-2 ">주택명</th>
                                            <td class="pe-2 ">성남 금토지구 A-3블록 중흥S-클래스</td>
                                        </tr>
                                        <tr>
                                            <th class="ps-2 ">공급위치</th>
                                            <td class="pe-2 ">경기도 성남시 수정구 금토로 44-5(금토동)</td>
                                        </tr>
                                        <tr>
                                            <th class="ps-2 ">주택구분</th>
                                            <td class="pe-2 ">아파트</td>
                                        </tr>
                                        <tr>
                                            <th class="ps-2 ">분양종류(구분)</th>
                                            <td class="pe-2 ">민영</td>
                                        </tr>
                                        <tr>
                                            <th class="ps-2 ">공급면적(㎡)</th>
                                            <td class="pe-2 ">89</td>
                                        </tr>
                                        <tr>
                                            <th class="ps-2 ">사업주체명</th>
                                            <td class="pe-2 ">주식회사 하나자산신탁</td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <div class="card border-0 shadow mb-5 ">
                            </div>
                        </div>
                        <div class="col-md-6 ">
                            <div class="card border-0 shadow mb-5 ">
                                <div class="card-header py-4 border-0 ">
                                    <tr>
                                        <h3>청약정보</h3>
                                    </tr>
                                </div>
                                <div class="card-body  pb-5">
                                    <table class="table mb-0 m-2">
                                        <tr>
                                            <th class="ps-2 text-danger">분양최고금액(단위:만원)</th>
                                            <td class="pe-2 ">53,740</td>
                                        </tr>
                                        <tr>
                                            <th class="ps-2 ">청약접수 시작일</th>
                                            <td class="pe-2 ">2023-02-21</td>
                                        </tr>
                                        <tr>
                                            <th class="ps-2 ">청약접수 종료일</th>
                                            <td class="pe-2 ">2023-02-22</td>
                                        </tr>
                                        <tr>
                                            <th class="ps-2 text-danger">당첨자 발표일</th>
                                            <td class="pe-2 ">2023-03-02</td>
                                        </tr>
                                        <tr>
                                            <th class="ps-2 ">계약 시작일</th>
                                            <td class="pe-2 ">2023-03-03</td>
                                        </tr>
                                        <tr>
                                            <th class="ps-2 ">계약 종료일</th>
                                            <td class="pe-2 ">2023-03-04</td>
                                        </tr>
                                        <tr>
                                            <th class="ps-2 ">모집공고 확인 홈페이지</th>
                                            <td class="ps-2 p-1"><a href="# " class="badge bg-secondary bg-opacity-75 text-white mb-2"><i class="bi bi-house-door-fill me-2 fw-bold "></i>http://www.dawartriche.com/</a></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- =======================섹션3: 입주자 모집공고 끝 =======================-->

    <!-- =======================섹션4: 청약지도 시작 =======================-->
    <section class="pt-0">
        <div class="container text-center">
            <!-- 청약상세 페이지 -->
            <!-- 카카오 지도 부분 시작 -->
            <h2><i class="bi bi-geo me-2"></i>청약지도</h2>
            <p>분양 단지의 위치를 확인해보세요.</p>
            <!-- 카카오 지도 body -->
            <div id="map" style="height:500px;"></div>
            <!-- 카카오 지도 END -->
        </div>
    </section>
    <!-- =======================섹션4: 청약지도 끝 =======================-->

    <!-- 청약 주의사항 시작 -->
    <section class="position-relative mb-5">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-5 position-relative z-index-9">
                    <!-- Title -->
                    <h2>청약 신청시 유의사항</h2>
                    <p class="h5">본 정보는 사실과 차이가 있을 수 있으니 청약신청 시 <br>반드시 해당
                        <a class="text-primary">"입주자모집공고"</a>를 확인하시기 바랍니다.</p>
                    <!-- Download button -->
                    <div class="row">
                        <!-- Google play store button -->
                        <div class="col-6 col-sm-4 col-md-6 col-lg-4">
                        </div>

                    </div>
                </div>

                <div class="col-md-7 text-md-end position-relative">

                    <!-- Image -->
                    <img src="resources/resources1b/images/02_realEstate/istockphoto-917262780-170667a.jpg" class="position-relative" alt="">
                </div>
            </div>
        </div>
    </section>
    <!-- 청약 주의사항 끝 -->
    <!-- **************** MAIN CONTENT END **************** -->

    
    <!-- ======================= script 시작 =======================-->
    <!-- 카카오 지도 -->
	<script type="text/javascript" src="http://dapi.kakao.com/v2/maps/sdk.js?appkey=239fc78d5f0e8c75d0c25dc713fdd676&libraries=services"></script>
	<script>
	    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	        mapOption = {
	            center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	            level: 3 // 지도의 확대 레벨
	        };
	
	    // 지도를 생성합니다    
	    var map = new kakao.maps.Map(mapContainer, mapOption);
	
	    // 주소-좌표 변환 객체를 생성합니다
	    var geocoder = new kakao.maps.services.Geocoder();
	
	    // 주소로 좌표를 검색합니다
	    geocoder.addressSearch('서울특별시 강남구 테헤란로 14길 6 남도빌딩', function(result, status) {
	
	        // 정상적으로 검색이 완료됐으면 
	        if (status === kakao.maps.services.Status.OK) {
	
	            var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
	
	            // 결과값으로 받은 위치를 마커로 표시합니다
	            var marker = new kakao.maps.Marker({
	                map: map,
	                position: coords
	            });
	
	            // 인포윈도우로 장소에 대한 설명을 표시합니다
	            var infowindow = new kakao.maps.InfoWindow({
	                content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
	            });
	            infowindow.open(map, marker);
	
	            // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	            map.setCenter(coords);
	        }
	    });
	</script>
	<!-- ======================= script 끝 =======================-->
	
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
    