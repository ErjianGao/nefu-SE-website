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
    <meta name="description" content="particles.js is a lightweight JavaScript library for creating particles.">
    <meta name="author" content="Vincent Garreau"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" media="screen" href="../../resources/css/login.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/reset.css"/>
</head>
<body>

<div id="particles-js">
    <form action="/login" method="post">
        <div class="login">
            <div class="login-top">
                登录
            </div>
            <div class="login-center clearfix">
                <div class="login-center-img">
                    <img src="../../resources/images/name.png"/>
                </div>
                <div class="login-center-input">
                    <input type="text" name="username" value="" placeholder="请输入您的用户名" onfocus="this.placeholder=''"
                           onblur="this.placeholder='请输入您的用户名'"/>
                    <div class="login-center-input-text">用户名</div>
                </div>
            </div>
            <div class="login-center clearfix">
                <div class="login-center-img">
                    <img src="../../resources/images/password.png"/>
                </div>
                <div class="login-center-input">
                    <input type="password" name="pwd" value="" placeholder="请输入您的密码" onfocus="this.placeholder=''"
                           onblur="this.placeholder='请输入您的密码'"/>
                    <div class="login-center-input-text">密码</div>
                </div>
            </div>
            <button class="login-button" type="submit">
                登陆
            </button>
            <a href="/register">
                <button class="register-button" type="button">
                    前去注册
                </button>
            </a>
        </div>
    </form>
    <div class="sk-rotating-plane"></div>
</div>

<!-- scripts -->
<script src="../../resources/js/particles.min.js"></script>
<script src="../../resources/js/app.js"></script>
<script type="text/javascript">
    function hasClass(elem, cls) {
        cls = cls || '';
        if (cls.replace(/\s/g, '').length === 0) return false; //当cls没有参数时，返回false
        return new RegExp(' ' + cls + ' ').test(' ' + elem.className + ' ');
    }

    function addClass(ele, cls) {
        if (!hasClass(ele, cls)) {
            ele.className = ele.className === '' ? cls : ele.className + ' ' + cls;
        }
    }

    function removeClass(ele, cls) {
        if (hasClass(ele, cls)) {
            var newClass = ' ' + ele.className.replace(/[\t\r\n]/g, '') + ' ';
            while (newClass.indexOf(' ' + cls + ' ') >= 0) {
                newClass = newClass.replace(' ' + cls + ' ', ' ');
            }
            ele.className = newClass.replace(/^\s+|\s+$/g, '');
        }
    }

    document.querySelector(".login-button").onclick = function () {
        addClass(document.querySelector(".login"), "active");
        setTimeout(function () {
            addClass(document.querySelector(".sk-rotating-plane"), "active");
            document.querySelector(".login").style.display = "none"
        }, 800);
        setTimeout(function () {
            removeClass(document.querySelector(".login"), "active");
            removeClass(document.querySelector(".sk-rotating-plane"), "active");
            document.querySelector(".login").style.display = "block";
            alert("登录成功")
        }, 5000)
    }
</script>
</body>
</html>