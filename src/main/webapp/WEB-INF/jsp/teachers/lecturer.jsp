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
    <title>讲师-东北林业大学软件工程专业</title>
    <link rel="stylesheet" href="../../../resources/css/overall-style.css">
    <link rel="stylesheet" href="../../../resources/css/teachers-layout.css">
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
            <div class="teacher-list">
                <ul>
                    <li>
                        <a href="/wangbo" target="_blank">
                            <div class="pic">
                                <img src="../../../resources/images/wangbo.jpg" alt="王波">
                            </div>
                            <div class="teacher-title">
                                <h4>王波</h4>
                                <p>王波，讲师，硕士。主要研究方向：软件开发...</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="/liyan" target="_blank">
                            <div class="pic">
                                <img src="../../../resources/images/liyan.jpg" alt="李琰">
                            </div>
                            <div class="teacher-title">
                                <h4>李琰</h4>
                                <p>李琰，讲师，主要研究方向：软件工程，遥感和林业信息...</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="/shanying" target="_blank">
                            <div class="pic">
                                <img src="../../../resources/images/shanying.png" alt="单颖">
                            </div>
                            <div class="teacher-title">
                                <h4>单颖</h4>
                                <p>单颖，博士，讲师，主要研究方向：软件工程，林业信息...</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="/bianjilong" target="_blank">
                            <div class="pic">
                                <img src="../../../resources/images/bianjilong.jpg" alt="边继龙">
                            </div>
                            <div class="teacher-title">
                                <h4>边继龙</h4>
                                <p>边继龙，博士，讲师。主要研究方向：立体匹配、矢量地图压缩...</p>
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