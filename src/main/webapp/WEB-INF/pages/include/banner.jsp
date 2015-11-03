<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <%@include file="/WEB-INF/pages/include/header.jsp"%>
</head>
<body>
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <ul class="nav navbar-nav">
                <li>
                    <form class="form-inline">
                        <div class="form-group">
                            <label class="sr-only" for="key">
                                <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                            </label>
                            <div class="input-group">
                                <div class="input-group-addon"></div>
                                <input type="text" class="form-control" id="key" placeholder="search" />
                            </div>
                        </div>
                    </form>
                </li>
            </ul>
        </div>
    </nav>
</body>
</html>
