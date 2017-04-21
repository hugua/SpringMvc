<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>登录</title>

    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="../css/login.css" />
</head>

<body>
<br> <br> <br>
    <form id="defaultForm" >

        用户名: <input type="text" name="name" id="name" placeholder="请输入用户名"  /><br><br>
        密  码: <input type="password" name="password" id="password"  placeholder="请输入密码"  /><br><br>
        ${msg}<br>
        <button type="button"  id="signup" name="signup" >登 录</button><a href="/register">注册</a><br><br>
        <span id="msg"></span>
    </form>
</div>

<script src="../js/jquery.js"></script>
<script src="../js/login.js"></script>
</body>

</html>
