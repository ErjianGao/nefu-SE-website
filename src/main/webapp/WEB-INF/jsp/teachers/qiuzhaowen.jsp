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
    <title>邱兆文-副教授</title>
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
                    <img src="../../../resources/images/qiuzhaowen1.jpg" alt="邱兆文">
                    <div class="brief-info">
                        <h2 class="name">
                            邱兆文
                        </h2>
                        <div>
                            <p>职称：副教授</p>
                            <p>所在学科：计算机应用技术，计算机技术（专业学位）</p>
                            <p>研究领域：信息检索、机器学习、医学影像三维可视化等</p>
                            <p>联系方式：qiuzw@nefu.edu.cn</p>
                        </div>
                    </div>
                </div>
                <div class="more-info">
                    <p>
                        邱兆文，博士，副教授，硕士生导师。美国卡内基梅隆大学访问学者。东北林业大学三维数字化技术研究所所长。黑龙江省医学影像三维可视化与3D打印工程技术中心主任。CCF杰出会员，CCF理事，CCF计算机应用专委委员。主要研究方向为信息检索、机器学习、医学影像三维可视化等。主持参加国家自然科学基金、科技部中央引导地方重大专项基金、国家发改委产业化基金等18项。国家发明专利4项。在国内外核心期刊发表学术论文30篇。主编专著1部。获省科技进步三等奖 2项，第五届中国创新创业大赛互联网及移动互联网行业企业组第三名 。2018年入选科技部创新人才推进计划，2019年入选万人计划领军人才。2019年获黑龙江省十大杰出创业青年。
                    </p>
                </div>
            </article>
        </div>
    </div>
    <%@include file="/WEB-INF/jsp/common/footer.jsp"%>
</div>
</body>
</html>