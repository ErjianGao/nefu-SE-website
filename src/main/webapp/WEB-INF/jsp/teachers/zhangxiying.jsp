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
    <title>张锡英-副教授</title>
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
                    <img src="../../../resources/images/zhangxiying1.jpg" alt="张锡英">
                    <div class="brief-info">
                        <h2 class="name">
                            张锡英
                        </h2>
                        <div>
                            <p>职称：副教授</p>
                            <p>所在学科：软件工程 软件工程（专业学位）</p>
                            <p>研究领域：现代信息技术及网络应用，数据库技术、图像检索</p>
                            <p>联系方式：zhangxy@nefu.edu.cn</p>
                        </div>
                    </div>
                </div>
                <div class="more-info">
                    <p>
                        张锡英， 副教授，硕士，硕士生导师。主要研究方向：现代信息技术及网络应用，数据库技术、图像检索。主持或参加科研项目 11 项，发表论文 9 篇，出版教材 2 部。获得省级科学技术进步奖1次， 2 门课精品课主讲教师。
                    </p>
                </div>
            </article>
        </div>
    </div>
    <%@include file="/WEB-INF/jsp/common/footer.jsp"%>
</div>
</body>
</html>