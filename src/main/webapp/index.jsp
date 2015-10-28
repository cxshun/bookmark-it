<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="<c:url value='/style/bootstrap/css/bootstrap.min.css' />" />
    <script src="<c:url value='/script/jquery-1.11.3.min.js' />"></script>
    <script src="<c:url value='/script/angular.min.js' />"></script>
    <script src="<c:url value='/style/bootstrap/js/bootstrap.min.js' />"></script>
    <title>书签管理</title>
    <style>
        .item {
            width: 220px;
            height: 240px;
            margin: 10px 10px;
            float:left;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="pull-right">
            <span>
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#addDlg">
                    添加
                </button>
            </span>
        </div>
        <c:forEach items="${items}" var="item">
            <div class="item">
                <img src="${item.logoUrl}" />
                <span>${item}</span>
            </div>
        </c:forEach>
    </div>

    <div class="modal fade" id="addDlg" role="dialog" />
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">添加网站</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" method="post" action="<c:url value='/item/create' />">
                        <div class="form-group">
                            <label for="title" class="col-sm-2 control-label">标题</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="title" name="title" placeholder="标题" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="url" class="col-sm-2 control-label">网址</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="url" name="url" placeholder="URL" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="intro" class="col-sm-2 control-label">描述</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="intro" name="intro" placeholder="intro" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-default">添加</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
