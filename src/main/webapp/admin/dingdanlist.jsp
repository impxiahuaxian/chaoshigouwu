<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <title>后台管理系统</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport' />

    <!--[if lt IE 9]>
    <script src='assets/javascripts/html5shiv.js' type='text/javascript'></script>
    <![endif]-->
    <link href='assets/stylesheets/bootstrap/bootstrap.css' media='all' rel='stylesheet' type='text/css' />
    <link href='assets/stylesheets/bootstrap/bootstrap-responsive.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / jquery ui -->
    <link href='assets/stylesheets/jquery_ui/jquery-ui-1.10.0.custom.css' media='all' rel='stylesheet' type='text/css' />
    <link href='assets/stylesheets/jquery_ui/jquery.ui.1.10.0.ie.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / switch buttons -->
    <link href='assets/stylesheets/plugins/bootstrap_switch/bootstrap-switch.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / xeditable -->
    <link href='assets/stylesheets/plugins/xeditable/bootstrap-editable.css' media='all' rel='stylesheet' type='text/css' />
    <link href='assets/stylesheets/plugins/common/bootstrap-wysihtml5.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / wysihtml5 (wysywig) -->
    <link href='assets/stylesheets/plugins/common/bootstrap-wysihtml5.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / jquery file upload -->
    <link href='assets/stylesheets/plugins/jquery_fileupload/jquery.fileupload-ui.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / full calendar -->
    <link href='assets/stylesheets/plugins/fullcalendar/fullcalendar.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / select2 -->
    <link href='assets/stylesheets/plugins/select2/select2.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / mention -->
    <link href='assets/stylesheets/plugins/mention/mention.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / tabdrop (responsive tabs) -->
    <link href='assets/stylesheets/plugins/tabdrop/tabdrop.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / jgrowl notifications -->
    <link href='assets/stylesheets/plugins/jgrowl/jquery.jgrowl.min.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / datatables -->
    <link href='assets/stylesheets/plugins/datatables/bootstrap-datatable.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / dynatrees (file trees) -->
    <link href='assets/stylesheets/plugins/dynatree/ui.dynatree.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / color picker -->
    <link href='assets/stylesheets/plugins/bootstrap_colorpicker/bootstrap-colorpicker.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / datetime picker -->
    <link href='assets/stylesheets/plugins/bootstrap_datetimepicker/bootstrap-datetimepicker.min.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / daterange picker) -->
    <link href='assets/stylesheets/plugins/bootstrap_daterangepicker/bootstrap-daterangepicker.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / flags (country flags) -->
    <link href='assets/stylesheets/plugins/flags/flags.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / slider nav (address book) -->
    <link href='assets/stylesheets/plugins/slider_nav/slidernav.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / fuelux (wizard) -->
    <link href='assets/stylesheets/plugins/fuelux/wizard.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / flatty theme -->
    <link href='assets/stylesheets/light-theme.css' id='color-settings-body-color' media='all' rel='stylesheet' type='text/css' />
    <!-- / demo -->
    <link href='assets/stylesheets/demo.css' media='all' rel='stylesheet' type='text/css' />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body class='contrast-red '>
<jsp:include page="top.jsp"></jsp:include>
<div id='wrapper'>
    <div id='main-nav-bg'></div>
    <jsp:include page="left.jsp"></jsp:include>
    <section id='content'>
        <div class='container-fluid'>
            <div class='row-fluid' id='content-wrapper'>
                <div class='span12'>
                    <div class='row-fluid'>
                        <div class='span12'>
                            <div class='page-header'>
                                <h1 class='pull-left'>
                                    <i class='icon-table'></i>
                                    <span>订单管理</span>
                                </h1>

                            </div>
                        </div>
                    </div>




                    <div class='row-fluid'>

                        <div class='span12 box bordered-box red-border' style='margin-bottom:0;'>
                            <div style="">
                                <form action="dingdanList" method="post">
                                    <input type="text" name="key" value="${key}" placeholder="订单编号">
                                    <button class="btn btn-danger" name="button" style="margin-bottom:10px" type="submit">搜索</button>
                                </form>

                            </div>
                            <div class='box-header red-background'>
                                <div class='title'>&nbsp;</div>
                            </div>

                            <div class='box-content box-no-padding'>
                                <div class='responsive-table'>
                                    <div class='scrollable-area'>
                                        <table class='data-table table table-bordered table-striped' style="margin-bottom:0px;">
                                            <thead>
                                            <tr>
                                                <th>
                                                    订单编号
                                                </th>
                                                <th>
                                                    金额
                                                </th>
                                                <th>
                                                    支付方式
                                                </th>
                                                <th>
                                                    创建时间
                                                </th>
                                                <th>
                                                    收货地址
                                                </th>
                                                <th>
                                                    付款方式
                                                </th>
                                                <th>
                                                    付款状态
                                                </th>
                                                <th>
                                                    发货状态
                                                </th>


                                                <th>操作</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${pageInfo.list}" var="dingdan">
                                            <tr>
                                                <td><a href="dingdanmsgList?ddno=${dingdan.ddno}">${dingdan.ddno}</a></td>
                                                <td>${dingdan.total}</td>
                                                <td>${dingdan.fkfs}</td>
                                                <td>${dingdan.savetime}</td>
                                                <td>${dingdan.shraddr}</td>
                                                <td>${dingdan.zffs}</td>
                                                <td>${dingdan.fkstatus}</td>
                                                <td>${dingdan.fhstatus}</td>
                                                <td>
                                                    <div class='text-right'>
                                                        <c:if test="${dingdan.fkstatus eq '已付款' and dingdan.fhstatus eq '未发货'}">
                                                            <a  href='updateFhstatus?id=${dingdan.id}'>发货</a>
                                                        </c:if>

                                                        <c:if test="${dingdan.fhstatus eq '待发货'}">
                                                            <a  href='updateFhstatus?id=${dingdan.id}'>发货</a>
                                                        </c:if>

                                                        <c:if test="${dingdan.fhstatus eq '交易完成'}">
                                                            <a class='btn btn-danger btn-mini' href='dingdanDel?id=${dingdan.id}'>
                                                                <i class='icon-remove'></i>
                                                            </a>
                                                        </c:if>

                                                    </div>
                                                </td>
                                            </tr>
                                            </c:forEach>
                                            <tr>
                                                <td colspan="9">
                                                    <p>当前 <span>${pageInfo.pageNum}</span> 页,总 <span>${pageInfo.pages}</span> 页,共 <span>${pageInfo.total}</span> 条记录</p>
                                                    <a href="dingdanList?pageNum=1&key=${key}">首页</a>
                                                    <a href="dingdanList?pageNum=${pageInfo.hasPreviousPage==false?1:pageInfo.prePage}&key=${key}">上一页</a>
                                                    <a href="dingdanList?pageNum=${pageInfo.hasNextPage==false?pageInfo.pages:pageInfo.nextPage}&key=${key}">下一页</a>
                                                    <a href="dingdanList?pageNum=${pageInfo.pages}&key=${key}">尾页</a>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='row-fluid'>
                    </div>
            </div>
        </div>
    </section>
</div>
<!-- / jquery -->
<script src='assets/javascripts/jquery/jquery.min.js' type='text/javascript'></script>
<!-- / jquery mobile events (for touch and slide) -->
<script src='assets/javascripts/plugins/mobile_events/jquery.mobile-events.min.js' type='text/javascript'></script>
<!-- / jquery migrate (for compatibility with new jquery) -->
<script src='assets/javascripts/jquery/jquery-migrate.min.js' type='text/javascript'></script>
<!-- / jquery ui -->
<script src='assets/javascripts/jquery_ui/jquery-ui.min.js' type='text/javascript'></script>
<!-- / bootstrap -->
<script src='assets/javascripts/bootstrap/bootstrap.min.js' type='text/javascript'></script>
<script src='assets/javascripts/plugins/flot/excanvas.js' type='text/javascript'></script>
<!-- / sparklines -->
<script src='assets/javascripts/plugins/sparklines/jquery.sparkline.min.js' type='text/javascript'></script>
<!-- / flot charts -->
<script src='assets/javascripts/plugins/flot/flot.min.js' type='text/javascript'></script>
<script src='assets/javascripts/plugins/flot/flot.resize.js' type='text/javascript'></script>
<script src='assets/javascripts/plugins/flot/flot.pie.js' type='text/javascript'></script>
<!-- / bootstrap switch -->
<script src='assets/javascripts/plugins/bootstrap_switch/bootstrapSwitch.min.js' type='text/javascript'></script>
<!-- / fullcalendar -->
<script src='assets/javascripts/plugins/fullcalendar/fullcalendar.min.js' type='text/javascript'></script>
<!-- / datatables -->
<script src='assets/javascripts/plugins/datatables/jquery.dataTables.min.js' type='text/javascript'></script>
<script src='assets/javascripts/plugins/datatables/jquery.dataTables.columnFilter.js' type='text/javascript'></script>
<!-- / wysihtml5 -->
<script src='assets/javascripts/plugins/common/wysihtml5.min.js' type='text/javascript'></script>
<script src='assets/javascripts/plugins/common/bootstrap-wysihtml5.js' type='text/javascript'></script>
<!-- / select2 -->
<script src='assets/javascripts/plugins/select2/select2.js' type='text/javascript'></script>
<!-- / color picker -->
<script src='assets/javascripts/plugins/bootstrap_colorpicker/bootstrap-colorpicker.min.js' type='text/javascript'></script>
<!-- / mention -->
<script src='assets/javascripts/plugins/mention/mention.min.js' type='text/javascript'></script>
<!-- / input mask -->
<script src='assets/javascripts/plugins/input_mask/bootstrap-inputmask.min.js' type='text/javascript'></script>
<!-- / fileinput -->
<script src='assets/javascripts/plugins/fileinput/bootstrap-fileinput.js' type='text/javascript'></script>
<!-- / modernizr -->
<script src='assets/javascripts/plugins/modernizr/modernizr.min.js' type='text/javascript'></script>
<!-- / retina -->
<script src='assets/javascripts/plugins/retina/retina.js' type='text/javascript'></script>
<!-- / fileupload -->
<script src='assets/javascripts/plugins/fileupload/tmpl.min.js' type='text/javascript'></script>
<script src='assets/javascripts/plugins/fileupload/load-image.min.js' type='text/javascript'></script>
<script src='assets/javascripts/plugins/fileupload/canvas-to-blob.min.js' type='text/javascript'></script>
<script src='assets/javascripts/plugins/fileupload/jquery.iframe-transport.min.js' type='text/javascript'></script>
<script src='assets/javascripts/plugins/fileupload/jquery.fileupload.min.js' type='text/javascript'></script>
<script src='assets/javascripts/plugins/fileupload/jquery.fileupload-fp.min.js' type='text/javascript'></script>
<script src='assets/javascripts/plugins/fileupload/jquery.fileupload-ui.min.js' type='text/javascript'></script>
<script src='assets/javascripts/plugins/fileupload/jquery.fileupload-init.js' type='text/javascript'></script>
<!-- / timeago -->
<script src='assets/javascripts/plugins/timeago/jquery.timeago.js' type='text/javascript'></script>
<!-- / slimscroll -->
<script src='assets/javascripts/plugins/slimscroll/jquery.slimscroll.min.js' type='text/javascript'></script>
<!-- / autosize (for textareas) -->
<script src='assets/javascripts/plugins/autosize/jquery.autosize-min.js' type='text/javascript'></script>
<!-- / charCount -->
<script src='assets/javascripts/plugins/charCount/charCount.js' type='text/javascript'></script>
<!-- / validate -->
<script src='assets/javascripts/plugins/validate/jquery.validate.min.js' type='text/javascript'></script>
<script src='assets/javascripts/plugins/validate/additional-methods.js' type='text/javascript'></script>
<!-- / naked password -->
<script src='assets/javascripts/plugins/naked_password/naked_password-0.2.4.min.js' type='text/javascript'></script>
<!-- / nestable -->
<script src='assets/javascripts/plugins/nestable/jquery.nestable.js' type='text/javascript'></script>
<!-- / tabdrop -->
<script src='assets/javascripts/plugins/tabdrop/bootstrap-tabdrop.js' type='text/javascript'></script>
<!-- / jgrowl -->
<script src='assets/javascripts/plugins/jgrowl/jquery.jgrowl.min.js' type='text/javascript'></script>
<!-- / bootbox -->
<script src='assets/javascripts/plugins/bootbox/bootbox.min.js' type='text/javascript'></script>
<!-- / inplace editing -->
<script src='assets/javascripts/plugins/xeditable/bootstrap-editable.min.js' type='text/javascript'></script>
<script src='assets/javascripts/plugins/xeditable/wysihtml5.js' type='text/javascript'></script>
<!-- / ckeditor -->
<script src='assets/javascripts/plugins/ckeditor/ckeditor.js' type='text/javascript'></script>
<!-- / filetrees -->
<script src='assets/javascripts/plugins/dynatree/jquery.dynatree.min.js' type='text/javascript'></script>
<!-- / datetime picker -->
<script src='assets/javascripts/plugins/bootstrap_datetimepicker/bootstrap-datetimepicker.js' type='text/javascript'></script>
<!-- / daterange picker -->
<script src='assets/javascripts/plugins/bootstrap_daterangepicker/moment.min.js' type='text/javascript'></script>
<script src='assets/javascripts/plugins/bootstrap_daterangepicker/bootstrap-daterangepicker.js' type='text/javascript'></script>
<!-- / max length -->
<script src='assets/javascripts/plugins/bootstrap_maxlength/bootstrap-maxlength.min.js' type='text/javascript'></script>
<!-- / dropdown hover -->
<script src='assets/javascripts/plugins/bootstrap_hover_dropdown/twitter-bootstrap-hover-dropdown.min.js' type='text/javascript'></script>
<!-- / slider nav (address book) -->
<script src='assets/javascripts/plugins/slider_nav/slidernav-min.js' type='text/javascript'></script>
<!-- / fuelux -->
<script src='assets/javascripts/plugins/fuelux/wizard.js' type='text/javascript'></script>
<!-- / flatty theme -->
<script src='assets/javascripts/nav.js' type='text/javascript'></script>

<!-- / demo -->
<script src='assets/javascripts/demo/jquery.mockjax.js' type='text/javascript'></script>
<script src='assets/javascripts/demo/inplace_editing.js' type='text/javascript'></script>
<script src='assets/javascripts/demo/charts.js' type='text/javascript'></script>
<script src='assets/javascripts/demo/demo.js' type='text/javascript'></script>
</body>
<script>

    function selectChildcategory(){
        var fid = $("#fid").val();
        if(fid!='') {
            $.ajax({
                url: "findChildCategory?fid=" + fid,
                datetype: "json",
                type: "post",
                contentType: "application/Json; charset=UTF-8",
                success: function (msg) {
                    $("#sid").empty();
                    //key2.append("<option value=\"\">请选择</option>");
                    $("#sid").append(msg);
                    form.render('select');
                }
            });
        }else{
            $("#sid").empty();
            $("#sid").append("<option value=''>请选择一级分类</option>");

        }
    }



</script>
<script src="../layer/jquery-2.0.3.min.js"></script>
<script src="../layer/layer.js"></script>
<script type="text/javascript">
    <% String error = (String)request.getAttribute("error");if(error!=null){%>
    layer.msg('${error}',{
        //skin: 'layer-ext-yourskin',
        //shade: [0.8, '#393D49'] ,// 透明度  颜色
        offset:'rt',
        anim: 2,
        time: 2000, //2s后自动关闭
    });
    <%}%>
</script>
</html>
