<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <%@include file="/WEB-INF/pages/include/header.jsp"%>
    <title>书签管理</title>
    <style>
        .item {
            width: 20%;
            height: 20%;
            margin: 10px 10px;
            float:left;
        }
    </style>
</head>
<body>
    <%@include file="/WEB-INF/pages/include/sidebar.jsp"%>
    <div class="container">
        <c:if test="parentItem != null">
            <div class="banner">
                <span>${parentItem.name}</span>
            </div>
        </c:if>
        <c:forEach items="${items}" var="item">
            <div class="item">
                <img src="${item.logoUrl}" />
                <label>${item.title}</label>
                <span>${item.intro}</span>
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
