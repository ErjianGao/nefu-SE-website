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
    <title>罗嗣卿-副教授</title>
    <style rel="stylesheet" ></style>
    <link rel="stylesheet" href="../../../resources/css/overall-style.css">
    <link rel="stylesheet" href="../../../resources/css/teachers-layout.css">
    <link rel="stylesheet" href="../../../resources/css/teacher-introduction.css">
    <style>
        .associate-professor {
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
                    <img src="../../../resources/images/luosiqing.png" alt="罗嗣卿">
                    <div class="brief-info">
                        <h2 class="name">
                            罗嗣卿
                        </h2>
                        <div>
                            <p>职称：副教授</p>
                            <p>所在学科：软件工程 软件工程（专业学位）</p>
                            <p>研究领域：信息系统析与设计、图像处理、软件服务与应用</p>
                            <p>联系方式：luosq@nefu.edu.cn</p>
                        </div>
                    </div>
                </div>
                <div class="more-info">
                    <p>
                        罗嗣卿，硕士，副教授，硕士生导师。主要研究方向：信息系统析与设计、图像处理、软件服务与应用。主持和参加省攻关重点、省自然基金、国家林业公益性行业专项、省教改项目15项，发表论文20余篇，教材3部。
                    </p>
                </div>
            </article>
        </div>
    </div>
    <%@include file="/WEB-INF/jsp/common/footer.jsp"%>
</div>
</body>
</html>