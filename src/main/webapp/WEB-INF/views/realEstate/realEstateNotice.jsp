<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

  
<%@include file="/WEB-INF/views/common/header.jsp" %>


<head>
    <title>FinTouch | FinanceProduct | Detail</title>
</head>

<c:set var="searchType" value="${param.searchType}" />
<%-- <c:if test="${empty searchType}">
	<c:set var="searchType" value="${'title'}"/>
</c:if> --%>

<%-- <c:set var="cateType" value="${param.cateType}" />
<c:if test="${empty cateType}">
	<c:set var="cateType" value="${'title2'}"/>
</c:if> --%>

<style>
	.etc {
		white-space: nowrap;
		overflow: hidden;
		text-overflow: ellipsis;
		/* width:100%; */
		max-width: 570px;
	}
</style>

<body>
	<script src="${path}/resources/css/js/jquery-3.6.0.min.js"></script>
	<!-- **************** MAIN CONTENT START **************** -->
    <section class="position-relative overflow-hidden" style="background-image:url(${path}/resources/resources1b/images/03_realEstate/03_reales_notice.jpeg); background-position: center; background-size: cover; height:350px;">
        <div class="bg-overlay bg-transparent opacity-5"></div>
        <!-- SVG decoration for curve -->
        <figure class="position-absolute bottom-0 left-0 w-100 d-md-block mb-n3 z-index-9">
            <svg class="fill-white" width="100%" height="150" viewBox="0 0 500 150" preserveAspectRatio="none">
                <path d="M0,150 L0,40 Q250,150 500,40 L580,150 Z"></path>
            </svg>
        </figure>

        <div class="container z-index-9 position-relative mice">
            <div class="row py-0 align-items-center text-center text-sm-start">
                <div class="col-sm-12 all-text-white mt-md-0">
                    <div class="py-0 py-md-5 my-2 mt-0">
                        <!-- Badge with content -->
                        <a href="#" class="badge text-bg-warning mb-2"><i class="fas fa-circle me-2 small fw-bold"></i>Real Estate</a>
                        <!-- Title -->
                        <h1 class="text-black display-5 mice">??????????????????</h1>
                        <p class="text-white" style="font-size:20px"> </p>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- =======================Main START -->
    <section class="pt-3 pt-lg-5">
            <div class="container" style="margin-top: 10px; margin-bottom: 40px;">

                <!-- Post list table START -->
                <h2 class="mice">??????????????????</h2>
                <!-- Tab START -->
                <ul class="nav nav-tabs nav-tabs-dark" style="margin-top: 30px;">
                    <li class="nav-item"> <a class="nav-link <c:if test="${cateTab eq null}">active</c:if>" href="${path}/realEstate/notice">????????????</a> </li>
                    <li class="nav-item"> <a class="nav-link <c:if test="${cateTab eq 'act2'}">active</c:if>" data-bs-toggle="tab" href="#tab-2">??????</a> </li>
                    <li class="nav-item"> <a class="nav-link <c:if test="${cateTab eq 'act3'}">active</c:if>" data-bs-toggle="tab" href="#tab-3">????????????</a> </li>
                    <!-- <li class="nav-item"> <a class="nav-link" data-bs-toggle="tab" href="#tab-4">??????????????????</a> </li> -->
                    <li class="nav-item"> <a class="nav-link <c:if test="${cateTab eq 'act5'}">active</c:if>" data-bs-toggle="tab" href="#tab-5">????????????</a> </li>
                    <li class="nav-item"> <a class="nav-link <c:if test="${cateTab eq 'act6'}">active</c:if>" data-bs-toggle="tab" href="#tab-6">????????????/????????????</a> </li>
                    <li class="nav-item"> <a class="nav-link <c:if test="${cateTab eq 'act7'}">active</c:if>" data-bs-toggle="tab" href="#tab-7">??????</a> </li>
                    <li class="nav-item"> <a class="nav-link <c:if test="${cateTab eq 'act8'}">active</c:if>" data-bs-toggle="tab" href="#tab-8">??????</a> </li>
                </ul>
                <div class="tab-content bg-opacity-15 p-4" style="height: 25px; padding-bottom: 10px;">
                    <div class="tab-pane show active" id="tab-1">
                    </div>
                    <div class="tab-pane <c:if test="${cateTab eq 'act2'}"> show active</c:if>" id="tab-2">
                        <a href="${path}/realEstate/notice?page=1&cateType=1" style="color: black;"><i class="bi bi-dot"></i>????????????</a>&nbsp;&nbsp;
                        <a href="${path}/realEstate/notice?page=1&cateType=2" style="color: black;"><i class="bi bi-dot"></i>????????????</a>&nbsp;&nbsp;&nbsp;
                        <a href="${path}/realEstate/notice?page=1&cateType=3" style="color: black;"><i class="bi bi-dot"></i>??????????????????</a>&nbsp;&nbsp;&nbsp;
                        <a href="${path}/realEstate/notice?page=1&cateType=4" style="color: black;"><i class="bi bi-dot"></i>????????????</a>
                    </div>
                    <div class="tab-pane <c:if test="${cateTab eq 'act3'}"> show active</c:if>" id="tab-3">
                    	<a href="${path}/realEstate/notice?page=1&cateType=19" style="color: black;"><i class="bi bi-dot"></i>????????????</a>
                    </div>
                    <%-- <div class="tab-pane" id="tab-4">
                    	<a href="${path}/realEstate/notice?page=1&cateType=20" style="color: black;"><i class="bi bi-dot"></i>??????????????????</a>
                    </div> --%>
                    <div class="tab-pane <c:if test="${cateTab eq 'act5'}"> show active</c:if>" id="tab-5">
                        <a href="${path}/realEstate/notice?page=1&cateType=5" style="color: black;"><i class="bi bi-dot"></i>??????????????????</a>&nbsp;&nbsp;
                        <a href="${path}/realEstate/notice?page=1&cateType=6" style="color: black;"><i class="bi bi-dot"></i>????????????</a>&nbsp;&nbsp;
                        <a href="${path}/realEstate/notice?page=1&cateType=7" style="color: black;"><i class="bi bi-dot"></i>????????????</a>&nbsp;&nbsp;
                        <%-- <a href="${path}/realEstate/notice?page=1&cateType=8" style="color: black;"><i class="bi bi-dot"></i>????????????</a>&nbsp;&nbsp; --%>
                        <a href="${path}/realEstate/notice?page=1&cateType=9" style="color: black;"><i class="bi bi-dot"></i>????????????</a>&nbsp;&nbsp;
                        <a href="${path}/realEstate/notice?page=1&cateType=10" style="color: black;"><i class="bi bi-dot"></i>????????????</a>&nbsp;&nbsp;
                        <a href="${path}/realEstate/notice?page=1&cateType=11" style="color: black;"><i class="bi bi-dot"></i>???????????????</a>
                    </div>
                    <div class="tab-pane <c:if test="${cateTab eq 'act6'}"> show active</c:if>" id="tab-6">
                        <a href="${path}/realEstate/notice?page=1&cateType=12" style="color: black;"><i class="bi bi-dot"></i>????????????</a>&nbsp;&nbsp;
                        <%-- <a href="${path}/realEstate/notice?page=1&cateType=13" style="color: black;"><i class="bi bi-dot"></i>????????????</a>&nbsp;&nbsp; --%>
                        <a href="${path}/realEstate/notice?page=1&cateType=14" style="color: black;"><i class="bi bi-dot"></i>???????????????</a>
                    </div>
                    <div class="tab-pane <c:if test="${cateTab eq 'act7'}"> show active</c:if>" id="tab-7">
                        <%-- <a href="${path}/realEstate/notice?page=1&cateType=15" style="color: black;"><i class="bi bi-dot"></i>????????(???)????????????(??????)</a>&nbsp;&nbsp; --%>
                        <a href="${path}/realEstate/notice?page=1&cateType=16" style="color: black;"><i class="bi bi-dot"></i>????????????(??????)</a>&nbsp;&nbsp;
                        <%-- <a href="${path}/realEstate/notice?page=1&cateType=17" style="color: black;"><i class="bi bi-dot"></i>????????????(??????????????)</a>&nbsp;&nbsp; --%>
                        <%-- <a href="${path}/realEstate/notice?page=1&cateType=18" style="color: black;"><i class="bi bi-dot"></i>????????????(??????)</a> --%>
                    </div>
                    <div class="tab-pane <c:if test="${cateTab eq 'act8'}"> show active</c:if>" id="tab-8">
                    	<a href="${path}/realEstate/notice?page=1&cateType=21" style="color: black;"><i class="bi bi-dot"></i>??????</a>
                    </div>
                </div>
                <!-- Tab END -->
                <!-- ?????? ???????????? ??? -->
                <div class="card border bg-transparent rounded-3" style="margin-bottom: 50px;">
                    <!-- Card body START -->
                    <div class="card-body p-3" style="margin-top: 20px; margin-bottom: 20px;">
                        <!-- Search and select START -->
                        <form action="${path}/realEstate/notice" method="get" class="rounded position-relative">
	                        <div class="row g-3 align-items-center justify-content-between mb-3" style="padding-bottom: 20px;">
	                            <!-- Select option -->
	                            <div class="col-md-3">
	                                <!-- Short by filter -->
	                                <%-- <form action="${path}/realEstate/notice" method="get"> --%>
	                                    <select class="form-select z-index-9 bg-transparent" name="searchType" aria-label=".form-select-sm">
	                                        <option value="" disabled selected>????????????</option>
		                                        <c:if test="${searchType == 'category'}">
		                                        	<option value="category" selected>??????</option>
		                                        </c:if>
		                                        <c:if test="${searchType != 'category'}">
		                                        	<option value="category">??????</option>
		                                        </c:if>
		                                        <c:if test="${searchType == 'title'}">
		                                        	<option value="title" selected>??????</option>
		                                        </c:if>
		                                        <c:if test="${searchType != 'title'}">
		                                        	<option value="title">??????</option>
		                                        </c:if>
		                                        <c:if test="${searchType == 'department'}">
		                                        	<option value="department" selected>????????????</option>
		                                        </c:if>
		                                        <c:if test="${searchType != 'department'}">
		                                        	<option value="department">????????????</option>
		                                        </c:if>
	                                    </select>
	                                <!-- </form> -->
	                            </div>
	                            <!-- Search -->
	                            <div class="col-md-9">
	                                <!-- <form class="rounded position-relative"> -->
	                                    <!-- <input class="form-control pe-5 bg-transparent" type="search" placeholder="Search" aria-label="Search"> -->
	                                    <input class="form-control pe-5 bg-transparent" type="text" placeholder="Search" aria-label="Search" id="searchValue" name="searchValue" value="${param.searchValue}">
	                                    <button class="btn bg-transparent border-0 px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="fas fa-search fs-6 "></i></button>
	                                <!-- </form> -->
	                            </div>
	                        </div>
                        </form>
                        <!-- Search and select END -->
                        <!-- Post list table START -->
                        <div class="table-responsive border-0">
                            <table class="table align-middle p-4 mb-0 table-hover table-shrink">
                                <!-- Table head -->
                                <thead class="table-dark">
                                    <tr>
                                        <th scope="col" style="width: 7%; text-align: center;" class="border-0 rounded-start">??????</th>
                                        <th scope="col" style="width: 16%; text-align: center;">??????</th>
                                        <th scope="col" style="width: 50%; text-align: center; class="border-0">??????</th>
                                        <th scope="col" style="width: 15%; text-align: center;" class="border-0">????????????</th>
                                        <th scope="col" style="width: 12%; text-align: center;" class="border-0 rounded-end">?????????</th>
                                    </tr>
                                </thead>
                                <!-- Table body START -->
                                <tbody class="border-top-0">
                                    <!-- Table item -->
                                    
                                    <c:if test="${!empty list}">
                                    	<c:forEach var="notice" items="${list}">
                                    		<tr>
		                                        <!-- ?????? -->
		                                        <td style="text-align: center;">
		                                            <c:out value="${totalCount - notice.rnum +1}"/>
		                                        </td>
		                                        <!-- ?????? -->
		                                        <td style="text-align: center;">
		                                            <c:out value="${notice.ais_tp_cd_nm}"/>
		                                        </td>
		                                        <!-- ?????? -->
		                                        <td>
		                                        	<div class="etc">
			                                            <h6 class="mb-0">
				                                            <a href="${path}/realEstate/notice/view?no=${notice.rnum}">
				                                            	<c:out value="${notice.bbs_tl}"/>
				                                            </a>
			                                            </h6>
		                                        	</div>
		                                        </td>
		                                        <!-- ???????????? -->
		                                        <td style="text-align: center;">
		                                            <c:out value="${notice.dep_nm}"/>
		                                        </td>
		                                        <!-- ????????? -->
		                                        <td style="text-align: center;">
		                                            <c:out value="${notice.bbs_wou_dttm}"/>
		                                        </td>
		                                    </tr>
                                    	
                                    	</c:forEach>
                                    	
                                    </c:if>
                                    
                                </tbody>
                                <!-- Table body END -->
                            </table>
                        </div>
                        <!-- Post list table END -->
                    </div>
                </div>
                <!-- ??????????????? ?????? -->
                <nav class="mb-sm-0 d-flex justify-content-center mt-2" aria-label="navigation">
                    <ul class="pagination pagination-sm pagination-bordered mb-0">
                        <li class="page-item">
                            <a class="page-link" href="javascript:movePage('${path}/realEstate/notice?page=${pageInfo.prevPage}');" tabindex="-1" aria-disabled="true">
                            	Prev
                            </a>
                        </li>
                        
                        <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
							<c:if test="${pageInfo.currentPage == status.current}">
								<li class="page-item active"><a class="page-link" href="javascript:void(0);"><c:out value="${status.current}"/></a></li>
							</c:if>
							<c:if test="${pageInfo.currentPage != status.current}">
								<li class="page-item">
									<%-- <c:if test="${fn:contains(cateTest, 'cateType')}">  --%>
									<c:set var="cateTest" value="${param}"/>
									<a class="page-link" href="javascript:void(0);" onclick="movePage('${path}/realEstate/notice?page=${status.current}');">
										<c:out value="${status.current}"/>
									</a>
									<%-- </c:if> --%>
								</li>
							</c:if>
						</c:forEach>
                        
                        <li class="page-item">
                            <a class="page-link" href="javascript:movePage('${path}/realEstate/notice?page=${pageInfo.nextPage}');" onclick="movePage('${path}/realEstate/notice/view?page=${pageInfo.nextPage}');">Next</a>
                        </li>
                    </ul>
                </nav>
                <!-- ??????????????? ??? -->
            </div>
        </section>
        
		<script type="text/javascript">
			function movePage(pageUrl){
				var searchValue = document.getElementById("searchValue");
				var searchTypes = document.getElementsByName("searchType");
				var searchType = 'title';
				
				var currentURL1 = window.location.search;
				var urlsplit1 = "";
				
				/* test!!!! */
				/* alert(pageUrl); */
				/* alert('currentURL1! : ' + currentURL1); */
				if(currentURL1.indexOf('searchType') != -1) {
					urlsplit1 = currentURL1.split('searchType=');
					/* alert('split test1: ' + urlsplit1); */
					urlsplit1 = urlsplit1[1].split('&');
					/* alert('split test2: ' + urlsplit1); */
					urlsplit1 = urlsplit1[0];
					/* alert('split test3: ' + urlsplit1); */
					
					pageUrl = pageUrl + '&searchType=' + urlsplit1 + '&searchValue=' + searchValue.value;
				}
				
				/* test!!!! */
				var currentURL = window.location.search;
				var urlsplit = "";
				/* alert(currentURL); */
				if(currentURL.indexOf('cateType') != -1) {
					urlsplit = currentURL.split('&');
					/* alert('split test: ' + urlsplit); */
					pageUrl = pageUrl + '&' + urlsplit[1];
				}
				/* alert(pageUrl); */
				return location.href = encodeURI(pageUrl);
			}
		</script>

	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>