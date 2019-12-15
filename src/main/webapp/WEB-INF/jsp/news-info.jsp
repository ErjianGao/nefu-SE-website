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
    <title>新闻详情</title>
    <link rel="stylesheet" href="../../resources/css/overall-style.css">
    <style>
        .news-list {
            position: relative;
            border-left: 6px solid #00785a;
            left: -6px;
            font-weight: bolder;
            color: #009e78 !important;
        }

        article h1 {
            text-align: center;
            font-size: 40px;
            color: #00785a;
            margin: 20px 20px 20px 20px;
        }

        article h2 {
            width: 100%;
            text-align: center;
            color: #009e78;
            font-size: 1.8em;
            font-weight: bold;
            margin-top: 20px;
            padding: 15px 0;
        }

        article h4 {
            text-align: center;
            color: #00c292;
            font-size: 25px;
        }

        .sub-title {
            display: flex;
            justify-content: center;
        }

        h4.author {
            display: inline-block;
            text-align: center;
        }

        h5.insert-time {
            float: right;
            margin-right: 40px;
            color: #00c292;
            font-size: 16px;
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
        }

        tr {
            height: 40px;
        }

        button {
            outline: none;
            margin-left: 20px;
            border: none;
        }

        button a {
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
            <%@include file="/WEB-INF/jsp/common/news-sidebar.jsp"%>
            <article>
                <button><a href="/news-list">返回</a></button>
                <h1>
                    ${news.title}
                </h1>
                <div class="sub-title">
                    <h4 class="author">
                        作者: ${news.author}
                    </h4>
                </div>
                <p>
                    ${news.content}
                </p>
                <h5 class="insert-time">
                    时间：<fmt:formatDate value="${news.insertTime}" pattern="yyyy-MM-dd HH:mm"/>
                </h5>
            </article>
        </div>
    </div>
    <%@include file="/WEB-INF/jsp/common/footer.jsp"%>
</div>
</body>
</html>