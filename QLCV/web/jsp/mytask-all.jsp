<%-- 
    Document   : mytask-all
    Created on : Mar 9, 2021, 11:11:46 AM
    Author     : sonng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            session.removeAttribute("CssAndJs");
            session.setAttribute("CssAndJs", "mytask-");
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="/jsp/header.jsp" %>
        <%@include file="/jsp/linkCss.jsp" %>
        <title><Công viêc/ nhiệm vụ</title>
    </head>
    <body class="vertical-layout vertical-menu 2-columns   menu-expanded fixed-navbar"
          data-open="click" data-menu="vertical-menu" data-col="2-columns">
        <%@include file="/jsp/nav.jsp" %>

        <div class="app-content content">
            <div class="content-wrapper">
                <div class="content-header row">
                    <div class="content-header-left col-md-6 col-12 mb-2">
                        <h3 class="content-header-title">Công viêc/ nhiệm vụ</h3>
                    </div>
                    <div class="content-header-right col-md-6 col-12">  
                        <div class="btn-group float-md-right" > 
                            <a type="button" href="workspaceSumaryAction?id=<s:property value="workspace.id"/>" class="btn btn-danger round box-shadow-2 px-2">
                                <i class="ft-home"></i> Trở về Workspace</a>
                        </div>
                    </div>
                </div>
                <div class="content-body">
                    <!-- Zero configuration table -->

                    <section id="configuration">
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h4 class="card-title">Danh sách công việc trong Workspace: <s:property value="workspace.workspaceName"/></h4>
                                        <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
                                        <div class="heading-elements">
                                            <ul class="list-inline mb-0">
                                                <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                                                <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                                                <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                                                <li><a data-action="close"><i class="ft-x"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="card-content collapse show">
                                        <div class="card-body card-dashboard">
                                            <table class="table table-striped table-bordered zero-configuration hiden">
                                                <thead>
                                                    <tr>
                                                        <th>ID</th>
                                                        <th>Tên công việc</th>
                                                        <th>Người thực hiện</th>
                                                        <th>Ngày bắt đầu</th>
                                                        <th>Hạn kết thúc</th>
                                                        <th>Mức độ</th>
                                                        <th>Trạng thái</th>
                                                        <th>Estimate</th>
                                                        <th>Kiểm tra</th>
                                                        <th>Chức năng</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <s:iterator value="lstTask" var="test">
                                                        <tr>
                                                            <td><s:property value="id"/></td>
                                                            <td><s:property value="taskName"/></td>
                                                            <td><s:property value="assigneeUserId"/></td>
                                                            <td><s:property value="startDate"/></td>
                                                            <td><s:property value="dueDate"/></td>
                                                            <td><s:property value="priority"/></td>
                                                            <td><s:property value="status"/></td>
                                                            <td><s:property value="timeEstimate"/></td>
                                                            <td><s:property value="reviewBy"/></td>
                                                            <td>
                                                                <a type="button" class="btn btn-facebook" href="taskCRUD?workspaceId=<s:iterator value="workspace"><s:property value="id"/></s:iterator>&&tasklistid=<s:property value="id"/>&&event=view">
                                                                        Xử lý
                                                                    </a>
                                                                    <a type="button" class="btn btn-warning" href="taskCRUD?workspaceId=<s:iterator value="workspace"><s:property value="id"/></s:iterator>&&tasklistid=<s:property value="id"/>&&event=view">
                                                                        Hủy bỏ
                                                                    </a>
                                                                    <a type="button" class="btn btn-danger" href="taskCRUD?workspaceId=<s:iterator value="workspace"><s:property value="id"/></s:iterator>&&tasklistid=<s:property value="id"/>&&event=view">
                                                                        Đóng
                                                                    </a>
                                                                </td>
                                                            </tr>
                                                    </s:iterator>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!--/ Multi-column ordering table -->
                </div>
            </div>
        </div>
        <%@include file="/jsp/footer.jsp" %>
        <%@include file="/jsp/js.jsp" %>
    </body>
</html>
