<%--
  Created by IntelliJ IDEA.
  User: 君行天下
  Date: 2017/7/23
  Time: 17:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"  %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>用户主页</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"  crossorigin="anonymous">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" crossorigin="anonymous"></script>
    <style>
        body{
            margin: 0;
            padding: 0;
            overflow: visible;
        }
        #newsa{
            width:500px;
            height: 200px;
            position: fixed;
            left: 35%;
            top:30%;
        }
    </style>
</head>
<body background="img/281289-106.jpg">
<nav  style="position:fixed;z-index: 999;width: 100%" class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="admin_main.html">图书管理系统</a>
        </div>
        <div class="collapse navbar-collapse" >
            <ul class="nav navbar-nav navbar-left">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        图书管理
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="allbooks.html">全部图书</a></li>
                        <li class="divider"></li>
                        <li><a href="book_add.html">增加图书</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        读者管理
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="allreaders.html">全部读者</a></li>
                        <li><a href="reader_add.html">增加读者</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        借还管理
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">借还日志</a></li>
                    </ul>
                </li>
                <li >
                    <a href="admin_repasswd.html" >
                        密码修改
                    </a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="login.html"><span class="glyphicon glyphicon-user"></span>&nbsp;${admin.adminId}，已登录</a></li>
                <li><a href="login.html"><span class="glyphicon glyphicon-log-in"></span>&nbsp;退出</a></li>
            </ul>
        </div>
    </div>
</nav>
<div id="newsa">
    <a href="http://lib.nuc.edu.cn/new/View.action?objid=1023&cstype=news" style="color:midnightblue "><span>图书馆2017年暑假闭馆通知</span> &nbsp;&nbsp;&nbsp;<time>2017-6-20</time></a><br/><br/>
    <a href="http://lib.nuc.edu.cn/new/View.action?objid=1023&cstype=news" style="color:midnightblue "><span>图书馆第八届考研经验交流大会圆满结束</span>&nbsp;&nbsp;&nbsp;<time>2017-6-7</time></a><br/><br/>
    <a href="http://lib.nuc.edu.cn/new/View.action?objid=1023&cstype=news" style="color:midnightblue "><span>扬中华之美德 行传统毕业礼</span>&nbsp;&nbsp;&nbsp;<time>2017-6-6</time></a><br/><br/>
    <a href="http://lib.nuc.edu.cn/new/View.action?objid=1023&cstype=news" style="color:midnightblue "><span>当代国学社举办中北大学首届书画篆刻展</span>&nbsp;&nbsp;&nbsp;<time>2017-5-8</time></a><br/><br/>
    <a href="http://lib.nuc.edu.cn/new/View.action?objid=1023&cstype=news" style="color:midnightblue "><span>关于和《百家讲坛》主讲人钱斌老师座谈的通知</span>&nbsp;&nbsp;&nbsp;<time>2017-5-3</time></a><br/>
</div>

<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    温馨提示
                </h4>
            </div>
            <div class="modal-body">
                使用结束后请安全退出。
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">知道了
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<c:if test="${!empty info}">
    <script>
        $(function () {
            $("#myModal").modal({
                show: true
            })
        })
    </script>
</c:if>

</body>
</html>
