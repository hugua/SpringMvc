<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../css/carousel.css"/>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css"/>

</head>
<body>
<div>
    <img src="../img/PT1.jpg" class="img-responsive"/>
</div>
<nav class="nav navbar-default navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a href=""class="col-sm-2"><img src="../img/DH2.png"/></a>
            <button class="navbar-toggle" data-toggle ="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="/manIndex">首页</a></li>
                <li>
                    <a href="site_info.jsp"class="dropdown-toggle" data-toggle="dropdown">场地</a>
                    <ul class="dropdown-menu">
                        <li><a href="site?info">场地列表</a></li>
                        <li><a href="site?add">增加场地</a></li>
                        <li><a href="site?change">修改场地</a></li>
                    </ul>
                </li>

            </ul>
            <div class="navbar-form navbar-right">
                欢迎您：
                ${sessionScope.username}
            </div>
        </div>
    </div>

</nav>
<div style="height: 50px;"></div>

<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
        <div class="col-lg-4">
            <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140">
            <h2>最近通知</h2>
            <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
        </div><!-- /.col-lg-4 -->

    </div><!-- /.row -->
</div>
<script src="../js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
