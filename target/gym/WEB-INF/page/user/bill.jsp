<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
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
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav">
					    <li><a href="/userIndex">首页</a></li>
						<li><a href="site?search">场地</a></li>
						<li><a href="bill?show">账单</a></li>
					</ul>
					<div class="navbar-form navbar-right">
					    欢迎您：
					    <a href="#"class="navbar-link">退出</a>
					</div>
				    </div>
				</div>
			</div>
	    </nav>
	    <div style="height: 60px;"></div>
	    <div class="container">
	    	<div>
	    		<h1 class="page-header"><strong>账单记录</strong></h1>
	    	</div>
	    	<div>
	    		<h4><strong>场地账单记录</strong></h4>
	    	</div>
	    	<div class="col-md-12">
	    		<div class="table-responsive">
	    			<table class="table">
	    				<thead>
                            <tr>
                                <th>场地类型</th>
                                <th>场地ID</th>
                                <th>日期</th>
                                <th>开始时间</th>
                                <th>结束时间</th>
                                <th>费用</th>
                            </tr>
                        </thead>
                        <tfoot>
                        	<tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </tfoot>
	    			</table>
	    		</div>
	    	</div>
	    	<div>
	    		
	    </div>
        <div style="height: 700px;"></div>
        <script src="../js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="../js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
	</body>
</html>
