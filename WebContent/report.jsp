<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>報表</title>
    <!-- BOOTSTRAP STYLES-->
    <link href="templete/bs-twopage/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="templete/bs-twopage/assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLES-->
    <link href="templete/bs-twopage/assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <!--mobile-->
    <link rel="stylesheet" type="text/css" media="screen and (max-width: 768px)" href="css/mobile.css">
    <!-- Font -->
    <link href="fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- 上傳檔案 -->
    <link href="css/dropzone.css" rel="stylesheet" type="text/css">
    <style>
        @font-face {
            font-family: BabyHeart;
            src: url(fonts/Typo_BabyHeartM.ttf);
        }
        
        @font-face {
            font-family: title;
            src: url(fonts/Typo_DecoSolidSlash.ttf);
        }
        
        .axis {
            font: 10px sans-serif;
        }
        
        .axis-title {
            text-anchor: end;
        }
        
        .axis path,
        .axis line {
            fill: none;
            stroke: #000;
            shape-rendering: crispEdges;
        }
        
        .axis--x path {
            display: none;
        }
        
        .axis--y .tick:not(.tick--one) line {
            stroke-opacity: .15;
        }
        
        .line {
            fill: none;
            stroke: steelblue;
            stroke-width: 1.5px;
            stroke-linejoin: round;
            stroke-linecap: round;
        }
        #search{
            position: relative;
            float: right;
        }
    </style>
</head>

<body>
    <div id="wrapper">
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="adjust-nav">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button> <a class="navbar-brand" style="font-family: title; font-size: 40px" href="#"><i class="fa fa-square-o "></i>&nbsp;PiMiYa</a> </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">首頁</a></li>
                        <li><a href="#">購物車</a></li>
                        <li><a href="#">帳戶</a></li>
                        <li><a href="#">登入/登出</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation" style="position: fixed">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li class="text-center user-image-back"> <img src="templete/bs-twopage/assets/img/find_user.png" class="img-responsive" /> </li>
                    <li> <a href="#"><i class="fa fa-edit"></i>帳戶管理</a> </li>
                    <li> <a href="#"><i class="fa fa-table "></i>買家帳戶管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="#">瀏覽紀錄</a></li>
                            <li><a href="#">訂單查詢</a></li>
                        </ul>
                    </li>
                    <li> <a href="#"><i class="fa fa-bar-chart-o"></i>賣家帳戶管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="#">商場首頁</a></li>
                            <li><a href="shelve.html">上架商品</a></li>
                            <li><a href="#">訂單管理</a></li>
                            <li><a href="report.html">業績報表</a></li>
                        </ul>
                    </li>
                    <li><a href="#"><i class="fa fa-comment "></i>個人訊息</a></li>
                    <li><a href="#"><i class="fa fa-trophy"></i>評價查詢</a></li>
        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                <!--------匯出-------->
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">報表匯出</h3> </div>
                            <div class="panel-body">
                                <form class="form-horizontal form_left" role="form">
                                    <div class="form-body">
                                        <div class="form-group row col-md-6">
                                            <label class="col-md-3 control-label"><span class="required-star-after">資料代碼</span></label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" placeholder="請輸入文字"> </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label class="col-md-3 control-label">資料名稱</label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" placeholder="請輸入文字"> </div>
                                        </div>
                                        <div class="form-group col-md-12 text-center">
                                            <button data-dismiss="modal" class="btn btn-primary">匯出Pdf</button>
                                            <button data-dismiss="modal" class="btn btn-deafult" aria-hidden="true" 　type="reset">清除</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!--動態表格(show筆數)-->
                        <div class="col-md-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">清單</h3> </div>
                                <div class="panel-body">
                                    <table class="table table-striped table-bordered table-hover" id="data_table_1">
                                        <thead>
                                            <tr>
                                                <th class="text-center">商品名稱</th>
                                                <th class="text-center">售出數量</th>
                                                <th class="text-center">剩餘數量</th>
                                                <th class="text-center">售出總額</th>
                                            </tr>
                                        </thead>
                                        <tbody class="text-right">
                                            <tr>
                                                <td data-title="商品名稱" class="text-center">衣服</td>
                                                <td data-title="售出數量">25</td>
                                                <td data-title="剩餘數量">17</td>
                                                <td data-title="售出總額">$2,500</td>
                                            </tr>
                                            <tr>
                                                <td data-title="商品名稱" class="text-center">襪子</td>
                                                <td data-title="售出數量">36</td>
                                                <td data-title="剩餘數量">21</td>
                                                <td data-title="售出總額">$720</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <!--動態表格(show筆數)-->
                        <!--div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">圖表</h3> </div>
                            <div class="panel-body">
                                <svg width="960" height="500"></svg>
                                <script src="js/d3.min.js"></script>
                                <script src="js/chart.js"></script>
                            </div>
                        </div--></div>
                </div>
                <!--------end 匯出-------->
            </div>
            <!-- /. ROW  -->
            <hr />
            <div class="row">
                <div class="col-md-12">
                    <h5>Information</h5> This is a type of bare admin that means you can customize your own admin using this admin structured template . For More Examples of bootstrap elements or components please visit official bootstrap website <a href="http://getbootstrap.com" target="_blank">getbootstrap.com</a> . And if you want full template please download <a href="http://www.binarytheme.com/bootstrap-free-admin-dashboard-template/" target="_blank">FREE BCORE ADMIN </a>&nbsp;,&nbsp; <a href="http://www.binarytheme.com/free-bootstrap-admin-template-siminta/" target="_blank">FREE SIMINTA ADMIN</a> and <a href="http://binarycart.com/" target="_blank">FREE BINARY ADMIN</a>. </div>
            </div>
            <!-- /. ROW  -->
        </div>
        <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="templete/bs-twopage/assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="templete/bs-twopage/assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="templete/bs-twopage/assets/js/jquery.metisMenu.js"></script>
    <!-- CUSTOM SCRIPTS -->
    <script src="templete/bs-twopage/assets/js/custom.js"></script>
    <!-- 動態表格 -->
    <script type="text/javascript" src="templete/1103-art/plugins/data-tables-bs3/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="templete/1103-art/plugins/data-tables-bs3/DT_bootstrap.js"></script>
    <script type="text/javascript" src="templete/1103-art/plugins/table-advanced.js"></script>
    <script>
        jQuery(document).ready(function () {
            TableAdvanced.init();
        });
    </script>
</body>

</html>