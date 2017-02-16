<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/1/21 0021
  Time: 下午 10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>公司网盘</title>
    <!-- Tell tde browser to be responsive to screen widtd -->
    <meta content="widtd=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!-- tdeme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from tde css/skins
         folder instead of downloading all of tdem to reduce tde load. -->
    <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">

    <!-- 文件上传 -->
    <link rel="stylesheet" href="js/uploader/webuploader.css">
    <link rel="stylesheet" href="css/style.css">

</head>
<body class="hold-transition skin-blue sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">

    <%@include file="../include/head.jsp"%>

    <!-- =============================================== -->

    <!-- Left side column. contains tde sidebar -->
    <%@include file="../include/side.jsp"%>

    <!-- =============================================== -->

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>

                <small></small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 公司网盘</a></li>
                <li><a href="#">浏览网盘</a></li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">

            <!-- Default box -->
            <div class="box">
                <div class="box-header witd-border">
                    <h3 class="box-title">文件列表</h3>

                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                            <i class="fa fa-minus"></i></button>
                        <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
                            <i class="fa fa-times"></i></button>
                    </div>
                </div>
                <div class="box-body">
                    <div class="box">
                        <div class="form-actions" style="float:right">
                            <button class="btn btn-primary newFile" style="float:right">新建文件夹</button>&nbsp;&nbsp;
                            <div id="picker" style="float:right">上传文件</div>&nbsp;&nbsp;

                        </div>
                        <div class="box-body">
                            <table class="table table-bordered">

                                <tr class="fileName">
                                    <td><div class="dic"></div><span>电影</span></td>
                                    <td><div class="dic"></div><span>哈哈</span></td>
                                    <td><div class="txt"></div><span>文件</span></td>
                                    <td><div class="txt"></div><span>视频</span></td>
                                    <td><div class="dic"></div><span>哈哈</span></td>
                                    <td><div class="txt"></div><span>文件</span></td>
                                    <td><div class="txt"></div><span>视频</span></td>
                                    <td><div class="dic"></div><span>哈哈</span></td>
                                    <td><div class="txt"></div><span>文件</span></td>
                                    <td><div class="txt"></div><span>视频</span></td>
                                </tr>
                                <tr class="fileName">
                                    <td><div class="dic"></div><span>哈哈</span></td>
                                    <td><div class="txt"></div><span>文件</span></td>
                                    <td><div class="txt"></div><span>视频</span></td>
                                    <td><div class="dic"></div><span>哈哈</span></td>
                                    <td><div class="dic"></div><span>电影</span></td>
                                    <td><div class="dic"></div><span>哈哈</span></td>
                                    <td><div class="txt"></div><span>文件</span></td>
                                    <td><div class="txt"></div><span>视频</span></td>

                                    <td><div class="txt"></div><span>文件</span></td>
                                    <td><div class="txt"></div><span>视频</span></td>
                                </tr>
                                <tr class="fileName">
                                    <td><div class="dic"></div><span>电影</span></td>
                                    <td><div class="dic"></div><span>哈哈</span></td>
                                    <td><div class="txt"></div><span>文件</span></td>
                                    <td><div class="txt"></div><span>视频</span></td>

                                </tr>

                            </table>
                        </div>
                        <!-- /.box-body -->

                    </div>
                    <!-- /.box -->
                </div>
                <!-- /.box-body -->

            </div>
            <!-- /.box -->

        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 2.3.3
        </div>
        <strong>Copyright &copy; 2017 <a href="http://hngc.com">河南功成</a>.</strong> All rights
        reserved.
    </footer>


</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.0 -->
<script src="plugins/jQuery/jQuery-2.2.0.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/app.min.js"></script>

<script src="js/uploader/webuploader.min.js"></script>
<script>
    $(function () {

        //文件上传
        var uploder = WebUploader.create({
            swf : "js/uploader/Uploader.swf",
            server: "#",
            pick: '#picker',
            auto : true,
            fileVal:'file',
            /*accept: {
             title: 'Images',
             extensions: 'gif,jpg,jpeg,bmp,png',
             mimeTypes: 'image/!*'
             }*/
        });

    });
</script>
</body>
</html>
