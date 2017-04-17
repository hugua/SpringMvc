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
						<li class="active"><a href="site?search">场地</a></li>
						<li><a href="bill?show">账单</a></li>
					</ul>
					<div class="navbar-form navbar-right">
					    欢迎您：
					    <a href="#"class="navbar-link">退出</a>
					</div>
				    </div>
				</div>

	    </nav>
	    <div style="height: 60px;"></div>
        <div class="container">
          <form class="form-horizontal" action="/site?searchsite" method="POST">
        	<div>
        	 	<h1 class="page-header"><strong>查询场地</strong></h1>
        	</div>

        	 	<div class="form-group">
        	 		<label class="control-label col-md-2">选择场地类型：</label>
                    <div class="col-md-8">
                        <select id="select1" type="text" class="form-control select2" placeholder="篮球">
                        <option>羽毛球场</option>
                        </select>
                    </div>
        	 	</div>


        		<div class="form-group">
        			<label class="control-label col-md-2">日期：</label>
              <div class="col-md-8">
                    <input id="date" type="date" class="form-control" name="date" value="2016-01-01" />
        		</div>
            </div>
						<div class="form-group">
        	 		<label class="control-label col-md-2">期望租借时间：</label>
                    <div class="col-md-8">
                        <select id="select2" type="text" class="form-control select2" placeholder="篮球" name="time">
                         <option>8:00--9:00</option>
                        <option>9:00--10:00</option>
                        <option>10:00--11:00</option>
                        <option>11:00--12:00</option>
                        <option>12:00--13:00</option>
                        <option>13:00--14:00</option>
                        <option>14:00--15:00</option>
                        <option>15:00--16:00</option>
                        <option>16:00--17:00</option>
                        <option>17:00--18:00</option>
                        </select>
                    </div>
									</div>



                    <div class="form-group">
          						<div class="col-sm-2 col-sm-offset-9">
          							<button id="search" type="submit" class="btn btn-primary" name="signup" value="Sign up">查询</button>
          						</div>
											</div>
                    </form>





	    <div style="height: 700px;"></div>
	    <script src="../js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="../js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>

	</body>
</html>
