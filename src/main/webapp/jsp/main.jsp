<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="po.AppointmentType" %>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>main</title>
	<style type="text/css">
		body{background: url("${pageContext.request.contextPath}/images/bg2.jpg")repeat-x left top;width: 100%}
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
		.ul1 { list-style:none;padding:0 80px; margin:0;overflow: hidden;font-size: 36px;height: 100%}
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
		/*列表*/
		.list{margin-left: 30px;margin-top: 10px;margin-right: 30px}
		.table{width: 100%;}
		.td{width: 100%;height: 100%}
		.left{float: left;width: 75%}
		.right{float: right}
		table .table-striped{}
		table th{text-align: left;height: 30px;padding: 5px;margin: 0;border: 0px;}
		table td{text-align: left;height:30px; margin: 0;padding: 5px;border:0px}
		table tr:hover{background: #eeeeee;}
		.span6{float:inherit;margin:10px;}
		#pagiDiv span{border-radius: .2em;padding:5px;}
		.left{float: left;width: 75%}
		.right{float: right}
		.cj{float: right;margin-top: 50px;margin-right: 60px;border-radius:18px;font-size: 20px;
			height:50px;width: 180px;color:black;
			background-color:antiquewhite;border:none;outline: none
		}
		.cj:hover{box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19)}
		.ren{font-size: 12px;text-align: center;color: #FF00E5}
	</style>
	<script type="text/javascript" src="pagination.js"></script>
	<script type="text/javascript" src="jquery-1.11.1.min.js"></script>
	<script type="text/javascript">
		function popWin(){
			document.getElementById('light').style.display='block';
			document.getElementById('fade').style.display='block'}
		function closeWin() {
			document.getElementById('light').style.display = 'none';
			document.getElementById('fade').style.display = 'none'}
		//全局变量
		var numCount;       //数据总数量
		var columnsCounts;  //数据列数量
		var pageCount;      //每页显示的数量
		var pageNum;        //总页数
		var currPageNum ;   //当前页数
		//页面标签变量
		var blockTable;
		var preSpan;
		var firstSpan;
		var nextSpan;
		var lastSpan;
		var pageNumSpan;
		var currPageSpan;

		function firstPage(){
			hide();
			currPageNum = 1;
			showCurrPage(currPageNum);
			showTotalPage();
			for(i = 1; i < pageCount + 1; i++){
				blockTable.rows[i].style.display = "";
			}
			firstText();
			preText();
			nextLink();
			lastLink();
		}
		function prePage(){
			hide();
			currPageNum--;
			showCurrPage(currPageNum);
			showTotalPage();
			var firstR = firstRow(currPageNum);
			var lastR = lastRow(firstR);
			for(i = firstR; i < lastR; i++){
				blockTable.rows[i].style.display = "";
			}
			if(1 == currPageNum){
				firstText();
				preText();
				nextLink();
				lastLink();
			}else if(pageNum == currPageNum){
				preLink();
				firstLink();
				nextText();
				lastText();
			}else{
				firstLink();
				preLink();
				nextLink();
				lastLink();
			}

		}

		function nextPage(){
			hide();
			currPageNum++;
			showCurrPage(currPageNum);
			showTotalPage();
			var firstR = firstRow(currPageNum);
			var lastR = lastRow(firstR);
			for(i = firstR; i < lastR; i ++){
				blockTable.rows[i].style.display = "";
			}
			if(1 == currPageNum){
				firstText();
				preText();
				nextLink();
				lastLink();
			}else if(pageNum == currPageNum){
				preLink();
				firstLink();
				nextText();
				lastText();
			}else{
				firstLink();
				preLink();
				nextLink();
				lastLink();
			}
		}

		function lastPage(){
			hide();
			currPageNum = pageNum;
			showCurrPage(currPageNum);
			showTotalPage();
			var firstR = firstRow(currPageNum);
			for(i = firstR; i < numCount + 1; i++){
				blockTable.rows[i].style.display = "";
			}

			firstLink();
			preLink();
			nextText();
			lastText();
		}

		// 计算将要显示的页面的首行和尾行
		function firstRow(currPageNum){
			return pageCount*(currPageNum - 1) + 1;
		}

		function lastRow(firstRow){
			var lastRow = firstRow + pageCount;
			if(lastRow > numCount + 1){
				lastRow = numCount + 1;
			}
			return lastRow;
		}

		function showCurrPage(cpn){
			currPageSpan.innerHTML = cpn;
		}

		function showTotalPage(){
			pageNumSpan.innerHTML = pageNum;
		}

		//隐藏所有行
		function hide(){
			for(var i = 1; i < numCount + 1; i ++){
				blockTable.rows[i].style.display = "none";
			}
		}

		//控制首页等功能的显示与不显示
		function firstLink(){firstSpan.innerHTML = "<a href='javascript:firstPage();'>首页</a>";}
		function firstText(){firstSpan.innerHTML = "首页";}

		function preLink(){preSpan.innerHTML = "<a href='javascript:prePage();'>上一页</a>";}
		function preText(){preSpan.innerHTML = "上一页";}

		function nextLink(){nextSpan.innerHTML = "<a href='javascript:nextPage();'>下一页</a>";}
		function nextText(){nextSpan.innerHTML = "下一页";}

		function lastLink(){lastSpan.innerHTML = "<a href='javascript:lastPage();'>尾页</a>";}
		function lastText(){lastSpan.innerHTML = "尾页";}

		window.onload=function(){
			//页面标签变量
			blockTable = document.getElementById("blocks");
			preSpan = document.getElementById("spanPre");
			firstSpan = document.getElementById("spanFirst");
			nextSpan = document.getElementById("spanNext");
			lastSpan = document.getElementById("spanLast");
			pageNumSpan = document.getElementById("spanTotalPage");
			currPageSpan = document.getElementById("spanPageNum");
			numCount = document.getElementById("blocks").rows.length - 1;       //取table的行数作为数据总数量（减去标题行1）
			columnsCounts = blockTable.rows[0].cells.length;
			pageCount = 5;
			pageNum = parseInt(numCount/pageCount);
			if(0 != numCount%pageCount){
				pageNum += 1;
			}
			firstPage();
		};
	</script>
</head>

<body>
<div class="hold">
	<!--最上面 -->
	<div class="top">
		<div class="top_right">
			<a href="${pageContext.request.contextPath}/user/exit"><button class="quit" onClick="">退出</button></a>
			<a href="${pageContext.request.contextPath}/"><button class="quit" onClick="">我的约定</button></a>
			<a href="${pageContext.request.contextPath}/user/personal"><button class="quit" onClick="" >个人中心</button></a>
		</div>
	</div>
	<!-- 搜索栏 -->
	<div class="second">
		<div class="second_left"><img src="${pageContext.request.contextPath}/images/title2.png"></div>
		<div class="second_right">
			<form action="${pageContext.request.contextPath}/appointment/search" method="post">
				<input id="search1" type="submit" value="搜索">
				<input id="search2" name="msg" placeholder="请输入......">
			</form>
		</div>
	</div>
	<!-- 导航栏 -->
	<div class="third">
		<div class="third_left">
			<ul class="ul1">
				<li><a href="${pageContext.request.contextPath}/appointment/select?typeid=0" >全 部</a></li>
				<c:forEach items="${typelist}" var="item">
					<li><a href="${pageContext.request.contextPath}/appointment/select?typeid=${item.typeid}">${item.typename}</a></li>
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
									<input required type="datetime-local" name="appointedtime" class="sr">
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
									<label>约定人数：</label>
									<input name="num" min="1" max="50" required type="number" placeholder="输入活动人数"  class="sr">
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
	<div class="container" align="center" >
		<table id="blocks" class="table table-striped" style="margin-top:25px" border="1" cellpadding="0">

			<c:forEach items="${appointment}" var="al">
				<tr>
					<td colspan="5" >
						<div>
							<div class="left">
								<h2>${al.title}</h2>
								<strong>时间：${al.appointedtime} 地点：${al.place}</strong>
								<p>内容： ${al.content} </p>
							</div>
							<div class="right">
								<button class="cj">参&nbsp; &nbsp;加</button>
								<p class="ren">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前人数：${al.hadnum} / ${al.num}</p>
							</div>
						</div>
					</td>
				</tr>
			</c:forEach>



		</table>

		<div id="pagiDiv" align="center" style="width:1200px">
			<span id="spanFirst">首页</span>&nbsp;&nbsp;
			<span id="spanPre">上一页</span>&nbsp;&nbsp;
			<span id="spanNext">下一页</span>&nbsp;&nbsp;
			<span id="spanLast">尾页</span>&nbsp;&nbsp;
			第&nbsp;<span id="spanPageNum"></span>&nbsp;页/共&nbsp;<span id="spanTotalPage"></span>&nbsp;页
		</div>

	</div>
</div>
</body>
</html>
