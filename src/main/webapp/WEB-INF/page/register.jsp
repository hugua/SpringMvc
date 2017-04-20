<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>注册</title>

</head>

<body>


    <!--<div class="smoke">
        <canvas id="smokeCanvas"></canvas>
    </div>-->
    <br><br><br>
    <form id="defaultForm" method="post" action="/register">
        用户名: <input type="text" name="name" id="username"  placeholder="请输入用户名"  /><br><br>
        密 码: <input type="password" name="password" id="password" placeholder="请输入密码"  /><br><br>
        生 日: <input type="text" name="birthday" id="birthday"  placeholder="请输入生日"  /><br><br>
        <button type="submit"  name="register" value="register">注册</button>
    </form>
</div>


</body>

</html>
