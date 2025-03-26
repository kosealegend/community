<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <jsp:include page="../include/header.jsp"/> --%>

<div class="container-fluid bg-gradient-primary">
<div class="row">
<div class="col-md-12">
<div class="d-flex">
<div class="w-10">
<div class="mt-1"></div>
<jsp:include page="../include/lnb.jsp"/>
</div>
<div class="w-90">
	<h2 class="mt-5 mb-3 fw-bold">글 신고 관리</h2>
	<table class="table table-dark table-hover">
		<colgroup>
			<col width="10%"/>
			<col width="10%"/>
			<col width="30%"/>
			<col width="10%"/>
			<col width="10%"/>
			<col width="5%"/>
			<col width="20%"/>
		</colgroup>
		<thead>
			<tr class="text-center">
			<th>아이디</th><th>닉네임</th><th>이메일</th><th>성별</th><th>연락처</th><th>가입일</th><th>상태</th>
			</tr>
		</thead>
	</table>
</div>
</div>
</div>
</div>
</div>

<%-- <jsp:include page="../include/footer.jsp"/> --%>