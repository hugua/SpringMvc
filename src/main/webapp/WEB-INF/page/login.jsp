<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>登录</title>

    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />

</head>

<body>
<br> <br> <br>
    <form id="defaultForm" method="post"  action="/login">

        用户名: <input type="text" name="name" id="username" placeholder="请输入用户名"  /><br><br>
        密  码: <input type="password" name="password" id="password"  placeholder="请输入密码"  /><br><br>
        ${msg}<br>
        <button type="submit"  name="signup" value="Sign up">登 录</button><a href="/register">注册</a>
    </form>
</div>

<script src="../js/jquery.min.js"></script>

</body>

</html>
