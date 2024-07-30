<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>쇼핑몰 기본설정</title>
    <script src="../resources/js/jquery.js"></script>
    <link rel="stylesheet" type="text/css" href="../resources/css/basic.css">
    <link rel="stylesheet" type="text/css" href="../resources/css/login.css?v=1">
    <link rel="stylesheet" type="text/css" href="../resources/css/main.css">
    <link rel="stylesheet" type="text/css" href="../resources/css/subpage.css?v=5">
    <link rel="icon" href="../resources/img/logo.png" sizes="128x128">
    <link rel="icon" href="../resources/img/logo.png" sizes="64x64">
    <link rel="icon" href="../resources/img/logo.png" sizes="32x32">
    <link rel="icon" href="../resources/img/logo.png" sizes="16x16">
</head>
<body>
<%@ include file="../top.jsp" %>
<%@ include file="../Qmenu.jsp" %>
<form id="frm">
<main class="maincss">
<section>
    <p>홈페이지 가입환경 설정</p>
<div class="subpage_view">
	<c:forEach var="site" items="${siteinfo}">
    <ul class="info_form">
        <li>홈페이지 제목</li>
        <li>
            <input type="text" name="page_name" value="${site.page_name != null ? site.page_name : '' }" class="in_form1"> 
        </li>
    </ul>    
    <ul class="info_form">
        <li>관리자 메일 주소</li>
        <li>
            <input type="text" name="admin_email" value="${site.admin_email != null ? site.admin_email : '' }" class="in_form2"> ※ 관리자가 보내고 받는 용도로 사용하는 메일 주소를 입력합니다.(회원가입,인증메일,회원메일발송 등에서 사용)
        </li>
    </ul> 
    <ul class="info_form">
        <li>포인트 사용 유/무</li>
        <li class="checkcss">
            <em><label><input type="radio" name="point_use" value="사용" class="ckclass">포인트 사용</label></em> 
            <em><label><input type="radio" name="point_use" value="미사용" class="ckclass" checked>포인트 미사용</label></em>
        </li>
    </ul>
    <ul class="info_form2" style="border-bottom:1px solid rgb(81, 61, 61);">
        <li>회원가입시 적립금</li>
        <li>
            <input type="text" name="join_point" class="in_form3" maxlength="5"> 점
        </li>
        <li>회원가입시 권한레벨</li>
        <li>
            <input type="text" name="join_level" class="in_form3" maxlength="1"> 레벨
        </li>
    </ul>
    </c:forEach>
</div>
<p>홈페이지 기본환경 설정</p>
<div class="subpage_view">
	<c:forEach var="site" items="${siteinfo}">
    <ul class="info_form2">
        <li>회사명</li>
        <li>
            <input type="text" name="com_name" class="in_form0"> 
        </li>
        <li>사업자등록번호</li>
        <li>
            <input type="text" name="business_num" class="in_form0"> 
        </li>
    </ul> 
    <ul class="info_form2">
        <li>대표자명</li>
        <li>
            <input type="text" name="ceo_name" class="in_form0"> 
        </li>
        <li>대표전화번호</li>
        <li>
            <input type="text" name="ceo_tel" class="in_form0"> 
        </li>
    </ul>
    <ul class="info_form2">
        <li>통신판매업 신고번호</li>
        <li>
            <input type="text" name="mob_num" class="in_form0"> 
        </li>
        <li>부가통신 사업자번호</li>
        <li>
            <input type="text" name="vat_num" class="in_form0"> 
        </li>
    </ul>
    <ul class="info_form2">
        <li>사업장 우편번호</li>
        <li>
            <input type="text" name="com_post" class="in_form0"> 
        </li>
        <li>사업장 주소</li>
        <li>
            <input type="text" name="com_address" class="in_form2"> 
        </li>
    </ul>
    <ul class="info_form2" style="border-bottom:1px solid rgb(81, 61, 61);">
        <li>정보관리책임자명</li>
        <li>
            <input type="text" name="info_name" class="in_form0"> 
        </li>
        <li>정보책임자 E-mail</li>
        <li>
            <input type="text" name="info_email" class="in_form1"> 
        </li>
    </ul>
	</c:forEach>
</div>
<p>결제 기본환경 설정</p>
<div class="subpage_view">  
    <ul class="info_form2">
        <li>무통장 은행</li>
        <li>
            <input type="text" name="bank_name" class="in_form0"> 
        </li>
        <li>은행계좌번호</li>
        <li>
            <input type="text" name="account_number" class="in_form1"> 
        </li>
    </ul>
    <ul class="info_form">
        <li>신용카드 결제 사용</li>
        <li class="checkcss">
            <em><label><input type="radio" name="credit_card_use" value="사용" class="ckclass"> 사용</label></em> 
            <em><label><input type="radio" name="credit_card_use" value="미사용" class="ckclass" checked> 미사용</label></em> ※ 해당 PG사가 있을 경우 사용으로 변경합니다.
        </li>
    </ul>
    <ul class="info_form">
        <li>휴대폰 결제 사용</li>
        <li class="checkcss">
            <em><label><input type="radio" name="mobile_payment_use" value="사용" class="ckclass"> 사용</label></em> 
            <em><label><input type="radio" name="mobile_payment_use" value="미사용" class="ckclass" checked> 미사용</label></em> ※ 주문시 휴대폰 결제를 가능하게 할 것인지를 설정합니다.
        </li>
    </ul>
    <ul class="info_form">
        <li>도서상품권 결제사용</li>
        <li class="checkcss">
            <em><label><input type="radio" name="book_coupon_use" value="사용" class="ckclass"> 사용</label></em> 
            <em><label><input type="radio" name="book_coupon_use" value="미사용" class="ckclass" checked> 미사용</label></em> ※ 도서상품권 결제만 적용이 되며, 그 외에 상품권은 결제 되지 않습니다.
        </li>
    </ul>
    <ul class="info_form2">
        <li>결제 최소 포인트</li>
        <li>
            <input type="text" name="min_point" class="in_form0" maxlength="5" value="1000"> 점
        </li>
        <li>결제 최대 포인트</li>
        <li>
            <input type="text" name="max_point" class="in_form0" maxlength="5"> 점
        </li>
    </ul>
    <ul class="info_form">
        <li>현금 영수증 발급사용</li>
        <li class="checkcss">
            <em><label><input type="radio" name="cash_receipt_use" value="사용" class="ckclass"> 사용</label></em> 
            <em><label><input type="radio" name="cash_receipt_use" value="미사용" class="ckclass" checked> 미사용</label></em> ※ 현금영수증 관련 사항은 PG사 가입이 되었을 경우 사용가능 합니다.
        </li>
    </ul>
    <ul class="info_form2">
        <li>배송업체명</li>
        <li>
            <input type="text" name="delivery_company" class="in_form0"> 
             </li>
        <li>배송비 가격</li>
        <li>
            <input type="text" name="delivery_fee" class="in_form0" maxlength="7"> 원
        </li>
    </ul>
    <ul class="info_form" style="border-bottom:1px solid rgb(81, 61, 61);">
        <li>희망배송일</li>
        <li class="checkcss">
            <em><label><input type="radio" name="preferred_delivery_date" value="사용" class="ckclass"> 사용</label></em> 
            <em><label><input type="radio" name="preferred_delivery_date" value="미사용" class="ckclass" checked> 미사용</label></em> ※ 희망배송일 사용시 사용자가 직접 설정 할 수 있습니다.
        </li>
    </ul>
</div>
<div class="btn_div">
    <button type="button" class="sub_btn1" title="설정 저장">설정 저장</button>
    <button type="button" class="sub_btn2" title="저장 취소">저장 취소</button>
</div>
</section>
<section></section>
<section></section>
</main>
</form>
<footer class="main_copyright">
    <div>
        Copyright ⓒ 2024 shopbag All rights reserved.
    </div>
</footer>
</body>
<script src="../resources/js/admin_siteinfo.js?v=<%= System.currentTimeMillis() %>"></script>
</html>