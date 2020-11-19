<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="po.AppointmentType" %>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>main</title>
	<style type="text/css">
		body{background: url("${pageContext.request.contextPath}/images/bg2.jpg")repeat-x left top;}
		.hold{width: 100%;height: 100%}
		.top{line-height:20px; height:20px;}
		.top_right{float: right;height: 20px;width: 100%}
		.quit{opacity:0.5;border-style: none;outline: #30368A;float: right;margin-right: 30px}
		.second{height: 80px;width: 100%}
		.second_left{width: 30%;height: 100%;float: left}
		.second_right{width: 70%;height: 100%;float: right}
		.new{float: right;margin-top: 5px;margin-right: 100px;border-radius:12px;font-size: 15px;
			height: 40px;width: 80px;color:black;
			border:none;outline: none
		}
		.new:hover{box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19)}
		.third{width: 100%;background-color: gray;height: 50px}
		.third_left{width: 50%;float: left;background-color: gray}
		.third_right{width: 50%;float: left;background-color: gray}
		#search1{float: right; outline-style: none;border-radius: 5px;border: 3px outset;height: 40px;width:50px;margin-top: 20px;margin-right: 50px}
		#search2{float: right; outline-style: none;border-radius: 5px;border: 2px;height: 40px;width:250px;margin-top: 15px;padding: 2px}
		.ul1 { list-style:none;padding:0 80px; margin:0;overflow: hidden;font-size: 36px;height: 100%;}
		li {float: left}
		li a {display: block;color: white;text-align: center;padding:0px 26px;text-decoration: none;}
		li a:hover{background-color: #111}
		li a:visited{background-color: #111}
		.black_overlay{display: none; position: absolute;top: 0%;left: 0%;width: 100%;height: 100%;background-color: #c8c8c8;z-index:1001;-moz-opacity: 0.8; opacity:.80; filter: alpha(opacity=78);}
		.pop_win { display: none;position: absolute;top: 10%;left: 23%;width: 55%;height: 85%;padding: 10px; border: 2px solid rebeccapurple;background-color: white;z-index:9999;overflow: auto;}
		.xj{align:"left" ;font-size: 20px}
		.xz{height: 40px; font-size: 15px}
		.bt{height: 40px;font-size: 20px}
		.sr{width: 350px;height: 40px;font-size: 15px}
		.tr{width: 350px;height: 100px;}
	</style>
	<script type="text/javascript">
		function popWin(){
			document.getElementById('light').style.display='block';
			document.getElementById('fade').style.display='block'}
		function closeWin() {
			document.getElementById('light').style.display = 'none';
			document.getElementById('fade').style.display = 'none'}
	</script>
</head>

<body>
<div class="hold">
	<!--最上面 -->
	<div class="top">
		<div class="top_right">
			<a href="${pageContext.request.contextPath}/tologin"><button class="quit" onClick="">退出</button></a>
			<a href="${pageContext.request.contextPath}/tologin"></a><button class="quit" onClick="" value="我的约定">我的约定</button>
			<a href="${pageContext.request.contextPath}/tologin"></a><button class="quit" onClick="" value="个人中心">个人中心</button>
		</div>
	</div>
	<!-- 搜索栏 -->
	<div class="second">
		<div class="second_left"><img src="${pageContext.request.contextPath}/images/title2.png"></div>
		<div class="second_right">
			<input id="search1" type="button" value="搜索">
			<input id="search2" placeholder="请输入......">
		</div>
	</div>
	<!-- 导航栏 -->
	<div class="third">
		<div class="third_left">
			<ul class="ul1">
				<li><a href="List<Appointment>" >全 部</a></li>
				<c:forEach items="${typelist}" var="item">
					<li><a href="before?typeid=${item.typeid}">${item.typename}</a></li>
				</c:forEach>
			</ul>
		</div>
		<div class="third_right">
			<button class="new" onclick="popWin()">新建约定</button>
			<div id="light" class="pop_win">
				<form action="${pageContext.request.contextPath}/appointment/build" method="post">
					<fieldset>
						<legend class="xj">新建约定</legend>
						<table cellspacing="25px" width="800px">
							<tr>
								<td>
									<label>约定类别：</label>
									<select name="typeid" required class="xz">
										<option value="请选择">请选择</option>
										<option value="1">学习</option>
										<option value="2">运动</option>
										<option value="3">娱乐</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>
									<label>约定标题：</label>
									<input required type="text" name="title" placeholder="输入你的约定的标题（不超过15个字）" maxlength="15" class="sr">
								</td>
							</tr>
							<tr>
								<td>
									<label>约定时间：</label>
									<input required type="datetime-local" name="appointedtime" value="2020-01-01T23:59"  class="sr">
								</td>
							</tr>
							<tr>
								<td>
									<label>约定地点：</label>
									<input name="place" required type="text" placeholder="输入活动进行的地点"  class="sr">
								</td>
							</tr>
							<tr>
								<td>
									<label>内&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;容：</label>
									<textarea name="content" rows="4" cols="50" wrap="virtual"  class="tr"></textarea>
								</td>
							</tr>
							<tr align="center">
								<td>
									<input type="submit" value="提交" class="bt">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="button" value="关闭" onClick="closeWin()" class="bt">
								</td>
							</tr>
						</table>
					</fieldset>
				</form>
			</div>
			<div id="fade" class="black_overlay"></div>
		</div>
	</div>
</div>
</body>
</html>
