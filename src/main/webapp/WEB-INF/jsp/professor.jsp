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
    <title>教授-东北林业大学软件工程专业</title>
    <style rel="stylesheet" ></style>
    <link rel="stylesheet" href="../../resources/css/overall-style.css">
    <link rel="stylesheet" href="../../resources/css/teachers-layout.css">
    <style>
        .professor {
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
            <div class="teacher-list">
                <ul>
                    <li>
                        <a href="/sujianmin" target="_blank" title="苏建民">
                            <div class="pic">
                                <img src="../../resources/images/sujianmin.jpg" alt="苏建民">
                            </div>
                            <div class="teacher-title">
                                <h4>苏建民</h4>
                                <p>苏健民，教授，硕士，硕士生导师，软件工程一级学科带头人...</p>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <%@include file="/WEB-INF/jsp/common/footer.jsp"%>
</div>
</body>
</html>