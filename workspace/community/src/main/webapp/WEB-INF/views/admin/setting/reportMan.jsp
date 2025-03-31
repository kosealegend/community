<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../../include/header.jsp"/>

<div class="container-fluid bg-gradient-primary">
<div class="row">
<div class="col-md-12">
<div class="d-flex">
<div class="w-10">
<div class="mt-1"></div>
<jsp:include page="../include/lnb.jsp"/>
</div>
<div class="w-90 mx-5 flex-fill">
	<h2 class="mt-5 mb-3 fw-bold">Report Manegement shit</h2>
	<table class="table table-dark table-hover text-center">
		<colgroup>
			<col width="15%"/>
			<col width="15%"/>
			<col width="20%"/>
			<col width="15%"/>
			<col width="15%"/>
			<col width="15%"/>
		</colgroup>
		<thead>
			<tr class="text-center">
			<th>신고ID</th><th>신고자ID</th><th>신고 글</th><th>카테고리</th><th>접수시간</th><th>신고유형</th>
			</tr>
		</thead>
			<tbody>
	<c:forEach items="${list}" var="item">
	<tr>
	<td class="text-center">${item.reportId}</td>
	<td class="text-center">${item.reporterId}</td>
	<td class="text-center">${item.postId}</td>
	<td class="text-center">${item.categoryId}</td>
	<td class="text-center">${item.reportedAt}</td>
	<td class="text-center">${item.reportCategoryId}</td>
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