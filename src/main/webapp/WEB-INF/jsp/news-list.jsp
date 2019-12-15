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
    <title>新闻中心</title>
    <style rel="stylesheet" ></style>
    <link rel="stylesheet" href="../../resources/css/overall-style.css">
    <style>
        .news-list {
            position: relative;
            border-left: 6px solid #00785a;
            left: -6px;
            font-weight: bolder;
            color: #009e78 !important;
        }

        article {
            margin-top: 20px;
        }

        article h2 {
            text-align: left;
        }

        article .title-container {
            border-bottom: 1.4px solid #00c292;
        }

        .news-list-content li {
            list-style-type: square;
            color: #009e78;
            margin-left: 15px;
        }

        .news-list-content li p {
            font-size: 18px;
            margin: 10px 0;
        }


        .news-list-content li a {
            text-decoration: none;
            display: flex;
            justify-content: space-between;
        }

        .news-list-content li:hover p {
            color: #00785a;
        }

    </style>
</head>
<body>
<div class="container">
    <%@include file="/WEB-INF/jsp/common/header.jsp"%>
    <div class="content">
        <div class="subpage">
            <%@include file="/WEB-INF/jsp/common/news-sidebar.jsp"%>
            <article>
                <div class="title-container">
                    <h2>新闻动态</h2>
                </div>

                <div class="news-list-content">
                    <ul>
                        <c:forEach items="${newsList}" var="news" varStatus="index">
                            <c:if test="${index.count < 6}">
                                <li>
                                    <a href="/news-info?news-id=${news.id}">
                                        <p>${news.title}</p>
                                        <p><fmt:formatDate value="${news.insertTime}" pattern="yyyy-MM-dd"/></p>
                                    </a>
                                </li>
                            </c:if>
                        </c:forEach>
                    </ul>
                </div>
            </article>
        </div>
    </div>
    <%@include file="/WEB-INF/jsp/common/footer.jsp"%>
</div>
</body>
</html>