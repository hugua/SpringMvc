<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>体育馆登录</title>

    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css/signin.css" />

</head>

<body>
<div>
    <img src="img/bg.jpg" class="img-responsive"/>
</div>
<div class="container">


    <!--<div class="smoke">
        <canvas id="smokeCanvas"></canvas>
    </div>-->

    <form id="defaultForm" method="post" class="form-horizontal col-md-offset-8" action="register">
        <h1 class="page-header"><span class="glyphicon glyphicon-user"></span> 用户登录</h1>
        <div class="form-group has-feedback">
            <label class="col-sm-4 control-label">用户名:</label>
            <div class="col-sm-8">
                <input type="text" name="username" id="username" class="form-control" placeholder="请输入用户名" required="required" />
            </div>
        </div>
        <div class="form-group has-feedback">
            <label class="col-sm-4 control-label">密码:</label>
            <div class="col-sm-8">
                <input type="password" name="password" id="password" class="form-control" placeholder="请输入密码" required="required" />
            </div>
        </div>
        <div class="form-group has-feedback">
            <label class="col-sm-4 control-label">确认密码:</label>
            <div class="col-sm-8">
                <input type="password" name="password2" id="password" class="form-control" placeholder="请输入密码" required="required" />
            </div>
        </div>
        <div class="form-group has-feedback">
            <label class="col-sm-4 control-label">学号:</label>
            <div class="col-sm-8">
                <input type="text" name="cardnum" id="password" class="form-control" placeholder="请输入学号" required="required" />
            </div>
        </div>
        <div class="form-group has-feedback">
            <label class="col-sm-4 control-label">学院:</label>
            <div class="col-sm-8">
                <select type="text" class="form-control select2" placeholder="" name="academy">
                    <option selected="selected">信息学院</option>
                    <option>航海学院</option>
                </select>
            </div>
        </div>
        <div class="form-group has-feedback">
            <label class="col-sm-4 control-label">系:</label>
            <div class="col-sm-8">
                <select type="text" class="form-control select2" placeholder="" name="series">
                    <option selected="selected">软件</option>
                    <option>通信</option>
                </select>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-2 col-sm-offset-3">
                <button type="submit" class="btn btn-primary" name="register" value="register">注册</button>
            </div>

        </div>
    </form>
</div>

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/register.js"></script>

</body>

</html>
