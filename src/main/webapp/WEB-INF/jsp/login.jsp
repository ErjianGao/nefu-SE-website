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
    <title>管理员登录</title>
</head>
<body>
<form action="/login" method="post">
    账号：
    <label>
        <input name="username" type="text">
    </label><br>
    密码：
    <label>
        <input name="pwd" type="password">
    </label><br>
    <button type="submit">登录</button>
    <button type="button"><a href="/index">返回</a></button>
</form>
</body>
</html>