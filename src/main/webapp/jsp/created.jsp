<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>mine</title>

<style type="text/css">
	.top1{height: 20%;width: 100%;background: #919191;padding:20px 0px;font: 36px/1 Tahoma,Helvetica,Arial,"\5b8b\4f53",sans-serif;font-style: italic;margin-bottom: 30px;margin-bottom: 0px}
	.top_right{width: 20%;float: right}
	.top{background: gray;margin-top: 0px;margin-bottom: 0px;width: 100%;font:36px/2 Tahoma,Helvetica,Arial,"\5b8b\4f53",sans-serif;}
	.ul1 { list-style:none;padding:0 20px; margin:0;overflow: hidden;font-size: 36px;height: 100%}
		li {float: left}
		li a {display: block;color: white;text-align: center;padding:0px 26px;text-decoration: none;}
		li a:hover{background-color: #111}
		li a:visited{background-color: #111}
	.center{height: 80%; width: 100%;margin-top: 0px}
	.center_left{width: 70%;height: 100%; float: left}
	.center_right{width: 30%;height: 100%; float: right}
	.table{width: 100%;}
	.td{width: 100%;height: 100%}
	table .table-striped{}
	table th{text-align: left;height: 30px;padding: 5px;margin: 0;border: 0px;}
	table td{text-align: left;height:30px; margin: 0;padding: 5px;border:0px}
	table tr:hover{background: #eeeeee;}
	.span6{float:inherit;margin:10px;}
	#pagiDiv span{border-radius: .2em;padding:5px;}
	.cj{float: right;margin-top: 50px;margin-right: 60px;border-radius:18px;font-size: 20px;height:50px;width: 90px;color:black;background-color:antiquewhite;border:none;outline: none}
	.cj:hover{box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19)}
	.back{width:100px;height: 45px;border-radius: 12px;font-size: 20px;float: right;margin-top: 15px}
</style>
</head>
<body>
	<div class="top">
		<ul class="ul1">
				<li><a href="${pageContext.request.contextPath}/user/mine">我的创建</a></li>
				<li><a href="${pageContext.request.contextPath}/appointment/joined">我的加入</a></li>
				<a href="${pageContext.request.contextPath}/before"><button  class="back">返回主页</button></a>
		</ul>
	</div>
	<div class="center">
		<table id="blocks" class="table" style="margin-top:25px" border="1" cellpadding="0">
		<c:forEach items="${appointment}" var="al">
			<tr>
			<td colspan="5" >
				<div>
				<div class="center_left">
					<h2>${al.title}</h2>
					<strong>时间：${al.appointedtime}地点：${al.place}人数：${al.num}</strong>
					<p>内容： ${al.content} </p>
				</div>
				<div class="center_right">
					<a href="${pageContext.request.contextPath}/appointment/delete?aid=${al.aid}"><button class="cj">删&nbsp; &nbsp;除</button></a>
					<a href="${pageContext.request.contextPath}/appointment/edit?aid=${al.aid}"><button class="cj">编&nbsp; &nbsp;辑</button></a>
				</div>
				</div>
			</td>
			</tr>
		</c:forEach>
		</table>
	</div>
	</div>
</body>
</html>
