function login() {
    var userId = document.getElementById("userId").value;
    var password = document.getElementById("password").value;

    var xhr = new XMLHttpRequest();
    xhr.open("POST", "/auth/login", true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            if (xhr.responseText == "success") {
                alert("로그인 성공!");
                location.reload();
            } else {
                alert("아이디 또는 비밀번호가 올바르지 않습니다.");
            }
        }
    };
    xhr.send("userId=" + encodeURIComponent(userId) + "&password=" + encodeURIComponent(password));
}

