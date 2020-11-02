<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>注册界面</title>
<style type="text/css">
	body{background: url("${pageContext.request.contextPath}/images/bg.jpg") no-repeat center;background-size: 200% }
	label{display:inline-block;  width:100px; text-align: left ;font-size: 20px}
	.div{position:absolute; top:30%;left:50%; margin-top:-100px; margin-left:-200px;}
	.div1{border: outset 5px; width: 400px;letter-spacing: 2px;line-height: 5px}
	.div2{border: inset 5px; width: 400px}
	#dl{font-size: 15px;color: gray}
	#sex{height: 30px}
	#sr{width: 200px;height: 30px}
	#bt{width: 45px;height: 30px;background: #89D2E0;font-size: 15px}
</style>
</head>

<body>
	<div class="div">
	<div class="div1">
	<h1>欢迎注册</h1>
	<p id="dl">已有账号？<a href="${pageContext.request.contextPath}/user/tologin">登录</a></p>
	</div>
	<div class="div2">
	<form action="${pageContext.request.contextPath}/user/register" method="post">
	<table>
	<tr>
	<td>
	<label>用户名：</label>
	<input required type="text" name="uid" placeholder="输入用户名" id="sr">
	</td>
	</tr>
		<tr>
			<td>
				<label>姓名：</label>
				<input required type="text" name="name" placeholder="输入你的姓名"  id="sr">
			</td>
		</tr>
	<tr>
	<td>
	<label>年 龄：</label>
	<input required type="text" name="age" placeholder="输入你的年龄"  id="sr" maxlength="3" onkeyup="value=value.replace(/\D/g,'')">
	</td>
	</tr>
	<tr>
	<td>
	<label>性 别：</label>
	<select required name="sex" id="sex">
	<option value="请选择">请选择</option>
	<option value="男">男</option>
	<option value="女">女</option>
	</select>
	</td>
	</tr>
	<tr>
	<td>
	<label>手机号码：</label>
	<input required type="text" name="tel" id="sr" placeholder="输入你的手机号码" maxlength="11" onkeyup="value=value.replace(/\D/g,'')">
	</td>
	</tr>
	<tr>
	<td>
	<label>密 码：</label>
	<input required type="password" name="upwd" id="sr" placeholder="输入以设置你的密码">
	</td>
	</tr>
	<tr>
	<td>
	<label>E-mail：</label>
	<input required type="text" name="email" id="sr" placeholder="输入你的电子邮箱">
	</td>	
	</tr>
	<tr align="center">
	<td>
	<input type="submit" name="submit" value="注册" id="bt">&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="reset" name="reset" value="重置" id="bt">
	</td>
	</tr>
	</table>
	</form>	
	</div>
	</div>
</body>
</html>
