<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title></title>
    <%@include file="/WEB-INF/pages/include/header.jsp"%>
    <style type="text/css">
        .left_nav {
            width: 200px;
            float: left;
        }
        .left_nav > ul {
            border-bottom: 1px solid #e5e5e5;
        }
        .item {
            width: 200px;
            float: left;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="left_nav">
            <ul class="nav nav-pills nav-stacked">
                <li><a href="#" class="btn btn-primary" style="width: 80%; text-align: center; margin: 0 auto;">新建</a></li>
            </ul>
            <ul class="nav nav-pills nav-stacked">
                <li><a href="">所有书签</a></li>
            </ul>
            <ul class="nav nav-pills nav-stacked">
                <li><a href="">书签栏</a></li>
            </ul>
            <ul class="nav nav-pills nav-stacked">
                <li><a href="">标签</a></li>
            </ul>
        </div>
    </div>
</body>
</html>
