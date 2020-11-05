<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>新建约定</title>
<style type="text/css">
	body{background: url("/images/bg3.jpg");padding: 0;margin: 0}
	label{display:inline-block;  width:150px; text-align: left ;font-size: 25px;margin-left: 10%;margin-right: 5%}
	#div1{margin-left: 13%;margin-right: 20%;margin-top: 3%;margin-bottom: 5%}
	#sr{width: 350px;height: 40px;font-size: 15px}
	#tr{width: 350px;height: 100px;}
	#xz{height: 40px; font-size: 15px}
	#bt{height: 40px;font-size: 20px}
	#xj{align:"left" ;font-size: 20px}
	</style>
</head>

<body>
	<div>
		<img src="${pageContext.request.contextPath}/images/title2.png" width="100%">
	</div>
	<div id="div1">
		<form>
		<fieldset>
		<legend id="xj">新建约定</legend>
		<table cellspacing="25px" width="800px">
		<tr>
		<td>
		<label>约定类别：</label>
		<select  required id="xz">
		<option value="请选择">请选择</option>
		<option value="运动">运动</option>
		<option value="学习">学习</option>
		<option value="娱乐">娱乐</option>
		</select>
		</td>
		</tr>
		<tr>
		<td>
		<label>约定名称：</label>
		<input required type="text" name="name" placeholder="输入你的约定的标题（不超过15个字）" maxlength="15" id="sr">
		</td>	
		</tr>
		<tr>
		<td>
		<label>约定时间：</label>	
		<input required type="datetime-local" value="2020-01-01T23:59"  id="sr">
		</td>
		</tr>
		<tr>
		<td>
		<label>约定时长：</label>
		<input required type="text" placeholder="输入活动进行的时长（2小时）"  id="sr">
		</td>
		</tr>
		<tr>
		<td>
		<label>约定地点：</label>
		<input required type="text" placeholder="输入活动进行的地点"  id="sr">
		</td>
		</tr>
		<tr>
		<td>
		<label>备注：</label>
		<textarea name="beizhu" rows="4" cols="50" wrap="virtual"  id="tr"></textarea>
		</td>
		</tr>
		<tr align="center">
		<td>
		<input type="submit" value="提交" id="bt">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="button" value="返回首页" onClick="javascript :history.back(-1)" id="bt">
		</td>
		</tr>
		</table>
		</fieldset>
		</form>
	</div>
</body>
</html>
