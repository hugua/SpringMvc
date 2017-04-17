<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="../css/index.css"/>
		<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css"/>
		
	</head>
	<body>
		<div>
			<img src="../img/PT4.jpg" class="img-responsive"/>
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
					    <li><a href="/manIndex">首页</a></li>
						<li class="active">
							<a href="site_info.jsp" class="dropdown-toggle" data-toggle="dropdown">场地</a>
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
	    <div style="height: 60px;"></div>
	    <div class="container">
        	<div>
        	 	<h1 class="page-header"><strong>场地信息表</strong></h1>
        	</div>
        	<div class="col-md-5">
        	 	<div class="form-group">
        	 		<label class="control-label col-md-4">选择场地类型</label>
                    <div class="col-md-8">
                        <select type="text" class="form-control select2" placeholder="篮球">
                        <option>羽毛球场</option>
                        </select>
                    </div>
        	 	</div>
        	</div>
        	<div class="col-md-5">
        		<div class="form-group">
        			<label class="control-label col-md-4">日期</label>
                    <input type="date" name="timer" value="2016-01-01" />
        		</div>
        	</div>
			<table width="100%" border="1" cellspacing="0">
				<tr>
					<th width="20%" height="40px">编号</th>
					<th width="40%" height="40px">费用(元/h)</th>
					<th width="20%" height="40px">类型</th>
				</tr>
				<c:forEach items="${siteinfo}" var="item">
					<tr>
						<td height="30px">${item.num}</td>
						<td height="30px">${item.price}</td>
						<td height="30px">${item.kind}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
        <script src="../js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="../js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
        </body>
</html>
