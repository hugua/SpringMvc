<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <title>注册</title>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="../css/register.css" />
</head>

<body>


    <!--<div class="smoke">
        <canvas id="smokeCanvas"></canvas>
    </div>-->
    <br><br><br>
    <form id="defaultForm" method="post" action="/register">
        用户名: <input type="text" name="name" id="name"  placeholder="请输入用户名"  /><br><br>
        密 码: <input type="password" name="password" id="password" placeholder="请输入密码"  /><br><br>
        生 日: <input type="text" name="birthday" id="birthday"  placeholder="请输入生日"  /><br><br>
        <button type="submit"  name="register" value="register">注册</button>
    </form>
</div>
    <script src="../js/jquery.js"></script>
    <script src="../js/register.js"></script>
</body>

</html>
