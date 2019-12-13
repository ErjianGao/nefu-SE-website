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
    <title>副教授-东北林业大学软件工程专业</title>
    <link rel="stylesheet" href="../../resources/css/overall-style.css">
    <link rel="stylesheet" href="../../resources/css/teachers-layout.css">
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
            <div class="teacher-list">
                <ul>
                    <li>
                        <a href="/lili" target="_blank">
                            <div class="pic">
                                <img src="../../resources/images/lili.jpg" alt="李莉">
                            </div>
                            <div class="teacher-title">
                                <h4>李莉</h4>
                                <p>李莉，博士，副教授，软件工程专业主任，专业教工党支部书记，硕士生导师...</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="/luosiqing" target="_blank">
                            <div class="pic">
                                <img src="../../resources/images/luosiqing.png" alt="罗嗣卿">
                            </div>
                            <div class="teacher-title">
                                <h4>罗嗣卿</h4>
                                <p>罗嗣卿，硕士，副教授，硕士生导师...</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="/liudan" target="_blank">
                            <div class="pic">
                                <img src="../../resources/images/liudan.jpg" alt="刘丹">
                            </div>
                            <div class="teacher-title">
                                <h4>刘丹</h4>
                                <p>刘丹，副教授，工学博士，硕士生导师，软件工程专业副主任...</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="/zhangxiying" target="_blank">
                            <div class="pic">
                                <img src="../../resources/images/zhangxiying.jpg" alt="张锡英">
                            </div>
                            <div class="teacher-title">
                                <h4>张锡英</h4>
                                <p>张锡英， 副教授，硕士，硕士生导师...</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="/qiuzhaowen" target="_blank">
                            <div class="pic">
                                <img src="../../resources/images/qiuzhaowen.jpg" alt="邱兆文">
                            </div>
                            <div class="teacher-title">
                                <h4>邱兆文</h4>
                                <p>邱兆文，博士，副教授，硕士生导师。美国卡内基梅隆大学访问学者...</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="/zhaoyuming" target="_blank">
                            <div class="pic">
                                <img src="../../resources/images/zhaoyuming.jpg" alt="赵玉茗">
                            </div>
                            <div class="teacher-title">
                                <h4>赵玉茗</h4>
                                <p>赵玉茗，博士，副教授，硕士生导师，专业副主任...</p>
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