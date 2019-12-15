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
        .lab-925 {
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
                <h2>925 移动开发实验室</h2>
                <h3>实验室简介</h3>
                    <p>实验室名称：智能与分布计算实验室</p>
                    <p>实验室主任：李瑞轩</p>
                    <p>实验室主页：http://idc.hust.edu.cn</p>
                    <p>团队研究方向：大数据管理与分析，大数据安全与隐私，分布式计算与云计算，数据挖掘与机器学习</p>
                <img src="../../resources/images/lab-925.jpg" alt="925">
                <h3>主要成果</h3>
                <p>适应复杂公网环境的安全传输系统(asVPN)研制与应用：该成果解决大量移动智能终端和大尺度卫星链路的网络信息传输易被窃听、篡改和假冒的问题。适应复杂的公网环境，可以切实保障网络中信息传输的机密性、完整性、实体真实性。该项成果到了国内领先、国际先进的技术水平。并和多家企业进行了技术合作，创造了超过1亿元的经济效益。并在汶川地震、舟曲泥石流灾害等恶劣环境中支持应急通信，得到了高度评价。201 1年该成果获得湖北省科技进步一等奖。</p>
            </article>
        </div>
    </div>
    <%@include file="/WEB-INF/jsp/common/footer.jsp"%>
</div>
</body>
</html>