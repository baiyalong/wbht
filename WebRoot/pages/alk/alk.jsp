<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<% String path1 = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path1+"/";%>
<!doctype html>
<html>
  <head><link rel="shortcut icon" href="<%=basePath%>imgs/favicon.ico"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>案例库</title>
    <link href="<%=path1 %>/bootstrap-3.2.0/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="<%=path1 %>/css/anliku/anliku.css"/>
    <link rel="stylesheet" type="text/css" href="<%=path1 %>/css/common.css"/>
  </head>
  
  <body>
  	<div class="container">
    	<!-- 导航条界面开始 -->
		<%@ include file="../../pages/common/navbar.jsp" %>
		<!-- 导航条界面结束 -->
      
      	<div class="row">
        	<div><button id="addAnli" data-toggle="modal" data-target="#anliModal" class="btn btn-primary  btn-lg  col-md-5 col-lg-5"><span class='glyphicon glyphicon-plus'></span>&nbsp;&nbsp;增加案例</button></div>
            <div><button id="sousuo" data-toggle="modal" data-target="#sousuoModal" class="btn btn-primary btn-lg  col-md-5 col-md-offset-2 col-lg-5 col-lg-offset-2"><span class='glyphicon glyphicon-search'></span>&nbsp;&nbsp;搜索案例</button></div>
        </div>
        
        <!-- <div class="row">
			<div class="addAndSearch">
	        	<a id="addAnli" data-toggle="modal" href="#anliModal" 
	        	class=""><i class='glyphicon glyphicon-plus'></i></a>
	            <a id="sousuo" data-toggle="modal" href="#sousuoModal" 
	            class=""><i class='glyphicon glyphicon-search'></i></a>
            </div>
        </div>  -->
        
        <div class="row" style="margin-top: 10px;">
            	<div id="allAnli_table_body" >
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
									  <dd><input type="text" class="form-control bt" value="" required></dd>
									  <dt>案例</dt>
									  <dd><textarea type="text" class="form-control al" value="" required></textarea></dd>
									   <dt>关键词</dt>
									  <dd><input type="text" class="form-control gjc" value=""></dd>
									  
									  <dt>税种</dt>
									  <dd>
									  	<select multiple="multiple" class="form-control al_add sz" name="alname">
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
									  	<select multiple="multiple" class="form-control sydq_add" name="sydqname">
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
									  <dd><input type="text" class="form-control bz" value=""></dd>
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
			
			<!-- 搜索案例modal开始 -->
			<div class="modal fade" id="sousuoModal" tabindex="-1" role="dialog" aria-labelledby="sousuoModalLabel" aria-hidden="true"  data-backdrop="static">
				  <div class="modal-dialog modal-lg">
					    <div class="modal-content">
						      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							        <h4 class="modal-title" id="sousuoModalLabel">搜索案例</h4>
						      </div>
						      
						      <div class="modal-body">
						      	<div class="anli">
						      		<dl class="dl-horizontal">
									   <dt>关键词</dt>
									  <dd><input type="text" class="form-control gjcsousuo"></dd>
									  
									  <dt>税种</dt>
									  <dd>
									  	<select multiple="multiple" class="form-control al_sousuo sz" name="alname">
									  		<option value="土地增值税">土地增值税</option>
									  		<option value="企业所得税">企业所得税</option>
									  		<option value="营业税及其附加">营业税及其附加</option>
									  		<option value="增值税">增值税</option>
									  		<option value="个人所得税">个人所得税</option>
									  		<option value="房产税">房产税</option>
									  		<option value="契税">契税</option>
									  		<option value="土地使用税">土地使用税</option>
									  		<option value="印花税">印花税</option>
									  	</select>
									  </dd>
									  
									</dl>
									
									<p class="help-block text-center">可以选中其一，单独搜索，也可以多条件联合搜索，若全不选，则为全文搜索</p>
						      		
						      	</div>
						      </div>
						      
						      <div class="modal-footer">
						      	<button type="button" id="confirmSousuoAnli" class="btn btn-default btn-primary" data-dismiss="modal">开始搜索</button>
						        <button type="button" id="quxiaosousuo" class="btn btn-default" data-dismiss="modal">取消搜索</button>
						      </div>
						    </div>
				  </div>
			</div>
			<!-- 搜索案例modal结束 -->
			
			
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
     <script src="<%=path1 %>/bootstrap-3.2.0/js/jquery-1.11.1.js"></script>
	<script src="<%=path1 %>/bootstrap-3.2.0/js/bootstrap.js"></script>
	<script src="<%=path1 %>/js/anli.js"></script>
	<script type="text/javascript" src="<%=path1 %>/js/bootstrap-paginator.min.js"></script>
	
	<script type="text/javascript">
		$(function(){
			////////////导航条//////////////
			$('.alNav').hide();
			//////////////////////////////
			var zh = '<%=acountnumber %>';
			var companyName = '<%=companyName %>';
			var usertype = '<%=usertype %>';
			///////////////////权限问题开始/////////////////////
			if(usertype=="worker")
			{
				$('#addAnli').hide();
			}
			///////////////////权限问题结束/////////////////////
			/* loadAnli(0,3,true); */
			searchAnli(0,3,true,null, null,zh,companyName,usertype);
			
			var addFlag = false;//用于看是否可以进行增加操作
			$('#confirmAddAnli').click(function(){
				var bt = $('.bt').val();/* 标题*/
				var al = $('.al').val();/* 案例 */
				//var sydq = $('.sydq').val();/* 适用地区 */
				var sydqn = $('.sydq_add').val();
				var sydq = new String(sydqn);
				
				//var sz = $('input:radio:checked').val();/* 税种 */
				var szn = $('.al_add').val();
				var sz = new String(szn);
				
				var gjc = $('.gjc').val();/* 关键词 */
				var bz = $('.bz').val();/* 备注 */
				var zh = '<%=acountnumber %>';
				
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
				$('select').val("");
				 //$('.sz>option').removeClass("active");  
			});
			
			$('#confirmSousuoAnli').click(function(){
				//var sz_sousuo = $('input:radio:checked').val();/* 税种 */
				var szn_sousuo = $('.al_sousuo').val();
				var sz_sousuo = new String(szn_sousuo);
				var gjc_sousuo = $('.gjcsousuo').val();/* 关键词 */ 
				
				searchAnli(0,3,true,gjc_sousuo, sz_sousuo,zh,companyName,usertype);
				
				/* 将单选按钮的样式去除掉，选中状态也去除掉 */				
				$('select').val("");//去掉下拉框的选中状态和选中样式
				 //$('.sz>option').removeClass("selected");
				 $('.gjcsousuo').val("");
			});
			
			$('#quxiaosousuo').click(function(){
				 /* 这里将单选按钮的选中状态和选中样式删掉 */
				 $('select').val("");
				 //$('.sz>label').removeClass("active");
				 $('.gjcsousuo').val("");
			});
			
		});
	</script>
  </body>
</html>