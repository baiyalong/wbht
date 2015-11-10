<%@page import="com.tridiots.domain.FaGuiKu"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.tridiots.vo.UserVO"%>
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
    <title>案例库</title>
    <link href="<%=path1 %>/bootstrap-3.2.0/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="<%=path1 %>/css/ht/ht.css"/>
    <link rel="stylesheet" type="text/css" href="<%=path1 %>/css/common.css"/>
  </head>
  
  <body>
  	
  	<div class="container">
    	<!-- 导航条界面开始 -->
		<!-- 导航条开始 -->
		<%-- <header class="navbar navbar-inverse navbar-fixed-top" role="banner">
		  <div class="container">
		    <div class="navbar-header">
		      <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a href="<%=path1 %>/systemSelect.jsp" class="navbar-brand">返回首页</a>
		    </div>
		    <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
		      
		      <ul class="nav navbar-nav navbar-right" style="cursor:pointer;">
		          <%
		          	UserVO user =  (UserVO)session.getAttribute("userVo");
		           if(user!=null)
		          	{ 
		          		String name = user.getUsername();
		          %>
			          <li>
			            <a><%=name%></a>
			          </li>
		          <%
		          	} 
		          %>
		          <li>
		             <a href="<%=path1 %>/UserServlet?method=landOut">[注销]</a>
		          </li>
		          
		      </ul>
		    </nav>
		  </div>
		</header> --%>
		<!-- 导航条结束 -->
		<!-- 导航条界面结束 -->
      	<!-- 导航条界面开始 -->
		<%@ include file="../../pages/common/navbar.jsp" %>
		<!-- 导航条界面结束 -->
      
      	<!-- 更新sz开始 -->
		<div style="margin-top:-15px;">
			<h3 class="text-center" style="color:blue;font-family: 微软雅黑">更新数据</h3>
		    <div class="rule">
	      		<dl class="dl-horizontal">
				  <dt>法规文号</dt>
				  <dd><input type="text" class="form-control fgwh" value="${tax.fgnumber}" name="fgwh"></dd>
				  <dt>法规条文</dt>
				  <dd><textarea type="text" class="form-control fgtw" name="fgtw">${tax.fgtw}</textarea></dd>
				  <dt>法规全文</dt><!-- content -->
				  <dd>
					  <div id="uploadify">
					  	 <button id="uploadify">上传文件hlll</button>
					  	 
					  	 <div id="fileQueue">
					  	 </div>
				       </div>
				       
				       
				       <!--  <input type="file" name="uploadify" id="uploadify" />
				        <p>
				            <a href="javascript:$('#uploadify').uploadifyUpload()">上传</a>| 
				            <a href="javascript:$('#uploadify').uploadifyClearQueue()">取消上传</a>
				        </p> -->
				  </dd>
				  <dt>适用地区</dt><!-- area -->
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
				  <dd><input type="text" class="form-control gjc" value="${tax.keyword}" name="gjc"></dd>
				  <dt>备注</dt>
				  <dd><input type="text" class="form-control bz" value="${tax.note}" name="bz"></dd>
				  <!-- <dt>您的账号</dt>
				  <dd><input type="text" class="form-control zh" value="请输入您的账号" name="zh"></dd> -->
				</dl>
	      		
	      	</div>
						      
	        <div class="text-center">
	      		<button type="button" id="confirmEditFagui" class="btn btn-default btn-primary btn-lg">确定</button>
	        	<a type="button" id="quxiaoEdit" class="btn btn-default btn-lg" href="javascript:history.go(-1)">取消</a>
	        </div>
		</div>
      
		<!-- 版权说明开始 -->
		<footer style="text-align: center;margin-top: 20px;">
          <%@ include file="../../pages/common/copyright.jsp" %>
     	</footer>
     	<!-- 版权说明结束 -->
     	
     	
			
			
			<!-- 更新合同modal结束 -->
			<%-- <%
	          	UserVO userAnli =  (UserVO)session.getAttribute("userVo");
	          	String acountnumber = "";
		        if(userAnli!=null)
		        { 
		            acountnumber = userAnli.getAcountnumber();
		        }
		        
          	%> --%>
          	<%
          		FaGuiKu tax =  (FaGuiKu)request.getAttribute("tax");
          		String[] sydqX = null;
          		int len = 0;
          		if(tax!=null)
          		{
          			sydqX = tax.getArea().split(",");
          		}
          		len = sydqX.length;
          	 %>
     </div> <!-- /container -->
     <script src="<%=path1 %>/bootstrap-3.2.0/js/jquery-1.11.1.js"></script>
	<script src="<%=path1 %>/bootstrap-3.2.0/js/bootstrap.js"></script>
	<script src="<%=path1 %>/js/faguiku.js"></script>
	<script type="text/javascript" src="<%=path1 %>/js/bootstrap-paginator.min.js"></script>
	<script type="text/javascript" src="<%=path1 %>/jqueryuploadify3.2/jquery.uploadify.min.js"></script>
	<script type="text/javascript">
		$(function(){
			var path1 = "<%=path1%>";
			//按照传过来的值选中一级二级和公司类型,注意表达式语言可以用在jQuery中
			/* 税种、适用地区 */
			var sydqSource = new Array();
			<%for(int i = 0;i<len;i++){%>
				sydqSource[<%=i%>]="<%=sydqX[i]%>";
				$(".sydq option[value="+sydqSource[<%=i%>]+"]").attr("selected",true);
			<%}%>
			
			///////////////////////// --%>
			var sz = '${tax.taxtype}';
			if(sz!=null&&sz!="")
			{
				$("input[name='options'][value="+sz+"]").attr("checked",true);
				$("input[name='options'][value="+sz+"]").parent().addClass("active");
			}
			////////////////////////////欠揍结束/////////////////
			
			var fgqwFileName = "";
			
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
		        'swf': "<%=path1 %>/jqueryuploadify3.2/uploadify.swf",
		        //不执行默认的onSelect事件
		        'overrideEvents' : ['onDialogClose'],
		        //文件选择后的容器ID
		        'queueID':'uploadfileQueue',
		        //服务器端脚本使用的文件对象的名称 $_FILES个['upload']
		        'fileObjName':'upload',
		        //上传处理程序
		        'uploader':'<%=path1 %>/UploadFileServlet',
		        //浏览按钮的背景图片路径
		        'buttonImage':'<%=path1 %>/imgs/upload.png',
		        //浏览按钮的宽度
		        'width':'120',
		        //浏览按钮的高度
		        'height':'120',
		        //expressInstall.swf文件的路径。
		        'expressInstall':'<%=path1 %>/jqueryuploadify3.2/expressInstall.swf',
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
		        	alert(fgqwFileName);
		        	$("#fileQueue").append("<p>"+file.name+"</P>");
		            $('#uploadify').uploadify('upload');      //添加这行代码才可以访问servlet上传文件
		        },
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
		            alert("您未安装FLASH控件，无法上传图片！请安装FLASH控件后再试。");
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
			
			/* $('#quxiaoEdit').click(function(){
				loadAllFagui(0,3,true,null,null,null);
			}); */
			
			$('#confirmEditFagui').click(function(){
				var fgwh = $('.fgwh').val();
				var fgtw = $('.fgtw').val();
				/* 全文 */
				var fgqwFileNameTime = fgqwFileName;
				/* var szn = $('.sz').val();
				var sz = new String(szn); */
				var sz = $('input:radio:checked').val();// 税种 //
				
				var sydq = $('.sydq').val();
				var sydqname = new String(sydq);
				
				var gjc = $('.gjc').val();
				var bz = $('.bz').val();
				
				//////////////
				var id = '${tax.id}';
				//////////
				
				eDitFaguiku(id,fgwh,fgtw,fgqwFileNameTime,gjc,sz,sydqname,bz,path1);
			});
			/////////////////////////////////////////////////////
			
		});
	</script>
  </body>
</html>