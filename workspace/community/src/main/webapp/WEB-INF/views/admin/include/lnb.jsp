<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>   -->
<div class="mt-3">&nbsp;</div>
<ul class="list-group mt-5">

<li class="">
	<a href="${contextPath}/admin/setting/userMan" class="btn btn-outline-primary">
	유저관리
	</a>
	<div class="btn-group dropend d-block">
  <button type="button" class="btn btn-outline-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
    신고관리
  </button>
  <ul class="dropdown-menu">
    <li class="list-group-item">
	<a href="${contextPath}/admin/setting/reportMan" class="a-link text-decoration-none">
	글
	</a>
	</li>
	<li class="list-group-item">
	<a href="${contextPath}/admin/setting/reportReMan" class="a-link text-decoration-none">
	댓글
	</a>
	</li>
  </ul>
</div>
</li>

</ul>
