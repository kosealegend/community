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
<div class="w-90 mx-5 flex-fill">
	<h2 class="mt-5 mb-3 fw-bold">User Management</h2>
	<table class="table table-dark table-hover text-center">
		<colgroup>
			<col width="15%"/>
			<col width="15%"/>
			<col width="20%"/>
			<col width="10%"/>
			<col width="10%"/>
			<col width="15%"/>
			<col width="10%"/>
		</colgroup>
		<thead>
			<tr class="text-center">
			<th>아이디</th><th>닉네임</th><th>이메일</th><th>성별</th><th>연락처</th><th>가입일</th><th>상태</th>
			</tr>
		</thead>
		<tbody>
	<c:forEach items="${list}" var="list">
	<tr>
	<td class="text-center">${list.gdsNum}</td>
	<td><img src="${list.gdsThumbImg}" class="thumb img-thumbnail"/></td>
	<td>
	<a href="/admin/goods/view?n=${list.gdsNum}" class="text-white">
	<!-- 제목을 클릭할때 맞는 순번 상품순서로 view page-->
	${list.gdsName}<!-- 제목 -->
	</a>
	</td>
	<td class="text-center">${list.cateCode}</td>
	<td class="text-center">${list.gdsPrice}</td>
	<td class="text-center">${list.gdsStock}</td>
	<td class="text-center">${list.gdsDate}</td>
	</tr>
	</c:forEach>
	</tbody>
</table>
</div>
</div>
</div>
</div>
</div>

<%-- <jsp:include page="../include/footer.jsp"/> --%>