<%-- 
    Document   : home
    Created on : Feb 25, 2020, 9:11:06 PM
    Author     : sonng
--%>

<%@page import="java.util.Properties"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<%
    Properties prop = (Properties) session.getAttribute("properties");
%>
<html class="loading" lang="en" data-textdirection="ltr">
    <%@include file="/tk/head.jsp" %>
    <body class="vertical-layout vertical-overlay-menu 2-columns   menu-expanded fixed-navbar"
          data-open="click" data-menu="vertical-overlay-menu" data-col="2-columns">
        <%@include file="/tk/topheader.jsp" %>
        <%@include file="/tk/leftmenu.jsp" %>
        <div class="app-content content">
            <div class="content-wrapper">
                <div class="content-header row">
                    <div class="content-header-left col-md-6 col-12 mb-2">
                        <h3 class="content-header-title mb-0">KPI</h3>
                        <div class="row breadcrumbs-top">
                            <div class="breadcrumb-wrapper col-12">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="tk_admin/home.jsp">Trang chủ</a>
                                    </li>
                                    <li class="breadcrumb-item"><a href="#">KPI</a>
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>

                <div  class="content-detached content">   
                    <div class="content-body">
                        <section id="demo">
                            <div class="row">
                                <div class="col-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="card-title">CHI TIẾT DANH SÁCH KPI</h4>
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
                                        <div class="card-content">
                                            <div class="card-body">
                                                <!-- Task List table -->
                                                <div class="table-responsive">
                                                    <table id="project-bugs-list" class="table table-white-space table-bordered  display no-wrap icheck table-middle">
                                                        <thead>
                                                            <tr>   
                                                                <th>KPI</th>
                                                                <th>Item</th>
                                                                <th>Đơn vị tính</th>
                                                                <th>Trọng số</th>
                                                                <th>Tần suất đánh giá</th>
                                                                <th>Trạng thái</th>
                                                                <th>Loại</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <s:iterator value="lsKpiItemSettings" var="t">
                                                                <tr>
                                                                    <td>
                                                                        <span class=""><s:property value="kpiName" /></span>
                                                                    </td>
                                                                    <td>
                                                                        <span class=""><s:property value="item" /></span>
                                                                    </td>  
                                                                    <td>
                                                                        <span class=""><s:property value="donViTinh" /></span>
                                                                    </td>
                                                                    <td>
                                                                        <span class=""><s:property value="trongSo" /></span>
                                                                    </td>
                                                                    <td>
                                                                        <span class=""><s:property value="tanSuatDanhGia" /></span>
                                                                    </td>
                                                                    <td>
                                                                        <span class=""><s:property value="status" /></span>
                                                                    </td>
                                                                    <td>
                                                                        <span class=""><s:property value="type" /></span>
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
                            </div>
                        </section>
                    </div>
                </div>
            </div> 
        </div>
        <%@include file="/tk/footer.jsp" %>
    </body>
</html>
