<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>커뮤니티 메인</title>
    <!-- 부트스트랩 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-4">
    <div class="row">
        <!-- 카테고리 반복 -->
        <c:forEach var="category" items="${categoryList}">
            <div class="col-md-6 mb-4">
                <div class="card h-100">
                    <div class="card-header bg-primary text-white">
                        ${category.categoryName} 채널
                    </div>
                    <ul class="list-group list-group-flush">
                        <%-- <c:forEach var="post" items="${category.posts}">
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                <a href="postDetail.jsp?id=${post.id}" class="text-decoration-none">
                                    ${post.title}
                                </a>
                                <span class="badge bg-secondary">${post.timeAgo}</span>
                            </li>
                        </c:forEach> --%>
                    </ul>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

<!-- 부트스트랩 JS (선택) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
