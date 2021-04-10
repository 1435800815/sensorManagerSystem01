<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"/>

<body id="page-top">
<%--    <script type="text/javascript">--%>

<%--        window.onload=function(){--%>
<%--            $.ajax({--%>
<%--                url:"sensorData/querySensorData.do",--%>
<%--                type:"get",--%>
<%--                dataType:"json",--%>
<%--                success:function(data){--%>

<%--                    $.each(data,function(i,n){--%>
<%--                        $("#info").append("<tr>")--%>
<%--                            .append("<td>"+n.dtu_id+"</td>")--%>
<%--                            .append("<td>"+n.device_id+"</td>")--%>
<%--                            .append("<td>"+n.channel_id+"</td>")--%>
<%--                            .append("<td>"+n.date+"</td>")--%>
<%--                            .append("<td>"+n.time+"</td>")--%>
<%--                            .append("<td>"+n.temperature+"</td>")--%>
<%--                            .append("<td>"+n.frequency+"</td>")--%>
<%--                            .append("</tr>")--%>

<%--                    })--%>
<%--                }--%>
<%--            })--%>
<%--        }--%>
<%--    </script>--%>
<!-- Page Wrapper -->
<div id="wrapper">

    <!-- Sidebar -->
    <jsp:include page="sidebar.jsp"/>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <jsp:include page="topbar.jsp"/>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <h1 class="h3 mb-2 text-gray-800">Tables</h1>
                <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below.
                    For more information about DataTables, please visit the <a target="_blank"
                                                                               href="https://datatables.net">official
                        DataTables documentation</a>.</p>

                <!-- DataTales Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">
                                <div class="row">
                                    <div class="col-sm-12 col-md-6">
                                        <div class="dataTables_length" id="dataTable_length"><label>Show <select
                                                name="dataTable_length" aria-controls="dataTable"
                                                class="custom-select custom-select-sm form-control form-control-sm">
                                            <option value="10">10</option>
                                            <option value="25">25</option>
                                            <option value="50">50</option>
                                            <option value="100">100</option>
                                        </select> entries</label></div>
                                    </div>
                                    <div class="col-sm-12 col-md-6">
                                        <div id="dataTable_filter" class="dataTables_filter"><label>Search:<input
                                                type="search" class="form-control form-control-sm"
                                                placeholder="" aria-controls="dataTable"></label></div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-bordered dataTable" id="dataTable" width="100%"
                                               cellspacing="0" role="grid" aria-describedby="dataTable_info"
                                               style="width: 100%;">
                                            <thead>
                                            <tr>
                                                <th>DTU_Id</th>
                                                <th>Device_Id</th>
                                                <th>Channel_Id</th>
                                                <th>Date</th>
                                                <th>Time</th>
                                                <th>Temperature</th>
                                                <th>Frequency</th>
                                            </tr>
                                            </thead>
                                            <tfoot>
                                            <tr>
                                                <th>DTU_Id</th>
                                                <th>Device_Id</th>
                                                <th>Channel_Id</th>
                                                <th>Date</th>
                                                <th>Time</th>
                                                <th>Temperature</th>
                                                <th>Frequency</th>
                                            </tr>
                                            </tfoot>
                                            <tbody>
                                            <c:forEach items="${pageInfo.list}" var="sensorData">
                                                <tr>
                                                    <td>${sensorData.DTU_id}</td>
                                                    <td>${sensorData.device_id}</td>
                                                    <td>${sensorData.channel_id}</td>
                                                    <td>${sensorData.date}</td>
                                                    <td>${sensorData.time}</td>
                                                    <td>${sensorData.temperature}</td>
                                                    <td>${sensorData.frequency}</td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12 col-md-5">
                                        <div class="dataTables_info" id="dataTable_info" role="status"
                                             aria-live="polite">Showing ${pageInfo.pageNum} to ${pageInfo.pageSize} of ${pageInfo.total} entries
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-7">
                                        <div class="dataTables_paginate paging_simple_numbers">
                                            <ul class="pagination">
                                                <li class="paginate_button page-item previous disabled">
                                                    <a href="#" class="page-link">Previous</a>
                                                </li>
                                                <c:forEach items="${pageInfo.navigatepageNums}" var="page">
                                                    <c:if test="${page==pageInfo.pageNum}">
                                                        <li class="paginate_button page-item active">
                                                            <a href="#" class="page-link">${page}</a>
                                                        </li>
                                                    </c:if>
                                                    <c:if test="${page!=pageInfo.pageNum}">
                                                        <li class="paginate_button page-item">
                                                            <a href="querySensorData.do?page=${page}" class="page-link">${page}</a>
                                                        </li>
                                                    </c:if>
                                                </c:forEach>
                                                <li class="paginate_button page-item active">
                                                    <a href="#" class="page-link">1</a>
                                                </li>

                                                <li class="paginate_button page-item next" id="dataTable_next">
                                                    <a href="#" class="page-link">Next</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

        <!-- Footer -->
        <jsp:include page="footer.jsp"/>
        <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="login.jsp">Logout</a>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="vendor/datatables/jquery.dataTables.min.js"></script>
<script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

<!-- Page level custom scripts -->
<script src="js/demo/datatables-demo.js"></script>

</body>

</html>