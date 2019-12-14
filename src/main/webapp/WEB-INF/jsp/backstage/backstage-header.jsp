<%@ page pageEncoding="UTF-8" %>
<style>
    * {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
    }

    .header {
        background-image: url("../../../resources/images/绿色页头.png");
        background-position: 50% 50%;
        background-size: cover;
        background-repeat: no-repeat;
    }

    .logo {
        padding: 25px 120px;
        background-color: rgba(0,0,0,0.2);
    }

    /*主导航*/
    .header .navwrapper .mainnav {
        display: flex;
        background-color: #00785a;
        font-size: 1.2rem;
        flex-direction: row;
        justify-content: left;
    }

    .header .mainnav {
        padding-left: 130px;
    }

    .dropdown.logout {
        margin-left: auto;
    }

    .dropdown.logout>a{
        width: 120px;
        text-align: center;
    }

    .dropdown>a{
        display: block;
        text-decoration: none;
        color: white;
        width: 155px;
        padding: 12px 25px;
        text-align: center;
    }

    .dropdown ul li a:hover {
        font-weight: bolder;
    }


    /*下拉菜单*/
    .dropdown {
        /*容器必须显式声明相对定位*/
        position: relative;
        /*由于block横向占据全行，所以使用inline-block*/
        display: inline-block;
    }

    .dropdown .dropdown-menu {
        /*基于下拉容器的绝对定位,可以覆盖在其他内容之上*/
        border-radius: 0;
        z-index: 1000;
        position: absolute;
        left: -1px;
        padding: 0;
        /*下拉内容不占据空间*/
        display: none;
    }

    .dropdown li {
        list-style-type: none;
    }

    .dropdown:hover > a{
        color: #009e78;
        background-color: rgb(255, 255, 255);
    }

    .dropdown:hover .dropdown-menu {
        box-shadow: 0 10px 10px #cccccc;
    }

    .dropdown-menu a {
        display: block;
        width: 155px;
        font-size: 17px;
        text-decoration: none;
        padding: 7px 15px;
        color: #009e78;
        background-color: white;
    }
</style>
<header class="header">
    <div class="navwrapper">
        <!--logo-->
        <div class="logo">
            <img src="../../resources/images/东北林业大学横向.png" alt="东北林业大学信息学院">
            <img class="solfware-img" src="../../resources/images/软件工程logo.PNG" alt="软件工程">
        </div>
        <!--导航-->
        <div class="nav">
            <!--主导航-->
            <div class="mainnav">
                <div class="dropdown">
                    <a href="/index">首页</a>
                </div>
                <div class="dropdown">
                    <a href="/major-introduction">专业介绍</a>
                </div>
                <div class="dropdown">
                    <a href="" target="_blank">新闻公告</a>
                </div>
                <div class="dropdown">
                    <a href="/professor" target="_blank">师资力量</a>
                    <ul class="dropdown-menu">
                        <li><a href="/professor">教授</a></li>
                        <li><a href="/associate-professor">副教授</a></li>
                        <li><a href="/lecturer">讲师</a></li>
                    </ul>
                </div>
                <div class="dropdown">
                    <a class="lab" href="" target="_blank">实验室</a>
                    <ul class="dropdown-menu">
                        <li><a href="">923 创新实验室</a></li>
                        <li><a href="">925 移动开发实验室</a></li>
                    </ul>
                </div>
                <div class="dropdown">
                    <a href="" target="_blank">就业指南</a>
                </div>
                <div class="dropdown">
                    <a href="/backstage" target="_blank">管理员入口</a>
                </div>
                <div class="dropdown logout">
                    <a href="/logout" target="_blank">退出</a>
                </div>
            </div>
        </div>
    </div>
</header>
<script src="../../resources/js/jquery-3.4.1.min.js"></script>
<script src="../../resources/js/dropdown.js"></script>
