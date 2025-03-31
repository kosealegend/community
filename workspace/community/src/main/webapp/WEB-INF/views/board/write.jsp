<%@ page contentType="text/html;charset=UTF-8" language="java" %> <%@ taglib
prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
  <head>
    <title>게시글 작성</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="${contextPath}/resources/css/board.css" />
	<!-- ckeditor -->
	<script src="https://cdn.ckeditor.com/4.16.2/standard/ckeditor.js"></script>

  </head>
  <body>
  
  	<jsp:include page="../include/header.jsp" />
  	
    <section class="board-container mt-4">
      <!-- Header -->
      <div class="mb-4">
        <h2 class="text-center">게시글 작성</h2>
      </div>

      <!-- Write Form -->
      <div class="write_wrap">
        <form
          method="post"
          action="${contextPath}/board/write"
          enctype="multipart/form-data"
        >
          <!-- 제목 입력 -->
          <div class="mb-4">
            <label for="title" class="form-label">제목</label>
            <input
              type="text"
              class="form-control"
              id="title"
              name="title"
              placeholder="제목을 입력하세요"
              required
            />
          </div>

          <!-- 에디터 -->
          <div class="mb-4">
            <label for="content" class="form-label">내용</label>
            <textarea
              name="content"
              id="content"
              rows="10"
              class="form-control"
            ></textarea>
            <script>
              CKEDITOR.replace('content');
            </script>
          </div>

          <!-- 버튼 -->
          <div class="d-flex justify-content-end gap-2">
            <a href="${contextPath}/board" class="btn btn-secondary">취소</a>
            <button type="submit" class="btn btn-primary">등록</button>
          </div>
        </form>
      </div>
    </section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
