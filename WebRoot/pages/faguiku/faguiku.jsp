<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path1 = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path1+"/";
 %>
<!doctype html>
<html>
  <head><link rel="shortcut icon" href="<%=basePath%>imgs/favicon.ico"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>法规库</title>
    <link href="<%=path1 %>/bootstrap-3.2.0/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="<%=path1 %>/css/faguiku/faguiku.css"/>
    <link rel="stylesheet" type="text/css" href="<%=path1 %>/css/common.css"/>
  </head>
  
  <body>
  	
  	<div class="container">
    	<!-- 导航条界面开始 -->
		<%@ include file="../../pages/common/navbar.jsp" %>
		<!-- 导航条界面结束 -->
      	<div class="row">
                <div><button id="addRule" data-toggle="modal" data-target="#ruleModal" class="btn btn-primary  btn-lg col-md-5 col-lg-5"><span class='glyphicon glyphicon-plus'></span>&nbsp;&nbsp;增加法规</button></div>
                <div><button id="sousuo" data-toggle="modal" data-target="#sousuoModal" class="btn btn-primary btn-lg col-md-5 col-md-offset-2 col-lg-5 col-lg-offset-2"><span class='glyphicon glyphicon-search'></span>&nbsp;&nbsp;搜索法规</button></div>
        </div>
        <div class="row" style="margin-top: 10px;">
            	<div class="allFaGui_table_body">
            			<!-- Ajax填充 -->
            	</div>
            	
            	<div class="text-center">
            	<ul id="index-bar" class="pagination">
					<!-- Ajax填充分页 -->
				</ul>
				</div>
			
      	</div>
      
      
		<!-- 版权说明开始 -->
		<footer style="text-align: center;margin-top: 20px;">
          <%@ include file="../../pages/common/copyright.jsp" %>
     	</footer>
     	<!-- 版权说明结束 -->
     	
     	
     	    <!-- 增加法规modal开始 -->
			<div class="modal fade" id="ruleModal" tabindex="-1" role="dialog" aria-labelledby="ruleModalLabel" aria-hidden="true"  data-backdrop="static">
				  <div class="modal-dialog modal-lg">
					    <div class="modal-content">
						      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							        <h4 class="modal-title" id="ruleModalLabel">增加法规</h4>
						      </div>
						      
						      <div class="modal-body">
						      	<div class="rule">
						      		<dl class="dl-horizontal">
						      		<p class="help-block text-center">请<font style="color:red">按顺序</font>依次填写！！！</p>
									  <dt>法规文号</dt>
									  <dd><input type="text" id="fgwh" class="form-control fgwh" value="" name="fgwh"></dd>
									  <dt>法规条文</dt>
									  <dd><textarea type="text" class="form-control fgtw" value="" name="fgtw"></textarea></dd>
									  <dt>法规全文</dt>
									  <dd>
										  <div id="uploadify2">
										  	 <button id="uploadify">上传文件</button>
										  	 <div id="fileQueue">
										  	 </div>
									       </div>
									       
									       
									       <!--  <input type="file" name="uploadify" id="uploadify" />
									        <p>
									            <a href="javascript:$('#uploadify').uploadifyUpload()">上传</a>| 
									            <a href="javascript:$('#uploadify').uploadifyClearQueue()">取消上传</a>
									        </p> -->
									  </dd>
									  <dt>适用地区</dt>
									  <dd>
									  <% String[] dqarea = {"北京","上海","天津","重庆","黑龙江","吉林","辽宁","大连","山东","青岛","河北","内蒙古","新疆","青海","宁夏","甘肃","陕西","山西","河南","湖北","湖南","四川","贵州","云南","西藏","江西","安徽","江苏","浙江","宁波","福建","厦门","广东","深圳","广西","海南"}; %>
									  	<select multiple="multiple" class="form-control sydq" name="sydq">
									  		<option value="全国">全国</option>
									  		<% for(int i=0;i<dqarea.length;i++)
									  			{
									  		%>
									  		<option value="<%=dqarea[i] %>"><%=dqarea[i] %></option>
									  		<% 
									  			}
									  		 %>
									  	</select>
									  </dd>
									  <dt>税种</dt>
									  <dd>
									  	<div class="btn-group sz" data-toggle="buttons">
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="tdzz" autocomplete="off" value="土地增值税"> 土地增值税
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="qysd" autocomplete="off" value="企业所得税"> 企业所得税
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="yy" autocomplete="off" value="营业税及其附加"> 营业税及其附加
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="zz" autocomplete="off" value="增值税"> 增值税
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="s7" autocomplete="off" value="个人所得税"> 个人所得税
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="fc" autocomplete="off" value="房产税"> 房产税
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="s6" autocomplete="off" value="契税"> 契税
										  </label>
										  
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="s8" autocomplete="off" value="土地使用税"> 土地使用税
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="yh" autocomplete="off" value="印花税"> 印花税
										  </label>
										</div>
									  	
									  </dd>
									  <dt>关键词</dt>
									  <dd><input type="text" class="form-control gjc" value="" name="gjc"></dd>
									  <dt>备注</dt>
									  <dd><input type="text" class="form-control bz" value="" name="bz"></dd>
									  <!-- <dt>您的账号</dt>
									  <dd><input type="text" class="form-control zh" value="请输入您的账号" name="zh"></dd> -->
									</dl>
						      		
						      	</div>
						      </div>
						      
						      <div class="modal-footer">
						      	<button type="button" id="confirmAddRule" class="btn btn-default btn-primary" data-dismiss="modal">确定</button>
						        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						      </div>
						    </div>
				  </div>
			</div>
			<!-- 增加法规modal结束 -->
			<%
	          	UserVO userFaguiKu =  (UserVO)session.getAttribute("userVo");
	          	String acountnumber = "";
	          	String companyName = "";
	          	String usertype = "";
		        if(userFaguiKu!=null)
		        { 
		            acountnumber = userFaguiKu.getAcountnumber();
		            companyName = userFaguiKu.getCompanyName();
		            usertype = userFaguiKu.getUsertype();
		             
		        }
          	%>
          	
          	<!-- 搜索法规modal开始 -->
			<div class="modal fade" id="sousuoModal" tabindex="-1" role="dialog" aria-labelledby="ruleModalLabel" aria-hidden="true"  data-backdrop="static">
				  <div class="modal-dialog modal-lg">
					    <div class="modal-content">
						      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							        <h4 class="modal-title" id="ruleModalLabel">搜索法规</h4>
						      </div>
						      
						      <div class="modal-body">
						      	<div class="rule">
						      		<dl class="dl-horizontal">
									  <dt>法规文号</dt>
									  <dd><input type="text" class="form-control fgwhsousuo" value=""></dd>
									  <dt>税种</dt>
									  <dd>
									  	<div class="btn-group szsousuo" data-toggle="buttons">
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="tdzz" autocomplete="off" value="土地增值税"> 土地增值税
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="qysd" autocomplete="off" value="企业所得税"> 企业所得税
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="yy" autocomplete="off" value="营业税及所得"> 营业税及所得
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="zz" autocomplete="off" value="增值税"> 增值税
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="fc" autocomplete="off" value="房产税"> 房产税
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="s6" autocomplete="off" value="契税"> 契税
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="s7" autocomplete="off" value="个人所得税"> 个人所得税
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="s8" autocomplete="off" value="土地使用税"> 土地使用税
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="yh" autocomplete="off" value="印花税"> 印花税
										  </label>
										</div>
									  	
									  </dd>
									  <dt>关键词</dt>
									  <dd><input type="text" class="form-control gjcsousuo" value=""></dd>
									</dl>
						      		
						      		<p class="help-block text-center">可以选中其一，单独搜索，也可以多条件联合搜索，若全不选，则为全文搜索</p>
						      	</div>
						      </div>
						      
						      <div class="modal-footer">
						      	<button type="button" id="sousuoRuleConfirm" class="btn btn-default btn-primary" data-dismiss="modal">开始搜索</button>
						        <button type="button" id="quxiaosousuo" class="btn btn-default" data-dismiss="modal">取消搜索</button>
						      </div>
						    </div>
				  </div>
			</div>
			<!-- 搜索法规modal结束 -->
			
			<!-- 删除案例modal开始 -->
			<div id="confirmModal" class="modal fade" id="delModal" tabindex="-1" role="dialog" aria-labelledby="delModalLabel" aria-hidden="true">
				  <div class="modal-dialog">
					    <div class="modal-content">
						      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							        <h4 class="modal-title" id="delModalLabel">确定删除</h4>
						      </div>
						      
						      <div class="modal-body">
						      	<div class="text-center delFont" style="font-family: 微软雅黑;font-size:20px;letter-spacing: 3px;color:red;">
						      		确定要删除选中数据吗？
						      	</div>
						      </div>
						      
						      <div class="modal-footer">
						      	<button type="button" id="confirmDel" class="btn btn-default btn-primary btn-confirm" data-dismiss="modal">确定</button>
						        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
						      </div>
						    </div>
				  </div>
			</div>
			<!-- shanchu案例modal结束 -->
          	
     </div> <!-- /container -->
    <script src="<%=path1 %>/bootstrap-3.2.0/js/jquery-1.11.1.js"></script>
	<script src="<%=path1 %>/bootstrap-3.2.0/js/bootstrap.js"></script>
	<script src="<%=path1 %>/js/faguiku.js"></script>
	<script type="text/javascript" src="<%=path1 %>/js/bootstrap-paginator.min.js"></script>
	<script type="text/javascript" src="<%=path1 %>/jqueryuploadify3.2/jquery.uploadify.min.js"></script>
	<script type="text/javascript">
			$(document).ready(function(){  
			////////////导航条//////////////
			$('.fgNav').hide();
			//////////////////////////////
			var zh = '<%=acountnumber %>';
			var companyName = '<%=companyName %>';
			var usertype = '<%=usertype %>';
			var servletpath = "/alidata/server/tomcat-7.0.54/webapps/wbht/fileupload/";
			///////////////////权限问题开始/////////////////////
			if(usertype=="worker")
			{
				$('#addRule').hide();
			}
			///////////////////权限问题结束/////////////////////
			loadAllFagui(0,3,true,null,null,null,zh,companyName,usertype);
			
			var fgqwFileName = "";
			var extName = "";//后缀名
			var fgwh1 = "";
			$('.fgwh').blur(function(){
				fgwh1 = $('.fgwh').val();// 法规文号,用于上传文件的文件名 //
			});
			
			
			/* 文件上传 */
			$("#uploadify").uploadify({
				
				
                 //开启调试
		        'debug' : false,
		        //是否自动上传
		        'auto':true,
		        //超时时间
		        'successTimeout':99999,
		        //附带值
		        'formData':{
		            'userid':'userid',
		            //'fgwh1':document.getElementById('fgwh').value,
		            'username':'username',
		            'rnd':'加密密文rnd'
		           
		        },
		        //flash
		        'swf': "../../jqueryuploadify3.2/uploadify.swf",
		        //不执行默认的onSelect事件
		        'overrideEvents' : ['onDialogClose'],
		        //文件选择后的容器ID
		        'queueID':'uploadfileQueue',
		        //服务器端脚本使用的文件对象的名称 $_FILES个['upload']
		        'fileObjName':'upload',
		        //上传处理程序
		        //'uploader':'../../UploadFileAliyunServlet',
		        'uploader':"../../UploadFileServlet",
		        //浏览按钮的背景图片路径
		        'buttonImage':'../../imgs/upload.png',
		        //浏览按钮的宽度
		        'width':'120',
		        //浏览按钮的高度
		        'height':'120',
		        //expressInstall.swf文件的路径。
		        'expressInstall':'../../jqueryuploadify3.2/expressInstall.swf',
		        //在浏览窗口底部的文件类型下拉菜单中显示的文本
		        'fileTypeDesc':'支持的格式：',
		        //允许上传的文件后缀
		        'fileTypeExts':'*.jpg;*.jpge;*.gif;*.png;*.doc;*.txt;*.docx;*.pdf',
		        //上传文件的大小限制
		        'fileSizeLimit':'100MB',
		        //上传数量
		        'queueSizeLimit' : 25,
		        //每次更新上载的文件的进展
		        'onUploadProgress' : function(file, bytesUploaded, bytesTotal, totalBytesUploaded, totalBytesTotal) {
		             //有时候上传进度什么想自己个性化控制，可以利用这个方法
		             //使用方法见官方说明
		        },
		        //选择上传文件后调用
		        'onSelect' : function(file) {
		        	fgqwFileName = file.name;
		        	fgwh1 = $('.fgwh').val();// 法规文号 //
		        	if (fgqwFileName.lastIndexOf(".") >= 0) {
						extName = fgqwFileName.substring(fgqwFileName.lastIndexOf("."));
					}
		        	$("#fileQueue").append("<p>"+fgqwFileName+"</P>");
		            $('#uploadify').uploadify('upload');      //添加这行代码才可以访问servlet上传文件
		        },  
                'onUploadStart': function (file) {  
                    $("#uploadify").uploadify("settings", "formData", fgwh1);  
                    //在onUploadStart事件中，也就是上传之前，把参数写好传递到后台。  
                } ,
		        //返回一个错误，选择文件的时候触发
		        'onSelectError':function(file, errorCode, errorMsg){
		            switch(errorCode) {
		                case -100:
		                    alert("上传的文件数量已经超出系统限制的"+$('#uploadify').uploadify('settings','queueSizeLimit')+"个文件！");
		                    break;
		                case -110:
		                    alert("文件 ["+file.name+"] 大小超出系统限制的"+$('#uploadify').uploadify('settings','fileSizeLimit')+"大小！");
		                    break;
		                case -120:
		                    alert("文件 ["+file.name+"] 大小异常！");
		                    break;
		                case -130:
		                    alert("文件 ["+file.name+"] 类型不正确！");
		                    break;
		            }
		        },
		        //检测FLASH失败调用
		        'onFallback':function(){
		           // alert("您未安装FLASH控件，无法上传图片！请安装FLASH控件后再试。");
		        },
		        //上传到服务器，服务器返回相应信息到data里
		        'onUploadSuccess':function(file, data, response){
		         	$('#' + file.id).find('.data').html(' - 完成');  
                	if(data==1){
                	alert("上传成功");
                	}else{
                	alert("上传失败");
                	}
                	//alert(data);
		        } 
		    });
		 
		    var addFlag = false;//用于看是否可以进行增加操作
			$('#confirmAddRule').click(function(){
				var fgwh = $('.fgwh').val();// 法规文号 //
				var fgtw = $('.fgtw').val();// 法规条文 //
				var sydqn = $('.sydq').val();// 适用地区 //
				var sydq = new String(sydqn);
				var sz = $('input:radio:checked').val();// 税种 //
				var gjc = $('.gjc').val();// 关键词 //
				var bz = $('.bz').val();// 备注 //
				<%-- var zh = '<%=acountnumber %>';
				var companyName = '<%=companyName %>';
				var usertype = '<%=usertype %>'; --%>
				var fgqwFileNameTime = fgwh+extName;
				alert(fgqwFileNameTime);
				//alert(zh+"--"+companyName+"-->"+usertype);
				if(fgwh=="")
				{
					alert("法规文号必须输入，否则不能保存");
					return false;//阻止模态框关闭
				}
				else if(fgtw=="")
				{
					alert("法规条文必须输入，否则不能保存");
					return false;
				}
				else if(fgqwFileName=="")
				{
					alert("文件必须上传，否则不能保存");
					return false;
				}
				else if(sydqn==null)
				{
					alert("适用地区必须选择，否则不能保存");
					return false;
				}
				else if(sz==null)
				{
					alert("税种必须选择，否则不能保存");
					return false;
				}
				else if(gjc=="")
				{
					alert("关键词必须输入，否则不能保存");
					return false;
				}
				else
				{
					addFlag = true;
				}
				
				if(addFlag)
				{
					addFagui(fgwh,fgtw,sydq,sz,gjc,bz,zh,fgqwFileNameTime,companyName,usertype);
				}  
			});
			
			
			$('#sousuoRuleConfirm').click(function(){
				var sz_sousuo = $('input:radio:checked').val();/* 税种 */
				var gjc_sousuo = $('.gjcsousuo').val();/* 关键词 */
				var fgwh_sousuo = $('.fgwhsousuo').val();/* 关键词 */
				
				loadAllFagui(0,3,true,gjc_sousuo,sz_sousuo,fgwh_sousuo,zh,companyName,usertype);
				
				 /* 这里将单选按钮的选中状态和选中样式删掉 */
				 $('input').removeAttr("checked");
				 $('.szsousuo>label').removeClass("active");
				 $('.gjcsousuo').val("");
				 $('.fgwhsousuo').val("");
				 
			});
			
			$('#quxiaosousuo').click(function(){
				 /* 这里将单选按钮的选中状态和选中样式删掉 */
				 $('input').removeAttr("checked");
				 $('.szsousuo>label').removeClass("active");
				 $('.gjcsousuo').val("");
				 $('.fgwhsousuo').val("");
			});
			
		});
	</script>
  </body>
</html>