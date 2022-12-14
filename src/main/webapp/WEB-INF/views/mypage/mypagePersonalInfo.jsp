<%@page import="com.kh.realfinal.member.model.vo.Member" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>  
    
<!DOCTYPE html>
<html lang="ko">
<style>
@font-face {
    font-family: "finder-icons";
    src: url("${path}/resources/resources3f/dist/fonts/finder-icons.ttf?7648j3") format("truetype"), url("${path}/resources/resources3f/dist/fonts/finder-icons.woff?7648j3") format("woff"), url("${path}/resources/resources3f/dist/fonts/finder-icons.svg?7648j3#finder-icons") format("svg");
    font-weight: normal;
    font-style: normal;
    font-display: block;
}

[class^=fi-],
[class*=" fi-"] {
    display: inline-block;
    /* use !important to prevent issues with browser extensions that change fonts */
    font-family: "finder-icons" !important;
    font-style: normal;
    font-weight: normal;
    font-variant: normal;
    text-transform: none;
    vertical-align: middle;
    line-height: 1;
}

.fi-edit:before {
    content: "\e96e";
}
</style>

<head>
    <title>FinTouch | My Page | Personal Info</title>
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
                            <h3 class="mb-2 mb-sm-0"><i class="fa fa-solid fa-user"></i>&nbsp;Personal Info</h3>
                        </div>
                    </div>
                    <div class="col-4 mb-0">
                        <aside class="pe-xl-4 mb-5">
                            <!-- 왼쪽 사이드바 -->
                            <div class="card border card-body shadow-sm pb-1 me-lg-1">
                                <div class="d-flex d-md-block d-lg-flex align-items-start pt-lg-2 mb-2"><img class="" src="${path}/resources/resources1b/images/avatar_w2.png" width="48" alt="Annette Black">
                                    <div class="pt-md-2 pt-lg-0 ps-3 ps-md-0 ps-lg-3">
                                        <h2 class="fs-lg mb-0" style="margin-left: 10px;">${loginMember.user_nickname}</h2>
                                        <ul class="list-unstyled fs-sm mt-1 mb-0">
                                            <li>
                                                <i class="fi-mail opacity-60 me-2"></i>${loginMember.user_email}
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <a class="btn btn-outline-primary btn-lg w-100 mb-2 fw-bold" style="border-radius: 10px;" href="${path}/board/writePost">+ 게시글 작성하기</a>
                                <div class="collapse d-md-block mt-0 fw-bold" id="account-nav">
                                    <div class="card-nav">
                                        <a class="card-nav-link active" href="${path}/member/view"><i class="fa fa-solid fa-user" style="margin-right:10px; margin-left: 10px;"></i>회원정보</a>
                                        <a class="card-nav-link" href="${path}/mypage/finPro"><i class="fa fa-solid fa-piggy-bank" style="margin-right:10px; margin-left: 6px;"></i>내 금융상품</a>
                                        <a class="card-nav-link" href="${path}/MypageBoard/mylist"><i class="fa fa-solid fa-quote-left" style="margin-right:10px; margin-left: 10px;"></i>내 글 목록</a>
                                        <a class="card-nav-link" href="${path}/MypageBoard/myReply"><i class="fa fa-solid fa-comment-dots" style="margin-right:10px; margin-left: 10px;"></i>내 댓글 목록</a>
                                    </div>
                                </div>
                            </div>
                        </aside>
                    </div>
                    <!-- 회원정보수정 / 나중에 novalidate(유효성검사) 다 뗄 것 -->
                    <div class="col-8 mb-0">
                        <form class="needs-validation pb-4 mb-0" action="${path}/member/update" method="get" style="padding-bottom: 0px;" novalidate>
                            <!-- Blog list table START -->
                            <div class="border rounded-3 p-3 mb-2" id="personal-info">
                                <!-- ID -->
                                <div class="border-bottom pb-3 mb-3">
                                    <div class="d-flex align-items-center justify-content-between">
                                        <div class="pe-2">
                                            <label class="form-label fw-bold">ID</label>
                                            <div type="text" name="user_id"  value="${loginMember.user_id}">${loginMember.user_id}</div>
                                        </div>
                                    </div>
                                    <div class="collapse" id="name-collapse" data-bs-parent="#personal-info">
                                        <input class="form-control mt-3" type="text" data-bs-binded-element="#name-value" data-bs-unset-value="Not specified" name="user_id" value="${loginMember.user_id}">
                                    </div>
                                </div>
                                <!-- 닉네임 -->
                                <div class="border-bottom pb-3 mb-3">
                                    <div class="col-12 d-flex align-items-center justify-content-between">
                                        <div class="col-11 pe-2">
                                            <label class="form-label fw-bold">닉네임</label>
                                            <div id="nickname-value">${loginMember.user_nickname}</div>
                                        </div>
                                        <div class="col-1 me-n3" data-bs-toggle="tooltip" title="Edit">
                                            <a style="margin-left: 10px;" class="nav-link py-0" href="#nickname-collapse" data-bs-toggle="collapse">
                                                <i class="fa fa-solid fa-pen"></i></a>
                                        </div>
                                    </div>
                                    <div class="collapse" id="nickname-collapse" data-bs-parent="#personal-info">
                                        <input class="form-control mt-3" type="text" data-bs-binded-element="#nickname-value" data-bs-unset-value="Not specified" name="user_nickname" value="${loginMember.user_nickname}">
                                    </div>
                                </div>
                                <!-- Email -->
                                <div class="border-bottom pb-3 mb-3">
                                    <div class="col-12 d-flex align-items-center justify-content-between">
                                        <div class="col-11 pe-2">
                                            <label class="form-label fw-bold">Email</label><a href="">&nbsp;&nbsp;&nbsp;이메일 인증을 해주세요.</a>
                                            <div id="email-value">${loginMember.user_email}</div>
                                        </div>
                                        <div class="col-1 me-n3" data-bs-toggle="tooltip" title="Edit">
                                            <a style="margin-left: 10px;" class="nav-link py-0" href="#email-collapse" data-bs-toggle="collapse">
                                                <i class="fa fa-solid fa-pen"></i></a>
                                        </div>
                                    </div>
                                    <div class="collapse" id="email-collapse" data-bs-parent="#personal-info">
                                        <input class="form-control mt-3" type="email" data-bs-binded-element="#email-value" data-bs-unset-value="Not specified" name="user_email" value="${loginMember.user_email}">
                                    </div>
                                </div>
                                <!-- 현재 비밀번호 -->
                                <div class="border-bottom d-flex align-items-center justify-content-between">
                                    <div class="col-12 mb-3">
                                        <label class="form-label fw-bold"  for="account-password">현재 비밀번호</label><a class="d-inline-block mb-2" href="#">&nbsp;&nbsp;&nbsp;비밀번호를 잊었어요.</a>
                                        <div class="password-toggle">
                                            <input class="form-control" type="password"  id="account-password" required>
                                            <label class="password-toggle-btn" aria-label="Show/hide password">
                                                <input class="password-toggle-check" type="checkbox">
                                                <span class="password-toggle-indicator"></span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <!-- 변경할 비밀번호 -->
                                <div class="border-bottom d-flex align-items-center justify-content-between">
                                    <div class="col-12 mb-3 mt-3">
                                        <label class="form-label fw-bold" for="account-password-new">변경할 비밀번호</label>
                                        <div class="password-toggle">
                                            <input class="form-control" type="password" name="user_password" id="account-password-new" required>
                                            <label class="password-toggle-btn" aria-label="Show/hide password">
                                                <input class="password-toggle-check" type="checkbox">
                                                <span class="password-toggle-indicator"></span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <!-- 비밀번호 확인 -->
                                <div class="d-flex align-items-center justify-content-between">
                                    <div class="col-12 mb-4 mt-3">
                                        <label class="form-label fw-bold" for="account-password-confirm">비밀번호 확인</label>
                                        <div class="password-toggle">
                                            <input class="form-control" type="password" id="account-password-confirm" required>
                                            <label class="password-toggle-btn" aria-label="Show/hide password">
                                                <input class="password-toggle-check" type="checkbox">
                                                <span class="password-toggle-indicator"></span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-outline-primary mb-0">회원정보 변경</button>
                            </div>
                        </form>
                        <!-- Blog list table END -->
                        <!-- 회원탈퇴 -->
                        <div>
                            <div class="col-12 d-sm-flex justify-content-between align-items-center">
                                <div class="col-8 mb-1" style="margin-left:20px;">
                                    <h3 class="mb-2 mb-sm-0"><i class="fa fa-solid fa-user-slash"></i>&nbsp;Resign</h3>
                                </div>
                            </div>
                            <div class="col-12 mb-0" style="float: right;">
                                <form class="needs-validation pb-4 mb-0" action="${path}/member/delete" method="get" style="padding-bottom: 0px;" novalidate>
                                    <!-- Blog list table START -->
                                    <div class="border rounded-3 p-3 mb-2" id="personal-info">
                                        <!-- 비밀번호 확인 -->
                                        <div class="d-flex align-items-center justify-content-between">
                                            <div class="col-12 mb-4 mt-3">
                                                <label class="form-label fw-bold" for="account-password-confirm">비밀번호 확인</label>
                                                <div class="password-toggle">
                                                    <input class="form-control" type="password" name="user_password" id="account-password-confirm" required>
                                                    <label class="password-toggle-btn" aria-label="Show/hide password">
                                                        <input class="password-toggle-check" type="checkbox">
                                                        <span class="password-toggle-indicator"></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-outline-primary mb-0">회원탈퇴</button>
                                    </div>
                                </form>
                            </div>
                            <!-- 회원탈퇴 끝 -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
   	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>

</html>