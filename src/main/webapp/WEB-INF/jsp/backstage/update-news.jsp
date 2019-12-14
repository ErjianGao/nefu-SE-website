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
    <title>修改新闻</title>
    <link rel="stylesheet" href="../../../resources/css/overall-style.css">
    <style>
        .news-manage {
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
            padding: 15px 0;
            margin-top: 0;
        }

        thead th {
            text-align: center;
        }

        tbody td {
            text-align: center;
        }

        table {
            width: 100%;
            font-size: 18px;
            color: rgb(0, 112, 192);
            margin: 30px;
            border-collapse: collapse;
        }

        tr {
            height: 40px;
        }

        tbody td.operation:hover {
            cursor: default;
        }

        button {
            outline: none;
            border: none;
        }

        tbody button {
            margin: 5px 5px;
        }

        button a {
            display: block;
            text-decoration: none;
            background-color: #4CAF50;
            padding: 10px 20px;
            color: white;
            font-size: 18px;
            border-radius: 5px;
        }

        a.delete {
            background-color: #f44336;
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
                <h2>修改新闻</h2>
                <form action="/update-news?news-id=${news.id}" method="post">
                    <table>
                        <tr>
                            <td>标题</td>
                            <td><input type="text" name="title" value="${news.title}"></td>
                        </tr>
                        <tr>
                            <td>作者</td>
                            <td><input type="text" name="author" value="${news.author}"></td>
                        </tr>
                        <tr>
                            <td>内容</td>
                            <td><textarea name="content" cols="30" rows="10">${news.content}</textarea></td>
                        </tr>
                    </table>
                    <button type="submit"><a>提交</a></button>
                    <button type="button"><a href="/news-manage">返回</a></button>
                </form>
            </article>
        </div>
    </div>
    <%@include file="/WEB-INF/jsp/common/footer.jsp"%>
</div>
</body>
</html>