<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>管理员注册</title>
</head>
<body>
<form action="/register" method="post">
    账号：
    <label>
        <input name="username" type="text">
    </label><br>
    密码：
    <label>
        <input id="input" name="pwd" type="password">
    </label><br>
    再次输入：
    <label>
        <input id="input-again" name="pwd-again" type="password">
    </label><br>
    <a href="/register"><button id="register" type="submit" disabled>注册</button></a>
    <a href="/login"><button type="button">返回</button></a>
</form>
</body>
<script src="../../resources/js/jquery-3.4.1.min.js"></script>
<script>
    $(function () {
        let firstInput = $("#input");
        let nextInput = $("#input-again");
        nextInput.keyup(()=>{
            console.log(nextInput.val());
            if(nextInput.val() == firstInput.val()) {
                $("#register").prop("disabled", false)
            } else {
                $("#register").prop("disabled", true)
            }
        })
    })
</script>
</html>
