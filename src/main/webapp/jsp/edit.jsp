<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>编辑活动</title>
<style type="text/css">
	body{background: url("${pageContext.request.contextPath}/images/bg.jpg") no-repeat center;background-size:200%}
	.top{height: 20%;width: 100%;background: #919191;padding:20px 0px 30px 50px;font: 36px/1 Tahoma,Helvetica,Arial,"\5b8b\4f53",sans-serif;font-style: italic;margin-bottom: 30px}
	.xj{align:"left" ;font-size: 20px}
	.xz{height: 40px; font-size: 15px}
	.sr{width: 350px;height: 40px;font-size: 15px}
	.bt{ border-radius:50px;font-size: 15px;
        height: 40px;width: 30%;color:black;background-color:#FCFCFC;
        border:none;outline: none;margin-left: 5%
    }
    .bt:hover{box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 10px 0 rgba(0,0,0,0.19)}
	fieldset{width: 50%;margin-left: 10%}
</style>
</head>

<body>
	<div class="top">编辑活动：${appoint.title}&nbsp;详情</div>
	<form action="${pageContext.request.contextPath}/appointment/update?aid=${aid}" method="post">
			<fieldset>
				<table cellspacing="25px">
					<tr>
					<td>
						<label>约定类别：</label>
						<select name="typeid" required class="xz">
							<option value="${appoint.typeid }" selected:disabled>原类别</option>
							<option value="1">1.学习</option>
							<option value="2">2.运动</option>
							<option value="3">3.娱乐</option>
						</select>
					</td>
					</tr>
					<tr>
					<td>
						<label>约定标题：</label>
						<input type="text" name="title" value="${appoint.title}" maxlength="15" class="sr">
					</td>
					</tr>
					<tr>
					<td>
						<label>约定时间：</label>
						<label>${appoint.appointedtime }</label>
					</td>
					</tr>
					<tr>
					<td>
						<label>约定地点：</label>
						<input name="place" type="text" value="${appoint.place}"  class="sr">
						</td>
					</tr>
					<tr>
					<td>
						<label>约定人数：</label>
						<input name="num" min="1" max="50" type="number" value="${appoint.num}"  class="sr">
					</td>
					</tr>
					<tr>
					<td>
						<label>内&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;容：</label>
						<textarea name="content" rows="4" cols="50" wrap="virtual"  class="tr">${appoint.content}</textarea>
					</td>
					</tr>
					<tr>
					<td>
						<input type="submit" value="提交" class="bt">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="${pageContext.request.contextPath}/before"><button  class="bt">关闭</button></a>
					</td>
					</tr>
				</table>
			</fieldset>
	</form>
</body>
</html>
