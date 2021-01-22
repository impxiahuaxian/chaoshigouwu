<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>网络百货购物商城系统</title>
    <meta name="robots" content="noindex, follow" />
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon -->


    <!-- CSS
	============================================ -->

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/vendor/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/plugins/plugins.css">

    <!-- Vendor & Plugins CSS (Please remove the comment from below vendor.min.css & plugins.min.css for better website load performance and remove css files from avobe) -->
    <!--
    <script src="assets/js/vendor/vendor.min.js"></script>
    <script src="assets/js/plugins/plugins.min.js"></script>
    -->

    <!-- Main Style CSS (Please use minify version for better website load performance) -->
    <link rel="stylesheet" href="assets/css/style.css">
    <!--<link rel="stylesheet" href="assets/css/style.min.css">-->
    <style>
        /*验证码*/

        .upload-awrp {
            overflow: hidden;
            margin: 120px 0;
        }

        .code {
            font-family: Arial;
            font-style: italic;
            font-size: 30px;
            border: 0;
            letter-spacing: 3px;
            font-weight: bolder;
            float: left;
            cursor: pointer;
            width: 150px;
            height: 31px;
            line-height: 30px;
            text-align: center;
            vertical-align: middle;
            border: 1px solid #6D6D72;
        }
    </style>

</head>

<body>


<!-- Start Header -->
<jsp:include page="header.jsp"></jsp:include>
<div class="breadcumb-area ptb--100 ptb_md--100 ptb_sm--100  bg_image bg_image--3">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="inner text-center">
                    <h2 class="font--40 mb--0">订单付款</h2>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Start Header -->

<!-- Start Search Flyover -->

<!-- End Search Flyover -->
<!-- Start Hamburger -->

<!-- End Hamburger -->
<!-- Start Breadumb Area -->

<!-- End Breadumb Area -->
<div class="main-wrapper">
    <!-- My Account Page -->
    <div class="my-account-area ptb--120 ptb_md--80 ptb_sm--80 bg-color" data-bg-color="#ffffff">
        <div class="container">
            <div class="row">
                <!-- Login Form -->
                <!--// Login Form -->
                <!-- Register Form -->
                <div class="col-lg-12 mt_md--30 mt_sm--30">
                    <div class="login-form-wrapper">
                        <form action="updateFkstatus?id=${dingdan.id}" method="post" class="sn-form sn-form-boxed">
                            <div class="sn-form-inner">


                                <div class="row">

                                    <div class="col-md-12 col-12 mb--20">
                                        <label>付款金额：<span style="color:red;font-weight: bold">￥${dingdan.total}</span></label>
                                    </div>

                                    <div class="col-md-12 col-12 mb--20">
                                        <label>付款方式*</label>
                                        <select name="zffs" required oninvalid="setCustomValidity('请选择付款方式')" oninput="setCustomValidity('');">
                                            <option value="支付宝">支付宝</option>
                                            <option value="微信">微信</option>
                                            <option value="银行卡">银行卡</option>
                                        </select>
                                    </div>



                                </div>

                                <div class="single-input">
                                    <button type="submit">
                                        <span>提交</span>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!--// Register Form -->
            </div>
        </div>
    </div>
    <!--// My Account Page -->

</div>

<!-- Quick View Modal -->
<!--// Quick View Modal -->
<!-- Start Footer Area -->
<jsp:include page="foot.jsp"></jsp:include>
<!-- End Footer Area -->















<!-- JS
============================================ -->
<script src="layer/jquery-2.0.3.min.js"></script>
<script src="layer/layer.js"></script>
<script>

    $("#reupass").blur(function(){
        if($("#reupass").val()!=$("#upass").val()){
            layer.msg("确认密码输入错误");
            $("#reupass").val("");
        }
    })



    $("#register-form-name").blur(function(){
        var ussname = $("#register-form-name").val();
        if(ussname!='') {
            $.ajax({
                type: "post",
                url: "checkUname?uname=" + ussname,
                date: '',
                success: function (msg) {
                    if (msg == 1) {
                        layer.msg("帐号已被注册");
                        $("#register-form-name").val("");
                    }
                }
            })
        }
    });


    function up(tt)
    {
        layer.open({
            type: 2,
            title: '上传文件',
            shadeClose: true,
            shade: false,
            maxmin: true, //开启最大化最小化按钮
            area: ['450px', '200px'],
            content: 'upload.jsp?Result='+tt
        });
    }
</script>
<!-- Modernizer JS -->
<script src="assets/js/vendor/modernizr.min.js"></script>
<!-- jQuery JS -->
<script src="assets/js/vendor/jquery.js"></script>
<!-- Bootstrap JS -->
<script src="assets/js/vendor/bootstrap.min.js"></script>
<script src="assets/js/plugins/plugins.js"></script>
<!-- Vendor & Plugins JS (Please remove the comment from below vendor.min.js & plugins.min.js for better website load performance and remove js files from avobe) -->
<!--
<script src="assets/js/vendor/vendor.min.js"></script>
<script src="assets/js/plugins/plugins.min.js"></script>
-->

<!-- Main JS -->
<script src="assets/js/main.js"></script>
<script type="text/javascript">
    /**
     * 验证码
     * @param {Object} o 验证码长度
     */
    $.fn.code_Obj = function(o) {
        var _this = $(this);
        var options = {
            code_l: o.codeLength,//验证码长度
            codeChars: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
                'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
                'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'
            ],
            codeColors: ['#f44336', '#009688', '#cddc39', '#03a9f4', '#9c27b0', '#5e4444', '#9ebf9f', '#ffc8c4', '#2b4754', '#b4ced9', '#835f53', '#aa677e'],
            code_Init: function() {
                var code = "";
                var codeColor = "";
                var checkCode = _this.find("#data_code");
                for(var i = 0; i < this.code_l; i++) {
                    var charNum = Math.floor(Math.random() * 52);
                    code += this.codeChars[charNum];
                }
                for(var i = 0; i < this.codeColors.length; i++) {
                    var charNum = Math.floor(Math.random() * 12);
                    codeColor = this.codeColors[charNum];
                }
                console.log(code);
                if(checkCode) {
                    checkCode.css('color', codeColor);
                    checkCode.className = "code";
                    checkCode.text(code);
                    checkCode.attr('data-value', code);
                }
            }
        };

        options.code_Init();//初始化验证码
        _this.find("#data_code").bind('click', function() {
            options.code_Init();
        });
    };
</script>
<script type="text/javascript">
    /**
     * 验证码
     * codeLength:验证码长度
     */
    $('#check-code').code_Obj({
        codeLength: 5
    });
</script>
</body>
<script type="text/javascript">



    <%
    String suc = (String) request.getSession().getAttribute("suc");
    if(suc!=null){
        session.removeAttribute("suc");
    %>
    layer.msg("注册成功");
    <%
    }
    %>


    <%
    String login = (String) request.getSession().getAttribute("login");
    if(login!=null){
        session.removeAttribute("login");
    %>
    layer.msg("用户名或密码错误");
    <%
    }
    %>

    $(document).ready(function(){
        $("#yzm").blur(function(){

            var yzm = $("#yzm").val().toLowerCase();
            var data_code = $("#data_code").html().toLowerCase();
            if(yzm!=data_code){
                layer.msg("验证码错误");
                $("#yzm").val("");
                return false;
            }
        })
    })

</script>

</html>



