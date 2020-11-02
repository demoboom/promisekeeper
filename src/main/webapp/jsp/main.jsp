<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>主界面</title>
<style type="text/css">
	body{background: url("/images/bg2.jpg");padding: 0; margin: 0}
	li {float: left;}
	li a {display: block;color: white;text-align: center;padding: 14px 16px;text-decoration: none;}
	li a:hover{background-color: #111}
	li a:visited{background-color: #111}
	#div1{width: 100%;height: 20px;float: right}
	#div2{width: 100%;height: 80px; background: url("/images/title2.png") no-repeat}
	#div3{text-align: center}
	#search1{outline-style: none;border-radius: 5px;border: 2px thin;height: 25px;width:350px;margin-top: 5px;padding: 5px}
	#search2{outline-style: none;border-radius: 5px;border: 3px outset;height: 30px;width:50px;margin-top: 5px}
	.quit{opacity:0.5;border-style: none;outline: #30368A;float: right;margin-right: 30px}
	.dh{float: right;margin-top: 10px;margin-right: 100px;border-radius:12px;font-size: 15px;
		height: 40px;width: 80px;color:white;
		background-color:gray;border:none;outline: none
		}
	.dh:hover{box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19)}
	.ul1 { list-style:none;padding:0 80; margin: 0;overflow: hidden;background-color: gray;font-size: 25px}
</style>
</head>
<body>
	<div id="div1">
		<a href="https://www.baidu.com/">
	<button class="quit" onClick="">退出</button></a>
	<button class="quit" onClick="" value="我的约定">我的约定</button>
	<button class="quit" onClick="" value="个人中心">个人中心</button>
	</div>
	<div id="div2">
	<button class="dh" value="新建" >新建约定</button>
	</div>
	<div>
	<ul class="ul1">
	<li onClick="sports"><a href="javascript:void(0)" >运 动</a></li>
	<li onClick="study"><a href="javascript:void(0)" >学 习</a></li>
	<li onClick="amuse"><a href="javascript:void(0)" >娱 乐</a></li>
	</ul>
	</div>
	<div id="div3">
		<input id="search1" placeholder="请输入......">
		<input id="search2" type="button" value="搜索">
	</div>
	<div>
	</div>
</body>
</html>
