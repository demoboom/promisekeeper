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
    <form action="${pageContext.request.contextPath}/appointment/build" method="post">
        <fieldset>
            <label>约定时间：</label>
            <input required type="datetime-local" value="2020-01-01T23:59" name="appointedtime" id="sr">
            <input type="text" name="typeid">
        </fieldset>
        <input type="submit" value="ok">
    </form>
</div>
</body>
</html>
