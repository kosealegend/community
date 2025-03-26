<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:include page="../include/header.jsp" flush="false"/>

<div class="container-fluid bg-gradient-primary2">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <div class="row">
                            <div class="col-lg-5 d-none"></div>
                            <div class="col-lg-7">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">회원가입</h1>
                                        <form method="post" class="was-validated">
                                            <div class="mb-4">
                                                <input type="text" placeholder="id" name="userId" class="form-control form-control-user" required="required"/>
                                            </div>
                                            <div class="mb-4">
                                                <input type="password" placeholder="pw" name="password" class="form-control form-control-user" required="required"/>
                                            </div>
                                            <div class="mb-4">
                                                <input type="password" placeholder="pwCh" name="passwordCheck" class="form-control form-control-user" required="required"/>
                                            </div>
                                            <div class="mb-4">
                                                <input type="text" placeholder="name" name="nickname" class="form-control form-control-user" required="required"/>
                                            </div>
                                            <div class="mb-4">
                                                <input type="text" placeholder="email" name="email" class="form-control form-control-user" required="required"/>
                                            </div>
                                            <div class="mb-4">
                                                <input type="text" placeholder="phonenumber" name="phoneNumber" class="form-control form-control-user" required="required"/>
                                            </div>
               
                                            <div class="mb-4">
                                                <div class="btn-group">
                                                    <label class="btn border-0 active">
                                                        <input type="radio" name="gender" value="남자" autocomplete="off" checked>남자
                                                    </label>
                                                    <label class="btn border-0">
                                                        <input type="radio" name="gender" value="여자" autocomplete="off">여자
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="my-3">
                                                <input type="submit" class="btn btn-primary btn-user btn-block" value="회원가입"/>
                                            </div>
                                            <p class="mb-3">
                                                <a href="https://kauth.kakao.com/oauth/authorize?client_id={REST_API_KEY}&redirect_uri={REDIRECT_URI}&response_type=code" class="btn btn-kakao btn-user btn-block">
                                                    <i class="fab fa-google fa-fw w-100">카카오톡으로 회원가입</i>
                                                </a>
                                            </p>
                                        </form>     
                                    </div>
                                </div>
                            </div>              
                        </div>              
                    </div>
                </div>
            </div>  
        </div>
    </div>
</div>

<jsp:include page="../include/footer.jsp" flush="false"/>