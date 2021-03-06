<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <%@include file="../../include/css.jsp"%>

    <title>待办列表</title>

</head>
<body class="hold-transition skin-blue sidebar-mini">
<!-- Site wrapper -->

<div id="message" class="alert alert-success">成功</div>

<div class="wrapper" id="app">

    <%@include file="../../include/header.jsp"%>
    <jsp:include page="../../include/sider.jsp">
        <jsp:param name="menu" value="process_list"/>
    </jsp:include>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Main content -->
        <section class="content">

            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">我的待办</h3>
                </div>
                <div class="box-body">
                    <table class="table  table-hover">
                        <thead>
                        <tr>
                            <th>申请人</th>
                            <th>任务名称</th>
                            <th>任务创建时间</th>
                            <th>所属流程</th>
                            <th>流程创建时间</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${processList}" var="process">
                        <tr>
                            <td>${process.userName}</td>
                            <td>${process.task.name}</td>
                            <td><fmt:formatDate value="${process.task.createTime}" pattern="yyyy-MM-dd hh:mm:ss"/> </td>
                            <td>${process.processDefinitionName}</td>
                            <td><fmt:formatDate value="${process.historicProcessInstance.startTime}" pattern="yyyy-MM-dd hh:mm:ss"/> </td>
                            <td>
                                <c:choose>
                                    <c:when test="${not empty process.task.assignee}">
                                        <a href="/leave/view/task/${process.task.id}">办理</a>
                                    </c:when>
                                    <c:otherwise>
                                        <a href="/process/claim/task/${process.task.id}">签收</a>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

</div>
<%@include file="../../include/js.jsp"%>

<script>

    $(function(){
     setTimeout(function(){
     $("#message").hide('slow');
     },2000);
     });

</script>
</body>

</html>
