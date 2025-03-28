<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="../../include/header.jsp"/>

<div class="container-fluid bg-gradient-primary">
<div class="row">
<div class="col-md-12">
<div class="d-flex">
<div class="w-25">
<div class="mt-1"></div>
<jsp:include page="../include/lnb.jsp"/>
</div>
<div class="w-75 p-5">
<h1 class="my-5">User View</h1>
<form role="form" method="post" autocomplete="off"><!-- jquery나 ajax일때는 method form 적지 말것 -->
<input type="hidden" name="n" value="${user.userId}"/>

<div class="input-group">
	<label class="form-label w-25 fw-bold">유저 아이디</label>
	<span class="w-75">${user.userId}</span>
</div>

<div class="input-group">
	<label class="form-label w-25 fw-bold">닉네임</label>
	<span class="w-75">${user.nickname}</span>
</div>

<div class="input-group">
	<label class="form-label w-25 fw-bold">이메일</label>
	<span class="w-75">${user.email}</span>
</div>

<div class="input-group">
	<label class="form-label w-25 fw-bold">성별</label>
	<span class="w-75">${user.gender}</span>
</div>

<div class="input-group">
	<label class="form-label w-25 fw-bold">전화번호</label>
	<span class="w-75">${user.phoneNumber}</span>
</div>

<div class="input-group">
	<label class="form-label w-25 fw-bold">가입일</label>
	<span class="w-75">${user.joinDate}</span>
</div>

<div class="input-group">
    <label class="form-label w-25 fw-bold">권한 및 제재</label>
    <span class="w-75">
        <c:choose>
            <c:when test="${user.role == 1}">일반유저</c:when>
            <c:when test="${user.role == 9}">관리자</c:when>
            <c:otherwise>알 수 없음</c:otherwise>
        </c:choose>
    </span>
</div>

<div class="d-flex justify-content-end my-5">
	<div class="btn-group">
		<button id="modify_Btn" class="btn btn-outline-warning btn-lg">수정</button>
		<button id="delete_Btn" class="btn btn-outline-warning btn-lg">삭제</button>
	</div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
var formObj = $("form[role='form']");
$("#modify_Btn").click(function(){
	formObj.attr("action","/admin/setting/userModify");
	formObj.attr("method","get")
	formObj.submit();
});
$("#delete_Btn").click(function(){
var con = confirm("정말로 삭제 하시겠습니까?")
if(con){
	formObj.attr("action","/admin/setting/Delete");
	formObj.submit();
}
});
</script>
</form>
<!-- 무리가 없는한 자바스크립트나 jquery는 linking으로 -->

</div>
</div>
</div>
</div>
</div>


<jsp:include page="../../include/footer.jsp"/>