<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>
<body>
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
    <!-- �W���ɮ� -->
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
    
        <div id="page-wrapper">
            <div id="page-inner">
                <!--------�ץX-------->
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">����ץX</h3> </div>
                            <div class="panel-body">
                                <form class="form-horizontal form_left" role="form">
                                    <div class="form-body">
                                        <div class="form-group row col-md-6">
                                            <label class="col-md-3 control-label"><span class="required-star-after">��ƥN�X</span></label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" placeholder="�п�J��r"> </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label class="col-md-3 control-label">��ƦW��</label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" placeholder="�п�J��r"> </div>
                                        </div>
                                        <div class="form-group col-md-12 text-center">
                                            <button data-dismiss="modal" class="btn btn-primary">�ץXPdf</button>
                                            <button data-dismiss="modal" class="btn btn-deafult" aria-hidden="true" �@type="reset">�M��</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!--�ʺA���(show����)-->
                        <div class="col-md-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">�M��</h3> </div>
                                <div class="panel-body">
                                    <table class="table table-striped table-bordered table-hover" id="data_table_1">
                                        <thead>
                                            <tr>
                                                <th class="text-center">�ӫ~�W��</th>
                                                <th class="text-center">��X�ƶq</th>
                                                <th class="text-center">�Ѿl�ƶq</th>
                                                <th class="text-center">��X�`�B</th>
                                            </tr>
                                        </thead>
                                        <tbody class="text-right">
                                            <tr>
                                                <td data-title="�ӫ~�W��" class="text-center">��A</td>
                                                <td data-title="��X�ƶq">25</td>
                                                <td data-title="�Ѿl�ƶq">17</td>
                                                <td data-title="��X�`�B">$2,500</td>
                                            </tr>
                                            <tr>
                                                <td data-title="�ӫ~�W��" class="text-center">���l</td>
                                                <td data-title="��X�ƶq">36</td>
                                                <td data-title="�Ѿl�ƶq">21</td>
                                                <td data-title="��X�`�B">$720</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <!--�ʺA���(show����)-->
                        <!--div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">�Ϫ�</h3> </div>
                            <div class="panel-body">
                                <svg width="960" height="500"></svg>
                                <script src="js/d3.min.js"></script>
                                <script src="js/chart.js"></script>
                            </div>
                        </div--></div>
                </div>
                <!--------end �ץX-------->
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

    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="templete/bs-twopage/assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="templete/bs-twopage/assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="templete/bs-twopage/assets/js/jquery.metisMenu.js"></script>
    <!-- CUSTOM SCRIPTS -->
    <script src="templete/bs-twopage/assets/js/custom.js"></script>
    <!-- �ʺA��� -->
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