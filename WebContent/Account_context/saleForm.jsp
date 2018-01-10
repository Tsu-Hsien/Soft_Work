<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<!-- InstanceBegin template="/Templates/templates.dwt" codeOutsideHTMLIsLocked="false" -->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3個meta標籤*必須*放在最前面，任何其他內容都*必須*跟隨其後！ -->
    <!-- InstanceBeginEditable name="doctitle" -->
    <title>新增商品</title>
	<style>
  		.thumb {
    		height: 75px;
    		border: 1px solid #000;
    		margin: 10px 5px 0 0;
  		}
	</style>
</head>

<body>
    <!-- InstanceBeginEditable name="main_content" -->
    <!--------內容區塊-------->
    <!--------頁籤-------->
    <!--------外框模組-------->
    <div class="col-md-9">
        <!--換行表單-->
        <div class="panel panel-default">
            <div class="panel-body">
                <form role="form" class="form_list" name='AddProduct' method="post" action="addProductServlet">
                    <div class="form-body">
                        <div class="form-group">
                            <label><span class="red">！</span>商品名稱</label>
                            <input type="text" class="form-control" name="name" placeholder="請輸入文字"> <span class="help-block"> 此欄位為必填欄位 </span>
                            <label>商品敘述</label>
                            <textarea class="form-control" rows="5" name='information'></textarea>
                        </div>
                        <div class="form-group">
                            <label>商品圖片</label><br/>
                            <div id = "test"></div>
                            <div class="file-upload btn btn-primary">
                                <label>請選擇圖片：</label> 
                             <input type="file" id="files" name="files[]" multiple />           
							<output id="list"></output></div>
                            </div>
                            <br/> 
                        </div>
                        <div class="form-group">
                            <label>商品價格</label>
                            <br/>
                            <input type="number" class="form-control" name="price" placeholder="設定價格">
                            <br/>
                            <label>商品數量</label>
                            <input type="number" class="form-control" name="quantity" placeholder="設定存貨"> </div>
                        <div class="form-group">
                            <label>類別</label>
                            <select class="form-control" name='product_type'>
                                <option value="美容">美容</option>
                                <option value="服飾">服飾</option>
                                <option value="3C">3C</option>
                                <option value="日用品">日用品</option>
                            </select>
                        </div>
                        <!--div class="form-group">
                            <label class="">商品款式</label>
                            <div class="panel-group" id="accordion">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h7 class="panel-title" style="font-size: 14px"> <a data-toggle="collapse" data-parent="#accordion" href="#set" class="collapsed">商品規格</a> </h7>
                                    </div>
                                    <div id="set" class="panel-collapse collapse" style="height: 0px;">
                                        <div class="panel-body">
                                            <input type="text" class="form-control" id="optionName" placeholder="選項名稱">
                                            <br/>
                                            <input type="optionPrice" class="form-control" id="seven" placeholder="價錢">
                                            <br/>
                                            <input type="optionStock" class="form-control" id="seven" placeholder="數量"> </div>
                                    </div>
                                </div>
                            </div>
                        </div-->
                        <div class="form-group">
                            <label >運費價格</label>
                            <br/>
                            <input type="number" name='shippingfee' class="form-control" name="price" placeholder="設定運費">
                        </div>
                        <!--換行表單-->
                         <button type="submit" style="float: right" class="btn btn-outline btn-default">開始販售</button>
                    </div>
                   
                </form>
                <!--------end 頁籤-------->
            </div>
        </div>
    </div>
    <!--------end 內容區塊-------->
    <!--------上傳檔案-------->
     <script>
        //橫式
        document.getElementById("FileAttachment").onchange = function () {
            document.getElementById("fileuploadurl").value = this.value;
        };
        //end 橫式
    </script>
    <!--------end上傳檔案-------->
    <!-- InstanceEndEditable -->
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
    <script type="text/javascript" src="../templete/1103-art/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
    <script type="text/javascript" src="../templete/1103-art/plugins/app.js"></script>
    <script type="text/javascript" src="../templete/1103-art/plugins/form-components.js"></script>
    <!--script>
        jQuery(document).ready(function () {
            FormComponents.init();
        });
    </script-->
    <!-- 上傳檔案 -->
    <script src="../templete/1103-art/plugins/dropzone.min.js"></script>
    <script src="../templete/1103-art/plugins/dropzone.js"></script>
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