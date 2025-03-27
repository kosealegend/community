 <jsp:include page="../../include/header.jsp"/>
 <%@ page contentType="text/html;charset=UTF-8" language="java" %> <%@ taglib
prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
	<c:forEach items="${list}" var="item">
	<tr>
	<td class="text-center">${item.userId}</td>
	<td class="text-center">${item.nickname}</td>
	<td class="text-center">${item.email}</td>
	<td class="text-center">${item.gender}</td>
	<td class="text-center">${item.phoneNumber}</td>
	<td class="text-center">${item.joinDate}</td>
	<td class="text-center">${item.role}</td>
	</tr>
	</c:forEach>
	</tbody>
</table>
</div>
</div>
</div>
</div>
</div>

<jsp:include page="../../include/footer.jsp"/> 