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
    <title>个人信息管理</title>
    <link rel="stylesheet" href="../../../resources/css/overall-style.css">
    <style>
        .person-manage {
            position: relative;
            border-left: 6px solid #00785a;
            left: -6px;
            font-weight: bolder;
            color: #009e78 !important;
        }

        article h2 {
            width: 100%;
            text-align: left;
            color: #009e78;
            font-size: 1.8em;
            font-weight: bold;
            margin-top: 20px;
            padding: 15px 0;
        }

        table {
            width: 50%;
            font-size: 18px;
            color: rgb(0, 112, 192);
            margin: 30px;
        }

        tr {
            height: 40px;
        }

        button {
            outline: none;
            margin-left: 20px;
            border: none;
        }

        input {
            outline: none;
            border: 1.6px solid #009e78;
            padding: 8px;
            border-radius: 8px;
        }

        button a {
            text-decoration: none;
            background-color: #4CAF50;
            padding: 10px 20px;
            color: white;
            font-size: 18px;
            border-radius: 5px;
        }

        button:hover {
            cursor: pointer;
        }
    </style>
</head>
<body>
<div class="container">
    <%@include file="/WEB-INF/jsp/backstage/backstage-header.jsp"%>
    <div class="content">
        <div class="subpage">
            <%@include file="/WEB-INF/jsp/common/manager-sidebar.jsp"%>
            <article>
                <h2>修改个人信息</h2>
                <form action="/update-person" method="post">
                    <table>
                        <tr>
                            <td>用户名</td>
                            <td><input type="text" name="newname" value="${manager.userName}"></td>
                        </tr>
                        <tr>
                            <td>新密码</td>
                            <td><input type="password" name="pwd" autocomplete="new-password"></td>
                        </tr>
                        <tr>
                            <td>请再次输入密码</td>
                            <td><input type="password" name="pwd-again" autocomplete="new-password"></td>
                        </tr>
                    </table>
                    <button type="submit"><a>提交</a></button>
                    <button><a href="/person-manage">返回</a></button>
                </form>
            </article>
        </div>
    </div>
    <%@include file="/WEB-INF/jsp/common/footer.jsp"%>
</div>
</body>
</html>