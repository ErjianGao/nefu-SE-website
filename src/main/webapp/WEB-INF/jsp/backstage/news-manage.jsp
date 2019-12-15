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
    <title>新闻管理</title>
    <link rel="stylesheet" href="../../../resources/css/overall-style.css">
    <style>
        .news-manage {
            position: relative;
            border-left: 6px solid #00785a;
            left: -6px;
            font-weight: bolder;
            color: #009e78 !important;
        }

        article {
            margin-right: 0;
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
            margin-top: 30px;
            border-collapse: collapse;
        }

        th {
            padding: 5px;
        }

        td {
            min-width: 50px;
        }

        tr {
            min-height: 40px;
            border-bottom: 1.2px solid #cccccc;
        }

        tbody tr:hover {
            background-color: #e8e8e8;
            cursor: pointer;
        }

        tbody td.operation {
            display: flex;
            flex-direction: row;
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

        tbody td.operation a {
            width: 90px;
            height: 50px;
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
                <div>
                    <button><a href="/add-news">添加新闻</a></button>
                </div>
                <table>
                    <thead>
                    <tr>
                        <th>ID号</th>
                        <th>标题</th>
                        <th>作者</th>
                        <th>插入时间</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${newsList}" var="news" varStatus="index">
                            <tr>
                                <td onclick="window.open('/news-detail?news-id=${news.id}');">${news.id}</td>
                                <td onclick="window.open('/news-detail?news-id=${news.id}');">${news.title}</td>
                                <td onclick="window.open('/news-detail?news-id=${news.id}');">${news.author}</td>
                                <td onclick="window.open('/news-detail?news-id=${news.id}');"><fmt:formatDate value="${news.insertTime}" pattern="yyyy-MM-dd HH:mm"/></td>

                                <td class="operation">
                                    <button type="button"><a href="/update-news?news-id=${news.id}">修改</a></button>
                                    <button type="button"><a class="delete" href="/delete-news?news-id=${news.id}">删除</a></button>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </article>
        </div>
    </div>
    <%@include file="/WEB-INF/jsp/common/footer.jsp"%>
</div>
</body>
</html>