<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<div class="mt-3">&nbsp;</div>
<ul class="list-group mt-5">

<li class="list-group-item">
	<a href="${contextPath}/admin/setting/reportMan" class="a-link text-decoration-none">
	유저관리
	</a>
</li>
<li class="list-group-item">
	<a href="${contextPath}/admin/setting/userMan" class="a-link text-decoration-none">
	신고관리
	</a>
</li>
</ul>
