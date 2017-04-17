<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
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
					<<div class="navbar-form navbar-right">
					欢迎您：
					${sessionScope.username}
				</div>
				    </div>
				</div>
			
	    </nav>
	    <div style="height: 60px;"></div>
	    <div class="container">
        	<div>
        	 	<h1 class="page-header"><strong>新增场地</strong></h1>
        	</div>
	<form method="POST" action="/site?addsite">
        	<div class="col-md-12">
        		<div class="col-md-2 ">场地类型</div>
        		<input type="text" name="kind"/>
        	</div>
        	<div class="col-md-12">
        		<div class="col-md-2" >场地Id</div>
        		<input type="text" name="num"/>
        	</div>
        	<div class="col-md-12">
        		<div class="col-md-2" >场地租用费用/h</div>
        		<input type="text" name="price"/>
        	</div>
        	<div class="col-md-12">
        		<input type="submit"value="确定"/>
        	</div>
	</form>
	    </div>

	    <script src="../js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="../js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		</body>
</html>
