<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>mine</title>

<style type="text/css">
	body{background: url("${pageContext.request.contextPath}/images/bg2.jpg")repeat-x left top;width: 100%}
	.top{height: 20%;width: 100%;background: #919191;padding:20px 0px 30px 50px;font: 36px/1 Tahoma,Helvetica,Arial,"\5b8b\4f53",sans-serif;font-style: italic;margin-bottom: 30px}
	.top_right{width: 20%;float: right}
	.center{height: 80%; width: 100%}
	.center_left{width: 70%;height: 100%; float: left}
	.center_right{width: 30%;height: 100%; float: right}
	.table{width: 100%;}
	.td{width: 100%;height: 100%}
	table .table-striped{}
	table th{text-align: left;height: 30px;padding: 5px;margin: 0;border: 0px;}
	table td{text-align: left;height:30px; margin: 0;padding: 5px;border:0px}
	table tr:hover{background: #eeeeee;}
	span{font: 14px/1 Tahoma,Helvetica,Arial,"\5b8b\4f53",sans-serif;font-style: normal;}
	#pagiDiv span{border-radius: .2em;padding:5px;}
	.cj{float: right;margin-top: 50px;margin-right: 60px;border-radius:18px;font-size: 20px;height:50px;width: 90px;color:black;background-color:antiquewhite;border:none;outline: none}
	.cj:hover{box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19)}
	.pop_win { display: none;position: absolute;top: 10%;left: 23%;width: 55%;height: 100%;padding: 10px; border: 5px outset rebeccapurple;background-color: white;z-index:9999;overflow: auto;}
	.xj{align:"left" ;font-size: 20px}
	.xz{height: 40px; font-size: 15px}
	.bt{height: 40px;font-size: 20px}
	.sr{width: 350px;height: 40px;font-size: 15px}
	.tr{width: 350px;height: 100px;}
	.back{width:100px;height: 50px;border-radius: 12px;font-size: 20px}
</style>
</head>
<body>
	<div class="top">我的约定
		<div class="top_right"><a href="${pageContext.request.contextPath}/before"><button  class="back">返回主页</button></a></div>
	</div>
	<div class="center">
		<table id="blocks" class="table" style="margin-top:25px" border="1" cellpadding="0">

			<c:forEach items="${appointment}" var="al">
				<tr>
					<td colspan="5" >
						<div>
							<div class="center_left">
								<h2>${al.title}</h2>
								<strong>时间：<span>${al.appointedtime}</span>&nbsp;&nbsp;</strong>
								<strong>地点：<span>${al.place}</span>&nbsp;&nbsp;</strong>
								<strong>人数：<span>${al.num}</span></strong><br>
								<p><strong>内容：<span>${al.content}</span></strong></p>
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
