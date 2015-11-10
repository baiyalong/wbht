<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 %>
<!DOCTYPE html>
<html lang="en">
<head><link rel="shortcut icon" href="<%=basePath%>imgs/favicon.ico"/>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>计算</title>
	<link href="../../bootstrap-3.2.0/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="../../css/calculater/calculater.css"/>
    <link rel="stylesheet" type="text/css" href="../../css/common.css"/>
    

</head>
<body>
	<!-- 导航条界面开始 -->
		<%@ include file="../../pages/common/navbar.jsp" %>
		<!-- 导航条界面结束 -->
		<!-- <table class="table-title Basic-Input">
			<tr class="table-title">
				<th colspan="2">法规库录入</th>
			</tr>
			<tr>
				<th class="englist">法规文号：</th>
				<th><textarea class="form-control companyName" type="text"placeholder="请先在这里输入" onkeyup="return ValidateNumber(this,value)" rows="4"></textarea></th>
			</tr>
			<tr>
				<th class="englist">法规条文：</th>
				<th><textarea class="form-control companyName" type="text"placeholder="请先在这里输入" onkeyup="return ValidateNumber(this,value)" rows="4"></textarea></th>
			</tr>
			<tr>
				<th class="englist">关键词：</th>
				<th><textarea class="form-control companyName" type="text"placeholder="请先在这里输入" onkeyup="return ValidateNumber(this,value)" rows="4"></textarea></th>
			</tr>
			<tr>
				<th class="englist">税种：</th>
				<th><input class="form-control companyName" type="text"></th>
			</tr>
			<tr>
				<th class="englist">适用地区：</th>
				<th><input class="form-control companyName" type="text"></th>
			</tr>
			<tr>
				<th class="englist">法规全文：</th>
				<th><textarea class="form-control companyName" type="text"placeholder="请先在这里输入" onkeyup="return ValidateNumber(this,value)" rows="4"></textarea></th>
			</tr>
			<tr>
				<th class="englist">备注：</th>
				<th><input class="form-control companyName" type="text"></th>
			</tr>
			<tr>
				<th colspan="2"><input value="提交button" type="submit"></th>
			</tr>

		</table> -->


	<div class="Basic-Input">

<div class="panel-group" role="tablist" aria-multiselectable="true">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse"  href="#collapseOne" aria-expanded="true" aria-controls="collapseOne" class="choose-title">
          基本数据录入
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel">
      <div class="panel-body">
      <table>
			<tr class="table-title">
				<th colspan="3" class="ch">基本数据录入</th>
			</tr>
			<tr class="table-title">
				<th colspan="3">Basic Input</th>
			</tr>
			<tr>
				<th class="englist">Sales revenue</th>
				<th>销售收入：</th>
				<th><input class="form-control companyName"id="Sales-revenue" type="text"placeholder="请先在这里输入" onkeyup="return ValidateNumber(this,value)" ></th>
			</tr>
			<tr>
				<th class="englist">Rent revenue</th>
				<th>租赁收入：</th>
				<th><input class="form-control companyName" id="Rent-revenue" type="text"placeholder="请先在这里输入" onkeyup="return ValidateNumber(this,value)"></th>
			</tr>
			<tr>
				<th class="englist">Land cost</th>
				<th>土地成本：</th>
				<th><input class="form-control companyName" id="Land-cost" type="text" placeholder="请先在这里输入" onkeyup="return ValidateNumber(this,value)"></th>
			</tr>
			<tr>
				<th class="englist">PDE</th>
				<th>开发成本：</th>
				<th><input class="form-control companyName" id="PDE" type="text" placeholder="请先在这里输入" onkeyup="return ValidateNumber(this,value)"></th>
			</tr>
			<tr>
				<th class="englist">Rent cost</th>
				<th>租赁成本：</th>
				<th><input class="form-control companyName" id="Rent-cost" type="text" placeholder="请先在这里输入" onkeyup="return ValidateNumber(this,value)"></th>
			</tr>
		</table>
      </div>
    </div>
  </div>
  <div class="panel panel-default Business-tax-and-affiliates" >
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          营业税及附加税计算
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel">
      <div class="panel-body">
       
		<table class="Business-tax-and-affiliates">
			<tr class="table-title">
				<th colspan="3" class="ch">营业税及附加税计算</th>
			</tr>
			<tr class="table-title">
				<th colspan="3">Business tax and affiliates</th>
			</tr>
			<tr>
				<th class="englist">Business tax and affiliates</th>
				<th>营业税及附加：</th>
				<th><input id="Business-tax-and-affiliates" class="form-control companyName" type="text" readonly="readonly"></th>
			</tr>
			<tr>
				<th class="englist">Business tax</th>
				<th>营业税：</th>
				<th><input id="Business-tax" class="form-control companyName" type="text"readonly="readonly"></th>
			</tr>
			<tr>
				<th class="englist">Urban maintenance and construction tax</th>
				<th>城镇维护建设税：</th>
				<th><input type="text" id="Urban-maintenance-and-construction-tax" class="form-control companyName"readonly="readonly"></th>
			</tr>
			<tr>
				<th class="englist">extra charges of education funds</th>
				<th>教育费附加：</th>
				<th><input type="text" id="extra-charges-of-education-funds" class="form-control companyName"readonly="readonly"></th>
			</tr>
			<tr>
				<th class="englist">Local extra charges of education funds</th>
				<th>地方教育费附加：</th>
				<th><input type="text" id="Local-extra-charges-of-education-funds" class="form-control companyName"readonly="readonly"></th>
			</tr>
			<tr>
				<th colspan="3"><input class="btn" type="submit" id="Business-tax-button" value="计算"></th>
			</tr>
		</table>
      </div>
    </div>
  </div>
  
  <div class="panel panel-default LVAT">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          土地增值税
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse LVAT" role="tabpanel">
      <div class="panel-body">
       <table class="LVAT-used">
			<tr class="table-title">
				<th colspan="3" class="ch">旧房部分</th>
			</tr>
			<tr class="table-title">
				<th colspan="3">Used real estate</th>
			</tr>
			<tr>
				<th class="englist">Used real estate sales revenue</th>
				<th>旧房销售收入：</th>
				<th><input id="Used-real-estate-sales-revenue" type="text" class="form-control companyName"placeholder="请先在这里输入" onkeyup="return ValidateNumber(this,value)"></th>
			</tr>
			<tr>
				<th class="englist">Used real estate purchase price</th>
				<th>旧房购置价格：</th>
				<th><input id="Used-real-estate-purchase-price" type="text" class="form-control companyName"placeholder="请先在这里输入" onkeyup="return ValidateNumber(this,value)"></th>
			</tr>
			<tr>
				<th class="englist">Number of years held</th>
				<th>持有年份：</th>
				<th><input id="Number-of-years-held" type="text" class="form-control companyName"placeholder="请先在这里输入" onkeyup="return ValidateNumber(this,value)"></th>
			</tr>
			<tr>
				<th class="englist">Used real estate evaluation price</th>
				<th>旧房评估价格：</th>
				<th><input id="Used-real-estate-evaluation-price" type="text" class="form-control companyName"placeholder="请先在这里输入" onkeyup="return ValidateNumber(this,value)"></th>
			</tr>
			<tr>
				<th class="englist">Used real estate land price and deed tax</th>
				<th>旧房土地及契税价格：</th>
				<th><input id="Used-real-estate-land-price-and-deed-tax" type="text" class="form-control companyName"placeholder="请先在这里输入" onkeyup="return ValidateNumber(this,value)"></th>
			</tr>
			<tr>
				<th class="englist">Cost base for calculation of LVAT used real estate</th>
				<th>旧房部分成本扣除基数：</th>
				<th><input id="Cost-base-for-calculation-of-LVAT-used-real-estate" type="text" class="form-control companyName"readonly="readonly"></th>
			</tr>
			<tr>
				<th class="englist">Cost base for calculation of LVAT used real estate</th>
				<th>增值额：</th>
				<th><input id="Land-value-added-for-LVAT-assessment-used" type="text" class="form-control companyName"readonly="readonly"></th>
			</tr>
			<tr>
				<th class="englist">Land value added ratio</th>
				<th>增值率：</th>
				<th><input id="Land-value-added-ratio-used" type="text" class="form-control companyName"readonly="readonly"></th>
			</tr>
			<tr>
				<th class="englist">LVAT payable</th>
				<th>应付土地增值税：</th>
				<th><input id="LVAT-payable-used" type="text" class="form-control companyName"readonly="readonly"></th>
			</tr>
			<tr>
				<th colspan="3"><input class="btn" type="submit" id="LVAT-button-used" value="计算"></th>
			</tr>
		</table>
			
			
		<table class="LVAT-new">	
			<tr class="table-title">
				<th colspan="3" class="ch">新房部分</th>
			</tr>
			<tr class="table-title">
				<th colspan="3">New real estate</th>
			</tr>
			<tr>
				<th class="englist">LVAT prepaid tax rate</th>
				<th>土地增值税预缴税率：</th>
				<th>
				<div>
				<input id="LVAT-prepaid-tax-rate" class="form-control companyName" type="text"placeholder="请先在这里输入" onkeyup="return ValidateNumber(this,value)">
				<!-- <textarea id="LVAT-prepaid-tax-rate" class="form-control companyName" type="text"placeholder="请先在这里输入" onkeyup="return ValidateNumber(this,value)"></textarea> -->
				</div>
				
				</th>
			</tr>
			<tr>
				<th class="englist">Cost base for calculation of LVAT New real estate</th>
				<th>销售部分成本扣除基数：</th>
				<th><input id="Cost-base-for-calculation-of-LVAT-new-real-estate" type="text" class="form-control companyName"readonly="readonly"></th>
			</tr>
			<tr>
				<th class="englist">Land value added for LVAT assessment</th>
				<th>增值额：</th>
				<th><input id="Land-value-added-for-LVAT-assessment" type="text" class="form-control companyName"readonly="readonly"></th>
			</tr>
			<tr>
				<th class="englist">Land value added ratio</th>
				<th>增值率：</th>
				<th><input id="Land-value-added-ratio" type="text" class="form-control companyName"readonly="readonly"></th>
			</tr>
			<tr>
				<th class="englist">LVAT payable</th>
				<th>应付土地增值税：</th>
				<th><input id="LVAT-payable" type="text" class="form-control companyName"readonly="readonly"></th>
			</tr>
			<tr>
				<th class="englist">LVAT prepaid tax</th>
				<th>预缴土地增值税：</th>
				<th><input id="LVAT-prepaid-tax" type="text" class="form-control companyName"readonly="readonly"></th>
			</tr>
			<tr>
				<th class="englist">LVAT liquidation</th>
				<th>土地增值税清算：</th>
				<th><input id="LVAT-liquidation" type="text" class="form-control companyName"readonly="readonly"></th>
			</tr>
			<tr>
				<th colspan="3"><input class="btn" type="submit" id="LVAT-button" value="计算"></th>
			</tr>
		</table>
      </div>
    </div>
  </div>
   <div class="panel panel-default Deed-tax">
	    <div class="panel-heading">
	      <h4 class="panel-title">
	        <a data-toggle="collapse" data-parent="#accordion" href="#collapse5" aria-expanded="false" aria-controls="collapse5">
	          契税
	        </a>
	      </h4>
	    </div>
	    <div id="collapse5" class="panel-collapse collapse" role="tabpanel">
	      <div class="panel-body">
	        <table class="Deed-tax">
			<tr class="table-title">
				<th colspan="3" class="ch">契税</th>
			</tr>
			<tr class="table-title">
				<th colspan="3">Deed tax</th>
			</tr>
			<tr>
				<th class="englist">Deed tax base</th>
				<th>契税税基：</th>
				<th><input id="Deed-tax-base" class="form-control companyName" type="text" placeholder="请先在这里输入" onkeyup="return ValidateNumber(this,value)"></th>
			</tr>
			<tr>
				<th class="englist">Deed tax rate</th>
				<th>契税税率：</th>
				<th><input id="Deed-tax-rate" class="form-control companyName" type="text" placeholder="请先在这里输入" onkeyup="return ValidateNumber(this,value)"></th>
			</tr>
			<tr>
				<th class="englist">Deed tax</th>
				<th>契税：</th>
				<th><input id="Deed-tax" type="text" class="form-control companyName" readonly="readonly"></th>
			</tr>
			<tr>
				<th colspan="3"><input class="btn" type="submit" id="Deed-tax-button" value="计算"></th>
			</tr>
		</table>
	      </div>
	    </div>
	  </div>
	<div class="panel panel-default Real-estate-tax">
	    <div class="panel-heading">
	      <h4 class="panel-title">
	        <a data-toggle="collapse" data-parent="#accordion" href="#collapse4" aria-expanded="false" aria-controls="collapse4">
	          房产税
	        </a>
	      </h4>
	    </div>
	    <div id="collapse4" class="panel-collapse collapse" role="tabpanel">
	      <div class="panel-body">
	        <table class="Real-estate-tax">
			<tr class="table-title">
				<th colspan="3" class="ch">房产税</th>
			</tr>
			<tr class="table-title">
				<th colspan="3">Real estate tax</th>
			</tr>
			<tr>
				<th class="englist">Real estate original value</th>
				<th>房产原值：</th>
				<th><input id="Real-estate-original-value" class="form-control companyName" type="text" placeholder="请先在这里输入" onkeyup="return ValidateNumber(this,value)"></th>
			</tr>
			<tr>
				<th class="englist">Real estate monthly rent</th>
				<th>房产月租金：</th>
				<th><input id="Real-estate-monthly-rent" type="text" class="form-control companyName" placeholder="请先在这里输入" onkeyup="return ValidateNumber(this,value)"></th>
			</tr>
			<tr>
				<th class="englist">Real estate tax</th>
				<th>房产税：</th>
				<th><input id="Real-estate-tax" type="text" class="form-control companyName" readonly="readonly"></th>
			</tr>
			<tr>
				<th colspan="3"><input class="btn" type="submit" id="Real-estate-tax-button" value="计算"></th>
			</tr>
		</table>
	      </div>
	    </div>
	  </div>
	 
      <div class="panel panel-default Lan-use-tax">
	    <div class="panel-heading">
	      <h4 class="panel-title">
	        <a data-toggle="collapse" data-parent="#accordion" href="#collapse6" aria-expanded="false" aria-controls="collapse6">
	          土地使用税
	        </a>
	      </h4>
	    </div>
	    <div id="collapse6" class="panel-collapse collapse" role="tabpanel">
	      <div class="panel-body">
	        <table class="Lan-use-tax">
			<tr class="table-title">
				<th colspan="3" class="ch">土地使用税</th>
			</tr>
			<tr class="table-title">
				<th colspan="3">Land use tax</th>
			</tr>
			<tr>
				<th class="englist">Land size(m2)</th>
				<th>土地面积（平方米）：</th>
				<th><input id="Land-size" class="form-control companyName" type="text" placeholder="请先在这里输入" onkeyup="return ValidateNumber(this,value)"></th>
			</tr>
			<tr>
				<th class="englist">Land use tax rate</th>
				<th>土地使用税率：</th>
				<th><input id="Land-use-tax-rate" class="form-control companyName" type="text" placeholder="请先在这里输入" onkeyup="return ValidateNumber(this,value)"></th>
			</tr>
			<tr>
				<th class="englist">Yearly Land use tax</th>
				<th>年土地使用税：</th>
				<th><input id="Yearly-Land-use-tax" type="text" class="form-control companyName" readonly="readonly"></th>
			</tr>
			<tr>
				<th colspan="3"><input class="btn" type="submit" id="Land-use-tax-button" value="计算"></th>
			</tr>
		</table>
	      </div>
	    </div>
	  </div>
      <div class="panel panel-default CIT">
	    <div class="panel-heading">
	      <h4 class="panel-title">
	        <a data-toggle="collapse" data-parent="#accordion" href="#collapse7" aria-expanded="false" aria-controls="collapse7">
	          企业所得税
	        </a>
	      </h4>
	    </div>
	    <div id="collapse7" class="panel-collapse collapse" role="tabpanel">
	      <div class="panel-body">
	        <table class="CIT">
			<tr class="table-title">
				<th colspan="3" class="ch">企业所得税</th>
			</tr>
			<tr class="table-title">
				<th colspan="3">CIT</th>
			</tr>
			<tr>
				<th class="englist">Marketing expenses</th>
				<th>营销费用：</th>
				<th><input id="Marketing-expenses" class="form-control companyName" type="text" placeholder="请先在这里输入" onkeyup="return ValidateNumber(this,value)"></th>
			</tr>
			<tr>
				<th class="englist">G&A</th>
				<th>管理费用：</th>
				<th><input id="GandA" class="form-control companyName" type="text" placeholder="请先在这里输入" onkeyup="return ValidateNumber(this,value)"></th>
			</tr>
			<tr>
				<th class="englist">Financial  expenses</th>
				<th>财务费用：</th>
				<th><input id="Financial-expenses" class="form-control companyName" type="text" placeholder="请先在这里输入" onkeyup="return ValidateNumber(this,value)"></th>
			</tr>
			<tr>
				<th class="englist">CIT prepaid tax rate</th>
				<th>企业所得税预缴税率：</th>
				<th><input id="CIT-prepaid-tax-rate" class="form-control companyName" type="text" placeholder="请先在这里输入" onkeyup="return ValidateNumber(this,value)"></th>
			</tr>
			<tr>
				<th class="englist">EBT</th>
				<th>税前利润：</th>
				<th><input id="EBT" type="text" class="form-control companyName" readonly="readonly"></th>
			</tr>
			<tr>
				<th class="englist">Payable CIT</th>
				<th>应交企业所得税：</th>
				<th><input id="Payable-CIT" type="text" class="form-control companyName" readonly="readonly"></th>
			</tr>
			<tr>
				<th class="englist">Prepaid CIT</th>
				<th>预交企业所得税：</th>
				<th><input id="Prepaid-CIT" type="text" class="form-control companyName" readonly="readonly"></th>
			</tr>
			<tr>
				<th class="englist">Liquidation of CIT</th>
				<th>企业所得税清算：</th>
				<th><input id="Liquidation-of-CIT" type="text" class="form-control companyName" readonly="readonly"></th>
			</tr>
			<tr>
				<th class="englist">NPAT</th>
				<th>税后利润：</th>
				<th><input id="NPAT" type="text" class="form-control companyName" readonly="readonly"></th>
			</tr>
			<tr>
				<th colspan="3"><input class="btn" type="submit" id="CIT-button" value="计算"></th>
			</tr>
		</table>
	      </div>
	    </div>
	  </div>
      
 </div>
</div>


<script type="text/javascript"  src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript"  src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script type="text/javascript"  src="../../js/calculater2.js" ></script> 
<script type="text/javascript">
	$(function(){
		////////////导航条//////////////
		$('.csNav').hide();
		//////////////////////////////
	})
</script>

</body>
</html>
