<%-- 
    Document   : task-create
    Created on : Feb 28, 2021, 9:50:35 PM
    Author     : sonng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            session.removeAttribute("CssAndJs");
            session.setAttribute("CssAndJs", "task-create");
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="/jsp/header.jsp" %>
        <%@include file="/jsp/linkCss.jsp" %>
        <title><%=properties.getProperty("app.workspace.summary")%></title>
    </head>
    <body class="vertical-layout vertical-menu 2-columns   menu-expanded fixed-navbar"
          data-open="click" data-menu="vertical-menu" data-col="2-columns">
        <%@include file="/jsp/nav.jsp" %>

        <div class="app-content content">
            <form action="createTask" method="post" enctype="multipart/form-data">
                <div class="content-wrapper">
                    <div class="content-header row">
                        <div class="content-header-left col-md-6 col-12 mb-2">
                            <h3 class="content-header-title">Xem chi tiết công việc</h3>
                        </div>
                        <div class="content-header-right col-md-6 col-12">  
                            <div class="btn-group float-md-right" > 
                                <a type="button" href="workspaceSumaryAction?id=<s:property value="workspace.id"/>" class="btn btn-danger round box-shadow-2 px-2">
                                    <i class="ft-home"></i> Trở về Workspace</a>
                                <a type="button" href="viewAllTask?workspaceId=<s:property value="workspace.id"/>" class="btn btn-warning round box-shadow-2 px-2">
                                    <i class="ft-book"></i> Trở về Task List</a>


                                <button type="submit" onclick="countIdCheckList(); countIdUdf();" class="btn btn-info round box-shadow-2 px-2">
                                    <i class="ft-save"></i> <%=properties.getProperty("app.save")%></button>

                            </div>
                        </div>
                    </div>
                    <div class="content-body">
                        <!-- Zero configuration table -->
                        <section id="form-control-repeater">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="card-title" id="file-repeater">Công việc</h4>
                                            <a class="heading-elements-toggle"><i class="la la-ellipsis-h font-medium-3"></i></a>
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
                                            <div class="card-body">
                                                <div class="row">
                                                    <input hidden="true" id="countItemInputCheckList" name="countItemInputCheckList" value="" />
                                                    <input hidden="true" id="countItemInputUDF" name="countItemInputUDF" value="" />
                                                    <input hidden="true" name="workspaceId" value="<s:property value="workspace.id"/>" />
                                                    <input hidden="true" name="tasklistid" value="<s:property value="tasklist.id"/>" />
                                                </div>

                                                <div class="form-body">
                                                    <h4 class="form-section"><i class="ft-user"></i> THÔNG TIN CHUNG</h4>
                                                    <div class="row">
                                                        <div class="col-6">
                                                            <div class="form-group row">
                                                                <label class="col-md-3 label-control" for="projectinput1">Tên công việc/ nhiệm vụ</label>
                                                                <div class="col-md-9">
                                                                    <s:textfield disabled="true" cssClass="form-control" name="task.taskName"/>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-md-3 label-control" for="projectinput1">Tiền khoán</label>
                                                                <div class="col-md-9">
                                                                    <s:textfield disabled="true" cssClass="form-control" name="task.nganSach"/>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-md-3 label-control" for="projectinput1">Người thực hiện</label>
                                                                <div class="col-md-9">
                                                                    <s:textfield disabled="true" cssClass="form-control" name="task.assigneeUserId"/>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-md-3 label-control" for="projectinput1">Người kiểm tra</label>
                                                                <div class="col-md-9">
                                                                    <s:textfield disabled="true" cssClass="form-control" name="task.reviewBy"/>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-md-3 label-control" for="projectinput1">Mô tả</label>
                                                                <div class="col-md-9">
                                                                    <s:textarea disabled="true" cssClass="form-control" name="task.taskDesc"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-6">
                                                            <div class="form-group row">
                                                                <label class="col-md-3 label-control" for="projectinput1">Ngày bắt đầu</label>
                                                                <div class="col-md-9">
                                                                    <s:textfield disabled="true" cssClass="form-control" name="task.startDate"/>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-md-3 label-control" for="projectinput1">Hạn cuối cùng</label>
                                                                <div class="col-md-9">
                                                                    <s:textfield disabled="true" cssClass="form-control" name="task.dueDate"/>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-md-3 label-control" for="projectinput1">Mức độ ưu tiên</label>
                                                                <div class="col-md-9">
                                                                    <s:textfield disabled="true" cssClass="form-control" name="task.priority"/>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-md-3 label-control" for="projectinput1">Estimate</label>
                                                                <div class="col-md-9">
                                                                    <s:textfield disabled="true" cssClass="form-control" name="task.timeEstimate"/>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-md-3 label-control" for="projectinput1">Task list</label>
                                                                <div class="col-md-9">
                                                                    <s:textfield disabled="true" cssClass="form-control" name="task.tasklistid"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <h4 class="form-section"><i class="ft-folder"></i> SUB - TASK</h4>
                                                <div class="row">
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
                                                            <s:iterator value="lstTasks" var="test">
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
                                                                                Xem
                                                                            </a>
                                                                            <a type="button" class="btn btn-warning" href="taskCRUD?workspaceId=<s:iterator value="workspace"><s:property value="id"/></s:iterator>&&tasklistid=<s:property value="id"/>&&event=view">
                                                                                Sửa
                                                                            </a>
                                                                            <a type="button" class="btn btn-danger" href="taskCRUD?workspaceId=<s:iterator value="workspace"><s:property value="id"/></s:iterator>&&tasklistid=<s:property value="id"/>&&event=view">
                                                                                Xóa
                                                                            </a>
                                                                        </td>
                                                                    </tr>
                                                            </s:iterator>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <h4 class="form-section"><i class="ft-server"></i> UDF</h4>
                                                <div class="row">
                                                    <table class="table table-striped table-bordered zero-configuration hiden">
                                                        <thead>
                                                            <tr>
                                                                <th>ID</th>
                                                                <th>Mô tả UDF</th>
                                                                <th>Loại giá trị</th>
                                                                <th>Giá trị UDF</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <s:iterator value="lstUdf" var="test">
                                                                <tr>
                                                                    <td><s:property value="id"/></td>
                                                                    <td><s:property value="refKey"/></td>
                                                                    <td><s:property value="extValue1"/></td>
                                                                    <td><s:property value="fieldValue"/></td>
                                                                </tr>
                                                            </s:iterator>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <h4 class="form-section"><i class="ft-check-square"></i> ĐẦU MỤC KIỂM TRA</h4>
                                                <div class="row">
                                                    <div class="col-12">
                                                        <div class="form-group row"  > 
                                                            <s:iterator value="lstChecklists" var="checklist">
                                                                <div class="row" style="padding-left: 20px">
                                                                    <div class="col-12"><s:property value="checkListName"/></div>
                                                                    <div class="col-12">
                                                                        <s:iterator value="lstChecklistItems" var="checklistitem">
                                                                            <s:if test="#checklist.id == #checklistitem.tkWsTaskChecklist.id">
                                                                                <li><s:property value="itemName"/></li>
                                                                                </s:if>
                                                                            </s:iterator>
                                                                    </div>
                                                                </div>
                                                            </s:iterator>
                                                        </div>
                                                    </div>
                                                </div>
                                                <h4 class="form-section"><i class="ft-file"></i> TỆP ĐÍNH KÈM</h4>
                                                <div class="row">
                                                    <div class="col-6">
                                                        <div class="form-group row">
                                                            <s:iterator value="lstAttachmentses">
                                                                <s:property value="fileName"/>
                                                            </s:iterator>
                                                        </div>
                                                    </div>
                                                </div>
                                                <h4 class="form-section"><i class="ft-smartphone"></i> THẢO LUẬN</h4>
                                                <div class="row">
                                                    <div class="col-6">
                                                        <div class="form-group row">
                                                            <div class="col-md-12">
                                                                <s:iterator value="lstComments">
                                                                    <s:property value="comment"/>
                                                                </s:iterator>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                    </div>
                    </section>
                </div>
        </div>
    </form>                                                
</div>

<%@include file="/jsp/footer.jsp" %>
<%@include file="/jsp/js.jsp" %>
</body>
</html>
