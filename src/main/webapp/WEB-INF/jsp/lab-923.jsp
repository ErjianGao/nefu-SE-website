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
    <title>923创新实验室</title>
    <link rel="stylesheet" href="../../resources/css/overall-style.css">
    <style>
        .lab-923 {
            position: relative;
            border-left: 6px solid #00785a;
            left: -6px;
            font-weight: bolder;
            color: #009e78 !important;
        }

        article img {
            width: 80%;
        }
    </style>
</head>
<body>
<div class="container">
    <%@include file="/WEB-INF/jsp/common/header.jsp"%>
    <div class="content">
        <div class="subpage">
            <%@include file="/WEB-INF/jsp/common/lab-sidebar.jsp"%>
            <article>
                <h2>923 创新实验室</h2>
                <h3>实验室简介</h3>
                    <p>实验室名称：嵌入与普适计算实验室</p>
                    <p>实验室主任：杨天若</p>
                    <p>实验室主页：http://cpss.hust.edu.cn</p>
                    <p>团队研究方向：信息—物理—社会系统，大数据，张量计算，云计算，安全和隐私</p>
                <img src="../../resources/images/lab-923.jpg" alt="923">
                <h3>主要成果</h3>
                <p>并行实时调度理论及系统实现：团队在并行实时调度领域研究中，面向多核计算平台以及实时应用，在实时调度理论、任务划分算法、能效管理机制、操作系统实现等调度方法和实现技术等取得了阶段性的成果，在TOC、TPDS、TCAD、TECS、JSA、IPDPS、ICPP、DAC等期刊/会议上录用/发表了CCF A/B类论文十余篇。提出的调度方法在Linux操作系统内核上实现并以实际应用验证其有效性和实用性。</p>
            </article>

        </div>
    </div>
    <%@include file="/WEB-INF/jsp/common/footer.jsp"%>
</div>
</body>
</html>