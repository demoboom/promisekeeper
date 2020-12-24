<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>personal</title>
</head>
<style type="text/css">
    body{background: url("${pageContext.request.contextPath}/images/bg.jpg") no-repeat center;background-size:200%}
    .top{height: 20%;width: 100%;padding-left: 280px;padding-top: 20px;padding-bottom: 20px; margin: 0; color: #000000;background-color: #AEAEAE}
    .ge{font: 36px/1 Tahoma,Helvetica,Arial,"\5b8b\4f53",sans-serif;font-style: italic;margin-bottom: 30px}
    .center{height: 80%;width: 100%;padding-left: 250px;margin-top: 10px;}
    label{font: 18px/3 Tahoma,Helvetica,Arial,"\5b8b\4f53",sans-serif;}
    .pop_win { display: none;position: absolute;top: 10%;left: 23%;width: 55%;height: 85%;padding: 10px; border: 2px solid rebeccapurple;background-color: white;z-index:9999;overflow: auto;}
    .sr{width: 350px;height: 40px;font-size: 15px}
    .bt{height: 40px;font-size: 20px}
    .modify{margin-top: 10px;margin-left: 0px;margin-bottom: 10px; border-radius:50px;font-size: 15px;
        height: 40px;width: 50%;color:black;background-color:#FCFCFC;
        border:none;outline: none
    }
    .modify:hover{box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 10px 0 rgba(0,0,0,0.19)}
    .table{border: 12px groove gray;width: 50%;padding-left: 40px;border-radius:15px}
</style>
<script type="text/javascript">
    function popWin(){
        document.getElementById('light').style.display='block';
        document.getElementById('fade').style.display='block'}
    function closeWin() {
        document.getElementById('light').style.display = 'none';
        document.getElementById('fade').style.display = 'none'}
</script>
<body>
<div class="top">
    <p class="ge">个 人 中 心</p>
</div>
<div class="center">
    <table class="table">
        <tr >
            <td><label>用 户 名 ：${user.uid}</label></td>
        </tr>
        <tr>
            <td><label>姓 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：${user.name}</label></td>
        </tr>
        <tr >
            <td><label>性 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：${user.sex}</label></td>
        </tr>
        <tr>
            <td><label>年 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄：${user.age}</label></td>
        </tr>
        <tr>
            <td><label>手机号码：${user.tel}</label></td>
        </tr>
    </table>
    <button  class="modify" onClick="popWin()">修改资料</button>
    <div id="light" class="pop_win">
        <form action="${pageContext.request.contextPath}/user/update" method="post">
            <fieldset>
                <legend class="xj">修改资料</legend>
                <table cellspacing="25px" width="800px">
                    <tr>
                        <td>
                            <label>用 户 名 ：${user.uid}</label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>姓 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</label>
                            <input type="text" name="name" class="sr" value="${user.name}">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>性 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</label>
                            <input type="text" name="sex" class="sr" value="${user.sex}">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>年 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄：</label>
                            <input name="age" type="number" min="1" maxlength="3" value="${user.age}"  class="sr">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>手机号码：</label>
                            <input name="tel" type="text" maxlength="11" value="${user.tel}"  class="sr">
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
    <a href="${pageContext.request.contextPath}/before"><button  class="modify">返回主页</button></a>
</div>
</div>
</body>
</html>

