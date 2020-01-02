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
    <title>刘丹-副教授</title>
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
                    <img src="../../../resources/images/liudan1.jpg" alt="刘丹">
                    <div class="brief-info">
                        <h2 class="name">
                            刘丹
                        </h2>
                        <div>
                            <p>职称：副教授</p>
                            <p>所在学科：软件工程 软件工程（专业学位）</p>
                            <p>研究领域：无线传感器网络相关技术、数据仓库，数据挖掘</p>
                        </div>
                    </div>
                </div>
                <div class="more-info">
                    <p>
                        刘丹，副教授，工学博士，硕士生导师，软件工程专业副主任。主要研究方向：无线传感器网络相关技术、数据仓库，数据挖掘。主持或参与科技部支撑计划项目、省自然科学基金项目、省科技攻关项目、哈尔滨科技局项目、中央高校基本可言业务C类项目等科研、教学项目20余项，出版教材7部，发表论文10余篇，其中EI收录论文7篇。获黑龙江省科技进步三等奖1项，省级奖励2项。授权发明专利、实用新型专利、软件著作权10余项。
                    </p>
                </div>
            </article>
        </div>
    </div>
    <%@include file="/WEB-INF/jsp/common/footer.jsp"%>
</div>
</body>
</html>