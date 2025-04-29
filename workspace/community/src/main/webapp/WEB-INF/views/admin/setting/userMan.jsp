 <jsp:include page="../../include/header.jsp"/>
 <%@ page contentType="text/html;charset=UTF-8" language="java" %> <%@ taglib
prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
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
	
	<c:choose>
            <c:when test="${item.role == 0}">
	            <td class="text-center">
	            <a href="/admin/setting/userDetail?n=${item.userId}" class="text-white">
				${item.userId}
				</a>
				</td>
			</c:when>
            <c:when test="${item.role == 9}">
            	<td class="text-center">${item.userId}</td>
            </c:when>
            <c:otherwise>
            <td class="text-center">
	            <a href="/admin/setting/userDetail?n=${item.userId}" class="text-white">
				${item.userId}
				</a>
			</c:otherwise>
    </c:choose>
	
	</td>
	<td class="text-center">${item.nickname}</td>
	<td class="text-center">${item.email}</td>
	<td class="text-center">${item.gender}</td>
	<td class="text-center">${item.phoneNumber}</td>
	<td class="text-center">${item.joinDate}</td>
	<c:choose>
            <c:when test="${item.role == 0}"><td class="text-center">일반</td></c:when>
            <c:when test="${item.role == 9}"><td class="text-center">관리자</td></c:when>
            <c:otherwise>알 수 없음</c:otherwise>
    </c:choose>
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