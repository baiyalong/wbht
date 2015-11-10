<%@page import="com.tridiots.domain.Node"%>
<%@page import="com.tridiots.dao.impl.HtDAOImpl"%>
<%@page import="com.tridiots.dao.HtDAO"%>
<%@page import="com.tridiots.vo.UserVO"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<% 
	String path = request.getContextPath(); 
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<!doctype html>
<html>
  <head><link rel="shortcut icon" href="<%=basePath%>imgs/favicon.ico"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>税种</title>
        <link rel="stylesheet" type="text/css" href="<%=path %>/css/taxType/taxType.css"/>
    <link href="<%=path %>/bootstrap-3.2.0/css/bootstrap.css" rel="stylesheet" type="text/css">

    <link rel="stylesheet" type="text/css" href="<%=path %>/css/jilian.css"/>
    <%-- <link rel="stylesheet" type="text/css" href="<%=path %>/css/common.css"/> --%>
  </head>
  
  <body>
  	
  	<div class="container">
    	<!-- 导航条开始 -->
		<%@ include file="../../pages/common/navbar.jsp" %>
		<!-- 导航条结束 -->	
      
			<%
     			 HtDAO htDao = new HtDAOImpl();
     			 List<Node> nodeList = htDao.listNode("单税种");
	
				 int nodeLen = nodeList.size();   
				 //int erjiLen = 0;   			 
     		%>
			<!-- 增加案例modal开始 -->
			<div class="modal fade" id="anliModal" tabindex="-1" role="dialog" aria-labelledby="anliModalLabel" aria-hidden="true"  data-backdrop="static">
				  <div class="modal-dialog modal-lg">
					    <div class="modal-content">
						      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							        <h4 class="modal-title" id="anliModalLabel">增加案例</h4>
						      </div>
						      
						      <div class="modal-body">
						      	<div class="anli">
						      		<dl class="dl-horizontal">
									  <dt>标题</dt>
									  <dd><input type="text" class="form-control btDetail" value="" required></dd>
									  <dt>案例</dt>
									  <dd><textarea type="text" class="form-control alDetail" value="" required></textarea></dd>
									   <dt>关键词</dt>
									  <dd><input type="text" class="form-control gjcDetail" value=""></dd>
									  
									  <dt>税种</dt>
									  <dd>
									  	<select multiple="multiple" class="form-control al_add szDetail" name="alname">
									  		<option value="增值税">增值税</option>
									  		<option value="企业所得税">企业所得税</option>
									  		<option value="营业税及其附加">营业税及其附加</option>
											<option value="土地增值税">土地增值税</option>									  		
									  		<option value="个人所得税">个人所得税</option>
									  		<option value="房产税">房产税</option>
									  		<option value="契税">契税</option>
									  		<option value="土地使用税">土地使用税</option>
									  		<option value="印花税">印花税</option>
									  	</select>
									  </dd>
									  
									  <dt>适用地区</dt>
									  <dd>
									  <% String[] dqarea = {"北京","上海","天津","重庆","黑龙江","吉林","辽宁","大连","山东","青岛","河北","内蒙古","新疆","青海","宁夏","甘肃","陕西","山西","河南","湖北","湖南","四川","贵州","云南","西藏","江西","安徽","江苏","浙江","宁波","福建","厦门","广东","深圳","广西","海南"}; %>
									  	<select multiple="multiple" class="form-control sydq_addDetail" name="sydqname">
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
									 
									  <dt>备注</dt>
									  <dd><input type="text" class="form-control bzDetail" value=""></dd>
									</dl>
						      		
						      	</div>
						      </div>
						      
						      <div class="modal-footer">
						      	<button type="button" id="confirmAddAnli" class="btn btn-default btn-primary" data-dismiss="modal">确定</button>
						        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						      </div>
						    </div>
				  </div>
			</div>
			<!-- 增加案例modal结束 -->
			
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
									  <dt>法规文号</dt>
									  <dd><input type="text" class="form-control fgwhDetail" value="" name="fgwh"></dd>
									  <dt>法规条文</dt>
									  <dd><textarea type="text" class="form-control fgtwDetail" value="" name="fgtw"></textarea></dd>
									  <dt>法规全文</dt>
									  <dd>
										  <div id="uploadify">
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
									  <% String[] dqarea2 = {"北京","上海","天津","重庆","黑龙江","吉林","辽宁","大连","山东","青岛","河北","内蒙古","新疆","青海","宁夏","甘肃","陕西","山西","河南","湖北","湖南","四川","贵州","云南","西藏","江西","安徽","江苏","浙江","宁波","福建","厦门","广东","深圳","广西","海南"}; %>
									  	<select multiple="multiple" class="form-control sydqFGDetail" name="sydq">
									  		<option value="全国">全国</option>
											<% for(int i=0;i<dqarea2.length;i++)
									  			{
									  		%>
									  		<option value="<%=dqarea2[i] %>"><%=dqarea2[i] %></option>
									  		<% 
									  			}
									  		 %>
									  	</select>
									  </dd>
									  <dt>税种</dt>
									  <dd>
									  	<div class="btn-group szFGDetail" data-toggle="buttons">
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
									  <dd><input type="text" class="form-control gjcFGDetail" value="" name="gjc"></dd>
									  <dt>备注</dt>
									  <dd><input type="text" class="form-control bzFGDetail" value="" name="bz"></dd>
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
			
			<!-- 增加税种modal开始 -->
			<div style="margin-top:-15px;">
			<h3 class="text-center" style="color:blue;font-family: 微软雅黑">增加数据</h3>
		      	<div class="sz">
		      		<dl class="dl-horizontal">
		      		  <dt>一级节点<dt>
		      		  <dd> 
		      		  	<select class="form-control yiji_add"> 
		      		  		<%
		      		  			for(int i=0;i<nodeLen;i++)
		      		  			{
		      		  				Node node = nodeList.get(i);
		      		  		 %>
					  				<option value="<%=node.getYijinode() %>"><%=node.getYijinode() %></option> 
					  		<%
					  			} 
					  		%> 
					  	</select> 
		      		  </dd>
		      		  <dt>二级节点</dt>
		      		  <dd id="erji_add"> 
		      		  	<%
	      		  			for(int i=0;i<nodeLen;i++)
	      		  			{
	      		  				Node node = nodeList.get(i);
	      		  				String[] erjiNode = node.getErjinode().split("，");
	      		  				int erLen = erjiNode.length;
	      		  				if(i==0)
	      		  				{
	      		  		 %>
					      		  	<select class="form-control erji_add_<%=i+1 %>"> 
					      		  		<% for(int j=0;j<erLen;j++){ %>
								  		<option value="<%=erjiNode[j] %>"><%=erjiNode[j] %></option> 
								  		<% }%>
								  	</select> 
					  	<% 		
					  			}
					  			if(i>=1)
							  	{ %>
								  	<select class="form-control erji_add_<%=i+1 %>" style="display: none;"> 
					      		  		<% for(int j=0;j<erLen;j++){ %>
								  		<option value="<%=erjiNode[j] %>"><%=erjiNode[j] %></option> 
								  		<% }%>
								  	</select> 
							  	<%
							  	}
				  			} 
				  		%>
		      		  </dd>
					  <dt>标题</dt>
					  <dd><input type="text" class="form-control bt" value=""></dd>
					  <dt>筹划点</dt>
					  <dd><textarea class="form-control chd"></textarea></dd>
					  <dt>条件</dt>
					  <dd><textarea class="form-control tj"></textarea></dd>
					  <dt>案例</dt>
					  <dd>
					  	<button id="addAnli" data-toggle="modal" data-target="#anliModal" class="btn btn-primary"><span class='glyphicon glyphicon-plus'></span>&nbsp;&nbsp;增加案例</button>
					  </dd> 
					  <dd><div class="addAnlizt"></div></dd>
					  <dt>误区</dt>
					  <dd><textarea class="form-control wq"></textarea></dd>
					  <dt>风险应对方案</dt>
					  <dd><textarea class="form-control fx"></textarea></dd>
					  <dt>法规</dt>
					  <dd>
					  	<button id="addfaguiyy" data-toggle="modal" data-target="#ruleModal" class="btn btn-primary"><span class='glyphicon glyphicon-plus'></span>&nbsp;&nbsp;增加法规</button>
					  </dd>
					  <dd><div class="addyyfg"></div></dd>
					  <dt>公司类型</dt>
					  <dd>
					  	<div class="btn-group gslx_add" data-toggle="buttons">
					  	  <label class="btn btn-primary"> 
							<input type="radio" name="options1_add" id="qb" autocomplete="off" value="外资、内资、上市"> 全部
						  </label>
						  <label class="btn btn-primary">
						    <input type="radio" name="options1_add" id="wz" autocomplete="off" value="外资"> 外资
						  </label>
						  <label class="btn btn-primary">
						    <input type="radio" name="options1_add" id="nz" autocomplete="off" value="内资"> 内资
						  </label>
						  <label class="btn btn-primary">
						    <input type="radio" name="options1_add" id="ss" autocomplete="off" value="上市"> 上市
						  </label>
					   </div>
					 </dd>									  
					  <dt>适用地区</dt>
					  <dd>
					  <% String[] dqarea3 = {"北京","上海","天津","重庆","黑龙江","吉林","辽宁","大连","山东","青岛","河北","内蒙古","新疆","青海","宁夏","甘肃","陕西","山西","河南","湖北","湖南","四川","贵州","云南","西藏","江西","安徽","江苏","浙江","宁波","福建","厦门","广东","深圳","广西","海南"}; %>
					  	<select multiple="multiple" class="form-control sydq_add" name="sydqname">
					  		<option value="全国">全国</option>
					  		<% for(int i=0;i<dqarea3.length;i++)
					  			{
					  		%>
					  		<option value="<%=dqarea3[i] %>"><%=dqarea3[i] %></option>
					  		<% 
					  			}
					  		 %>
					  	</select>
					  </dd>
					  <dt>关键词</dt>
					  <dd><input type="text" class="form-control gjc_add" value=""></dd>
					  <dt>税种</dt>
					  <dd>
					  	<div class="btn-group sz" data-toggle="buttons">
						  <label class="btn btn-primary">
						    <input type="radio" name="options_add" id="tdzz" autocomplete="off" value="土地增值税"> 土地增值税
						  </label>
						  <label class="btn btn-primary">
						    <input type="radio" name="options_add" id="qysd" autocomplete="off" value="企业所得税"> 企业所得税
						  </label>
						  <label class="btn btn-primary">
						    <input type="radio" name="options_add" id="yy" autocomplete="off" value="营业税及附加"> 营业税及附加
						  </label>
						  <label class="btn btn-primary">
						    <input type="radio" name="options_add" id="zz" autocomplete="off" value="增值税"> 增值税
						  </label>
						  <label class="btn btn-primary">
						    <input type="radio" name="options_add" id="fc" autocomplete="off" value="房产税"> 房产税
						  </label>
						  <label class="btn btn-primary">
						    <input type="radio" name="options_add" id="s6" autocomplete="off" value="契税"> 契税
						  </label>
						  <label class="btn btn-primary">
						    <input type="radio" name="options_add" id="s7" autocomplete="off" value="个人所得税"> 个人所得税
						  </label>
						  <label class="btn btn-primary">
						    <input type="radio" name="options_add" id="s8" autocomplete="off" value="土地使用税"> 土地使用税
						  </label>
						  <label class="btn btn-primary">
						    <input type="radio" name="options_add" id="yh" autocomplete="off" value="印花税"> 印花税
						  </label>
						</div>
					  	
					  </dd>
					  
					  <dt>备注</dt>
					  <dd><input type="text" class="form-control bz_add" value=""></dd>
					</dl>
		      		
		      	</div>
		      </div>
		      
		      <div class="text-center">
		      	<button type="button" id="confirmAddSz" class="btn btn-default btn-primary btn-lg">确定</button>
		        <a type="button" id="quxiao" class="btn btn-default btn-lg" href="javascript:history.go(-1)">取消</a>
		      </div>
		     
			<!-- 增加法规modal结束 -->
			
			<!-- 版权说明开始 -->
			<footer style="text-align: center;margin-top: 20px;">
	          <%@ include file="../../pages/common/copyright.jsp" %>
	     	</footer>
	     	<!-- 版权说明结束 -->
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
     </div> <!-- /container -->
     <script src="<%=path %>/bootstrap-3.2.0/js/jquery-1.11.1.js"></script>
	 <script src="<%=path %>/bootstrap-3.2.0/js/bootstrap.js"></script>
	 <script type="text/javascript" src="<%=path %>/js/bootstrap-paginator.min.js"></script>
	 <script src="<%=path %>/js/taxtype.js"></script>
	 <script src="<%=path %>/js/anli.js"></script>
	 <script src="<%=path %>/js/faguiku.js"></script>
	 <script type="text/javascript" src="<%=path %>/jqueryuploadify3.2/jquery.uploadify.min.js"></script>
	 
	 <script type="text/javascript">
		$(function(){
			var zh = '<%=acountnumber %>';
			var companyName = '<%=companyName %>';
			var usertype = '<%=usertype %>';
			var table = "landtax"; 
			
			/////////////////////////增加案例开始/////////////////////
			var addFlag = false;//用于看是否可以进行增加操作
			$('#confirmAddAnli').click(function(){
				var bt = "";/* 标题*/
					
				bt = $('.btDetail').val();/* 标题*/
				$('.addAnlizt').append(bt+";");
				
				//$('.addAnlizt').append(bt+";");
				var al = $('.alDetail').val();/* 案例 */
				//var sydq = $('.sydq').val();/* 适用地区 */
				var sydqn = $('.sydq_addDetail').val();
				var sydq = new String(sydqn);
				
				//var sz = $('input:radio:checked').val();/* 税种 */
				var szn = $('.szDetail').val();
				var sz = new String(szn);
				
				var gjc = $('.gjcDetail').val();/* 关键词 */
				var bz = $('.bzDetail').val();/* 备注 */
				
				if(bt=="")
				{
					alert("标题必须输入，否则不能保存");
					return false;
				}
				else if(al=="")
				{
					alert("案例必须输入，否则不能保存");
					return false;
				}
				else if(gjc=="")
				{
					alert("关键词必须输入，否则不能保存");
					return false;
				}
				else if(szn==null)
				{
					alert("税种必须选择，否则不能保存");
					return false;
				}
				else if(sydqn==null)
				{
					alert("适用地区必须选择，否则不能保存");
					return false;
				}
				else
				{
					addFlag = true;
				}
				
				if(addFlag)
				{
					addAnli(bt,al,sydq,sz,gjc,bz,zh,companyName,usertype); 
				}
				
				/* 将单选按钮的样式去除掉，选中状态也去除掉 */				
				//$('select').val("");
				 //$('.sz>option').removeClass("active");  
			});
			/////////////////////////增加案例结束///////////////////////////////
			/////////////////////////增加法规开始///////////////////////////////
			var fgqwFileName = "";
			var extName = "";//后缀名
			var fgwh1 = "";
			$('.fgwhDetail').blur(function(){
				fgwh1 = $('.fgwhDetail').val();// 法规文号,用于上传文件的文件名 //
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
		            'userid':'用户id',
		            'username':'用户名',
		            'rnd':'加密密文'
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
		        'uploader':'../../UploadFileServlet',
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
		        	//alert(fgqwFileName);
		        	if (fgqwFileName.lastIndexOf(".") >= 0) {
						extName = fgqwFileName.substring(fgqwFileName.lastIndexOf("."));
					}
		        	$("#fileQueue").append("<p>"+file.name+"</P>");
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
				var bt = "";/* 标题*/
				
				$('.rule input:first').addClass('btyyDetail');
					
				bt = $('.btyyDetail').val()+extName;/* 法规文号的值*/
				$('.addyyfg').append(bt+";");
				
				var fgwh = $('.fgwhDetail').val();// 法规文号 //
				var fgtw = $('.fgtwDetail').val();// 法规条文 //
				var sydqn = $('.sydqFGDetail').val();// 适用地区 //
				var sydq = new String(sydqn);
				var sz = $('input:radio:checked').val();// 税种 //
				var gjc = $('.gjcFGDetail').val();// 关键词 //
				var bz = $('.bzFGDetail').val();// 备注 //
				var fgqwFileNameTime = fgwh+extName;
				
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
			
			/////////////////////////增加法规结束///////////////////////////////////////
			
			var nodeLen = <%=nodeLen%>;
			var yiji = '<%=nodeList.get(0).getYijinode()%>';
			$('.yiji_add').click(function(){
				
				yiji = $('.yiji_add').val(); 
				<%
				boolean flag = false;
				for(int m=0;m<nodeLen&&!flag;m++) 
				{
				
					String yijinode = nodeList.get(m).getYijinode();
				%>
					var yijinode = "<%=yijinode%>";
					//alert(yijinode);
					if(yiji=='<%=yijinode %>')
					{
						$("#erji_add>select:not(.erji_add_"+<%=m+1%>+")").hide();
						//$('.yiji_add').show();
						$(".erji_add_"+<%=m+1%>).show();
						flag = false;
					}
				<%
				}
				%>
			});
			
			////////////////////////////////////////////////////
			var addFlag = false;//用于看是否可以进行增加操作
			$('#confirmAddSz').click(function(){
				var erji = "<%=nodeList.get(0).getErjinode().split("，")[0]%>";
				for(var i=1;i<=nodeLen;i++)
				{   var erjiClass = "erji_add_"+i; 
					
					if($('.'+erjiClass).css('display')=="block")
					{
						erji = $('.'+erjiClass).val();
						break;
					}
				}
				
				var bt = $('.bt').val();
				var chd = $('.chd').val();
				var tj = $('.tj').val();
				var al = $('.addAnlizt').text();
				var wq = $('.wq').val();
				var fx = $('.fx').val();
				var fg = $('.addyyfg').text();
				var gslx = $('input[name="options1_add"]:checked').val();/* 公司类型 */
				var sydq = $('.sydq_add').val();
				var sydqname = new String(sydq);
				var gjc = $('.gjc_add').val();
				var sz = $('input[name="options_add"]:checked').val();/* 税种 */
				var bz = $('.bz_add').val();
				if(bt=="")
				{
					alert("标题必须输入，否则不能保存");
					return false;
				}
				else if(chd=="")
				{
					alert("筹划点必须输入，否则不能保存");
					return false;
				}
				else if(tj=="")
				{
					alert("条件必须输入，否则不能保存");
					return false;
				}
				else if(al=="")
				{
					alert("案例必须输入，否则不能保存");
					return false;
				}
				else if(fg=="")
				{
					alert("法规必须输入，否则不能保存");
					return false;
				}
				else if(gslx==null)
				{
					alert("公司类型必须选择，否则不能保存");
					return false;
				}
				else if(sydq==null)
				{
					alert("适用地区必须选择，否则不能保存");
					return false;
				}
				else if(gjc=="")
				{
					alert("关键词必须输入，否则不能保存");
					return false;
				}
				else if(sz==null)
				{
					alert("税种必须选择，否则不能保存");
					return false;
				}
				else
				{
					addFlag = true;
				}
				
				if(wq!="")
				{
					if(fx=="")
					{
						alert("存在误区，风险应对方案必须输入，否则不能保存");
						return false;
					}
				}
				else
				{
					if(fx!="")
					{
						alert("无误区，风险应对方案不可输入，否则不能保存");
						return false;
					}
				}
				addTaxType(yiji,erji,bt,chd,tj,al,wq,fx,fg,gslx,sydqname,gjc,sz,bz,zh,companyName,usertype);
			});
			/////////////////////////////////////////////////////
			/* //////////////导航栏开始//////////////
			$('.tdzzTax').click(function(){
				$('#navButton').click();
				loadTaxType(0,3,true,"土地增值税",null,null,null,table,zh,companyName,usertype);
			});
			
			$('.qysdTax').click(function(){
				$('#navButton').click();
				loadTaxType(0,3,true,"企业所得税",null,null,null,table,zh,companyName,usertype);
			});
			
			$('.yyTax').click(function(){
				$('#navButton').click();
				loadTaxType(0,3,true,"营业税及附加",null,null,null,table,zh,companyName,usertype);
			});
			
			$('.zzTax').click(function(){
				$('#navButton').click();
				loadTaxType(0,3,true,"增值税",null,null,null,table,zh,companyName,usertype);
			});
			
			$('.fcTax').click(function(){
				$('#navButton').click();
				loadTaxType(0,3,true,"房产税",null,null,null,table,zh,companyName,usertype);
			});
			
			$('.sixTax').click(function(){
				$('#navButton').click();
				loadTaxType(0,3,true,"契税",null,null,null,table,zh,companyName,usertype);
			});
			
			$('.sevenTax').click(function(){
				$('#navButton').click();
				loadTaxType(0,3,true,"个人所得税",null,null,null,table,zh,companyName,usertype);
			});
			
			$('.eightTax').click(function(){
				$('#navButton').click();
				loadTaxType(0,3,true,"土地使用税",null,null,null,table,zh,companyName,usertype);
			});
			
			$('.yhTax').click(function(){
				$('#navButton').click();
				loadTaxType(0,3,true,"印花税",null,null,null,table,zh,companyName,usertype);
			});
			//////////////导航栏结束///////////// */
		});
	 </script>
  </body>
</html>