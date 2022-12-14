<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>    
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	헬로리방구리!!
</h1>



<h2><a href="${path}/main.do">리얼 찐 메인으로 드가자</a></h2>

<h2><a href="${path}/financialterm/insert.do">금융용어 DB INSERT</a></h2>

<h2><a href="${path}/stockprice/insert.do">주식시세 DB INSERT</a></h2>

<h2><a href="${path}/indexprice/insert1">코스피 지수시세 DB INSERT</a></h2>

<h2><a href="${path}/indexprice/insert2">코스닥 지수시세 DB INSERT</a></h2>

<h2><a href="${path}/ExchangeRate/insert.do">환율정보 DB INSERT</a></h2>

<h2><a href="${path}/fixdeposit/insert.do">금융감독원-정기예금API DB INSERT</a></h2>

<h2><a href="${path}/installmentSavings/insert.do">금융감독원-적금API DB INSERT</a></h2>

<h2><a href="${path}/leaseloan/insert.do">금융감독원-전세자금대출API DB INSERT</a></h2>

<h2><a href="${path}/mortgage/insert.do"> 주택담보대출 DB INSERT</a></h2>

<%-- <h2><a href="${path}/landterm/insert.do">부동산용어 DB INSERT</a></h2> --%>

<h2><a href="${path}/urbtyOfctlLttotPblancDetail/insert.do">청약 분양상세 : 도시형/오피스텔/민간임대 (UrbtyOfctlLttotPblancDetail)</a></h2>

<h2><a href="${path}/remndrLttotPblancDetail/insert.do">청약 분양상세 : APT 무순위/잔여세대 (RemndrLttotPblancDetail)</a></h2>

<!--  <h2><a href="${path}/UrbtyMdl/insert.do">청약 주택형별 : 오피스텔/도시형/민간임대 (UrbtyMdl)</a></h2>  -->

<!-- <h2><a href="${path}/RemndrMdl/insert.do">청약 주택형별 : APT 무순위/잔여세대 (RemndrMdl)</a></h2>  -->

<h2><a href="${path}/Aptdetail/insert.do">청약 - APT분양정보 상세 및 APT 분양정보 주택형별 상세 DB INSERT</a></h2>

<h2><a href="${path}/applyNotice/insert.do">청약 - 청약 공지사항 및 공지사항 상세(첨부파일) DB INSERT</a></h2>

<h2><a href="${path}/stockprice/fin_main.do"> 금융메인으로 갑니다</a></h2>

<h2><a href="${path}/mypage/signIn">로그인 페이지 가기</a></h2>

<h2><a href="${path}/finance/productMain">금융상품 페이지 가기</a></h2>

<h2><a href="${path}/realEstate/main">내집 마련 ***청약*** 메인 페이지</a></h2>

<h2><a href="${path}/politics/lawProposed/insert.do">국회의원별 대표발의법안 DB Insert</a></h2>

<h2><a href="${path}/politics/profileMna/insert.do">국회의원별 프로필 상세내용 DB Insert</a></h2>

<h2><a href="${path}/politics/cardCut/insert.do"> 카드한컷 DB INSERT</a></h2>

<h2><a href="${path}/news/insert.do"> News INSERT</a></h2>

<h2><a href="${path}/opinion/insertOpinion"> 오피니언 INSERT</a></h2>



<%-- <iframe id="ytplayer" type="text/html" width="720" height="405"
src="https://www.youtube.com/embed/qZVTkn2NjS0/default"
frameborder="0" allowfullscreen></iframe> --%> 

<br><br><br>

</body>
</html>
