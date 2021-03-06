<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>劳务外包流水查询</title>
    <%@include file="../../include/css.jsp"%>
    <link rel="stylesheet" href="/static/plugins/datatables/jquery.dataTables.css">
    <link rel="stylesheet" href="/static/plugins/datatables/extensions/FixedHeader/css/dataTables.fixedHeader.min.css">
    <style>
        #box{
            margin: 5px 0px;
        }
    </style>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">

    <%@include file="../../include/header.jsp"%>
    <jsp:include page="../../include/sider.jsp">
        <jsp:param name="menu" value="business_device_work"/>
    </jsp:include>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Main content -->
        <section class="content">

            <!-- Default box -->
            <div class="box box-primary box-solid">
                <div class="box-header with-border">
                    <h3 class="box-title">劳务外包列表</h3>

                    <div class="box-tools pull-right">
                        <a href="/device/work/new" class="btn btn-primary"><i class="fa fa-plus"></i></a>
                    </div>
                </div>
                <div class="box-body">
                    <div class="box" id="box">
                        <form action="" class="form-inline">
                            <div class="form-group form-marginR">
                                <label for="exampleInputName2">流水号:</label>
                                <input type="text" class="form-control form-angle input-sm" id="exampleInputName2" placeholder="">
                            </div>
                            <div class="form-group form-marginR">
                                <label for="exampleInputEmail2">用人单位:</label>
                                <input type="text" class="form-control form-angle input-sm" id="exampleInputName2" placeholder="">
                            </div>
                            <div class="form-group form-marginR">
                                <label for="exampleInputName2">状态:</label>
                                <!-- <div class="input-group"> -->
                                <select class="form-control form-angle input-sm" id="select_Type">
                                    <option value="1">完成</option>
                                    <option value="2">未完成</option>
                                </select>
                                <input type="hidden" name="workFlowType" id="workFlowType">
                                <!-- </div> -->
                            </div>
                            <div class="form-group form-marginR">
                                <label for="exampleInputName2">起止时间:</label>
                                <div class="input-group">
                                    <div class="input-group-addon form-angle input-sm"><i class="fa fa-calendar"></i></div>
                                    <input type="text" class="form-control form-angle form_datetime input-sm" name="createDate" id="exampleInputName2" >
                                </div> -
                                <div class="input-group">
                                    <div class="input-group-addon form-angle input-sm"><i class="fa fa-calendar"></i></div>
                                    <input type="text" class="form-control form-angle form_datetime input-sm" name="createDate" id="exampleInputName2" >
                                </div>
                            </div>
                            <a type="submit" class="btn btn-default btn-sm">查询</a>
                        </form>
                    </div>
                    <div class="box-body">
                    <table class="table table-bordered">
                        <tr>
                            <th>流水号</th>
                            <th>需求公司</th>
                            <th>公司地址</th>
                            <th>公司电话</th>
                            <th>法人代表</th>
                            <th>电话号码</th>
                            <th>身份证号</th>
                            <th>创建时间</th>
                            <th>状态</th>
                            <th>总佣金</th>
                            <th>合同</th>
                            <th>操作</th>
                        </tr>
                        <tr>
                            <td><a href="#" class="detail">3001</a></td>
                            <td>河南建业</td>
                            <td>河南郑州金水区81号</td>
                            <td>0371-89456321</td>
                            <td>胡八一</td>
                            <td>15026458956</td>
                            <td>410523195806024536</td>
                            <td>2016-10-10</td>
                            <td>未完成</td>
                            <td>10000.00</td>
                            <td><a href="#">下载</a></td>
                            <td><a href="#" class="detail">详情</a>&nbsp<a href="#">完成</a></td>
                        </tr>
                        <tr>
                            <td><a href="#" class="detail">3001</a></td>
                            <td>河南建业</td>
                            <td>河南郑州金水区81号</td>
                            <td>0371-89456321</td>
                            <td>胡八一</td>
                            <td>15026458956</td>
                            <td>410523195806024536</td>
                            <td>2016-10-10</td>
                            <td>完成</td>
                            <td>10000.00</td>
                            <td><a href="#">下载</a></td>
                            <td><a href="#" class="detail">详情</a></td>
                        </tr>
                    </table>
                    </div>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->

        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

</div>

<%@include file="../../include/js.jsp"%>
<script src="/static/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="/static/plugins/datatables/extensions/FixedHeader/js/dataTables.fixedHeader.min.js"></script>
<script src="/static/plugins/layer/layer.js"></script>
<script>
    $(function(){
        var table = $(".table").DataTable({
            "pageLength":25,
            "autoWidth":false,
            "lengthChange":false,
            /*  "lengthMenu":[5,10,15,20],*/
            "serverSide": true,
            "ajax":{
                "url":"/device/rent/load",
                "type":"get"
            },
            "searching":false,//不使用自带的搜索
            "order":[[0,'desc']],//默认排序方式,
            "ordering":false,
            "columns":[
                {"data":"id","name":"id"},
                {"data":function(row){
                    if(row.serialNumber) {
                        return "<a href='/device/rent/" + row.serialNumber + "'>" + row.serialNumber + "</a>";
                    } else {
                        return "";
                    }
                }},
                {"data":"companyName"},
                {"data":"tel"},
                {"data":"rentDate"},
                {"data":"backDate"},
                {"data":"state"},
                {"data":"totalPrice"},
                {"data":function(row){
                    if(row.state) {
                        return "";
                    } else {
                        return "<a href='javascript:;' rel='" + row.id + "' class='btn btn-xs btn-default checkBtn'> <i class='fa fa-check'></i> 完成</a>";
                    }
                }}
            ],
            "columnDefs":[
                {targets:[0],visible: false}
            ],
            "language":{ //定义中文
                "search": "搜索:",
                "zeroRecords":    "没有匹配的数据",
                "lengthMenu":     "显示 _MENU_ 条数据",
                "info":           "显示从 _START_ 到 _END_ 条数据 共 _TOTAL_ 条数据",
                "infoFiltered":   "(从 _MAX_ 条数据中过滤得来)",
                "loadingRecords": "加载中...",
                "processing":     "处理中...",
                "paginate": {
                    "first":      "首页",
                    "last":       "末页",
                    "next":       "下一页",
                    "previous":   "上一页"
                }
            }
        });
        //new $.fn.dataTable.FixedHeader(table);

        //将合同变为完成状态
        $(document).delegate(".checkBtn","click",function () {
            var id=$(this).attr("rel");
            layer.confirm("确定将合同修改成已完成么",function (index) {
                $.post("/device/rent/state/change",{"id":id}).done(function (resp) {
                    if(resp.status=='success'){
                        table.ajax.reload();
                    }
                }).error(function () {
                    layer.msg("服务器忙，请稍后再试");
                });
                layer.close(index);
            });
        });

    });
</script>
</body>
</html>
