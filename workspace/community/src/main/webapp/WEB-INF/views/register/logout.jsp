



<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>로그아웃</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <meta http-equiv="refresh" content="2;url=${pageContext.request.contextPath}/">
</head>
<body>
<jsp:include page="../include/header.jsp" flush="false"/>
    <div class="container mt-5 text-center">
        <h2>로그아웃 되었습니다.</h2>
        <p>2초 후 메인 페이지로 이동합니다...</p>
        <a href="${pageContext.request.contextPath}/" class="btn btn-primary">바로 이동</a>
    </div>
<jsp:include page="../include/footer.jsp" flush="false"/>
</body>
</html>