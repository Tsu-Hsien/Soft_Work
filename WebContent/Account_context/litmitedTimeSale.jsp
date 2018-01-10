<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html lang="zh-CN">
<!-- InstanceBegin template="/Templates/templates.dwt" codeOutsideHTMLIsLocked="false" -->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3個meta標籤*必須*放在最前面，任何其他內容都*必須*跟隨其後！ -->
    <!-- InstanceBeginEditable name="doctitle" -->
    <title>限時拍賣</title>
    <!-- InstanceEndEditable -->
    <!-- Bootstrap -->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
  	.thumb {
    	height: 75px;
    	border: 1px solid #000;
    	margin: 10px 5px 0 0;
  			}
	</style>
	
    <!-- InstanceBeginEditable name="head" -->
    <!-- InstanceEndEditable -->
</head>

<body>
    <!--------內容區塊-------->
    <!--------頁籤-------->
    <!--------外框模組-------->
    <div class="col-md-9">
        <!--換行表單-->
        <div class="panel panel-default">
            <div class="panel-body">
                <form role="form" class="form_list" name='BiddingProduct' action="addBidProductServlet" medthon="post">
                    <div class="form-body">
                        <div class="form-group">
                            <label><span class="red">！</span>商品名稱</label>
                            <input type="text" class="form-control" name="name" placeholder="請輸入文字"> <span class="help-block"> 此欄位為必填欄位</span>
                            <label>商品敘述</label>
                            <textarea class="form-control" rows="5" name="information"></textarea>
                        </div>
                        <div class="form-group">
                            <label>商品圖片</label><br/>
                            <div id = "test"></div>
                            <div class="file-upload btn btn-primary">
                                <label>請選擇圖片：</label> 
                             <input type="file" id="files" name="files[]" multiple />                        
							<output id="list"></output></div>
                        </div>
                        <div class="form-group">
                            <label>起標底價</label>
                            <input type="number" class="form-control" name="original_price" placeholder="設定價格">
                            <br/>
                            <label>競標截止日</label>
                            <input type="date" name='end_time' class="form-control"">
                            <br/>
                            <label>每次出價</label>
                            <input type="number" class="form-control" name="minbid_price" placeholder="出價"> </div>
                        <div class="form-group">
                            <label>類別</label>
                            <select class="form-control" name="product_type">
                                <option value="美容">美容</option>
                                <option value="服飾">服飾</option>
                                <option value="3C">3C</option>
                                <option value="日用品">日用品</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label >運費價格</label>
                            <br/>
                            <input type="number" name='shippingfee' class="form-control" name="price" placeholder="設定運費">
                        </div>
                        <!--換行表單-->
                    </div>
                    <button type="submit" style="float: right" class="btn btn-outline btn-default">開始競標</button>
                </form>
                <!--------end 頁籤-------->
            </div>
        </div>
    </div>
    <!--------end 內容區塊-------->
    <!-- InstanceEndEditable -->
    <!--------上傳檔案-------->
    <script>
        //橫式
        document.getElementById("FileAttachment").onchange = function () {
            document.getElementById("fileuploadurl").value = this.value;
        };
        //end 橫式
    </script>
    <!--------end上傳檔案-------->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="templete/1103-art/plugins/bootstrap/bootstrap.min.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="templete/1103-art/plugins/custom/custom.min.js"></script>
    <!-- 　Hover dropdown -->
    <script src="templete/1103-art/plugins/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="templete/1103-art/plugins/main.js"></script>
    <!-- 動態表格 -->
    <script type="text/javascript" src="templete/1103-art/plugins/data-tables-bs3/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="templete/1103-art/plugins/data-tables-bs3/DT_bootstrap.js"></script>
    <script type="text/javascript" src="templete/1103-art/plugins/table-advanced.js"></script>
    <script>
        jQuery(document).ready(function () {
            TableAdvanced.init();
        });
    </script>
    <!-- date -->
    <script type="text/javascript" src="templete/1103-art/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
    <script type="text/javascript" src="templete/1103-art/plugins/app.js"></script>
    <script type="text/javascript" src="templete/1103-art/plugins/form-components.js"></script>
    <!--script>
        jQuery(document).ready(function () {
            FormComponents.init();
        });
    </script-->
    <!-- 上傳檔案 -->
    <script src="templete/1103-art/plugins/dropzone.min.js"></script>
    <script src="templete/1103-art/plugins/dropzone.js"></script>
    <script>
	function handleFileSelect(evt) {
	    var files = evt.target.files; // FileList object
	    //console.log(evt);
	    // Loop through the FileList and render image files as thumbnails.
	    for (var i = 0, f; f = files[i]; i++) {
	      // Only process image files.
	      if (!f.type.match('image.*')) {
	        continue;
	      }

	      var reader = new FileReader();

	      // Closure to capture the file information.
	      reader.onload = (function(theFile) {
	    	  
	        return function(e) {
	          // Render thumbnail.
	          var span = document.createElement('span');
	          $("#image").val(escape(theFile.name));
	          span.innerHTML = ['<img class="thumb" name="image" src="', e.target.result,
	                            '" title="', escape(theFile.name), '"/><input type="text" name="image" hidden="hidden" value="'+escape(theFile.name)+'">'].join('');
	          document.getElementById('list').insertBefore(span, null);
	        };
	      })(f);

	      // Read in the image file as a data URL.
	      reader.readAsDataURL(f);
	    }
	  }

	  document.getElementById('files').addEventListener('change', handleFileSelect, false);
    </script>
</body>
<!-- InstanceEnd -->

</html>