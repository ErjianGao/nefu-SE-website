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
    <title>单颖-讲师</title>
    <style rel="stylesheet" ></style>
    <link rel="stylesheet" href="../../../resources/css/overall-style.css">
    <link rel="stylesheet" href="../../../resources/css/teachers-layout.css">
    <link rel="stylesheet" href="../../../resources/css/teacher-introduction.css">
    <style>
        .lecturer {
            position: relative;
            border-left: 6px solid #00785a;
            left: -6px;
            font-weight: bolder;
            color: #009e78 !important;
        }
    </style>
</head>
<body>
<div class="container">
    <%@include file="/WEB-INF/jsp/common/header.jsp"%>
    <div class="content">
        <div class="subpage">
            <%@include file="/WEB-INF/jsp/common/teachers-sidebar.jsp"%>
            <article>
                <div class="person-info">
                    <img src="../../../resources/images/shanying1.png" alt="单颖">
                    <div class="brief-info">
                        <h2 class="name">
                            单颖
                        </h2>
                        <div>
                            <p>职称：讲师</p>
                            <p>所在学科：软件工程 软件工程（专业学位）</p>
                            <p>研究领域：软件工程，林业信息</p>
                        </div>
                    </div>
                </div>
                <div class="more-info">
                    <p>
                        单颖，博士，讲师，主要研究方向：软件工程，林业信息。参与科研项目多项，并发表相关论文。
                    </p>
                </div>
            </article>
        </div>
    </div>
    <%@include file="/WEB-INF/jsp/common/footer.jsp"%>
</div>
</body>
</html>