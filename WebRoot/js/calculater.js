	
		var Cost_base_for_calculation_of_LVAT_GLA=0;
		var Real_estate_tax=0;
		var LVAT_payable=0;
		var EBT=0;
		var cbfcolused=0;//Cost-base-for-calculation-of-LVAT-used-real-estate
		var LVAT_payable_used=0;
		var LVAT_payable=0;
		$(document).ready(function() {
			alert(1231);
			

			$("[readonly=readonly]").val(0);

			// $("#Business-tax-button").click(function(){
			// 	// $("#Business-tax-and-affiliates").val("000001111");
			// 	$("#Cost-base-for-calculation-of-LVAT-GSA").val(($("#Land-cost").val()+$("#PDE").val())*1.2+$("#Business-tax-and-affiliates").val()+$("#Deed-tax").val());
			// 	$("#Yearly-Land-use-tax").val(($("#Land-use-tax-rate").val()*$("#Land-cost").val()).toFixed(2));
			// 	$("#Deed-tax").val(($("#Land-cost").val()*(delPercentCharacter($("#Deed-tax-rate").val())/100)).toFixed(2));
			// 	$("#LVAT-prepaid-tax").val(($("#Sales-revenue").val()*(delPercentCharacter($("#LVAT-prepaid-tax-rate").val())/100)).toFixed(2));
			// 	$("#Business-tax").val(((parseFloat($("#Sales-revenue").val())+parseFloat($("#Rent-revenue").val()))*0.05).toFixed(2));
			// 	$("#Urban-maintenance-and-construction-tax").val(($("#Business-tax").val()*0.07).toFixed(2));
			// 	$("#extra-charges-of-education-funds").val(($("#Business-tax").val()*0.03).toFixed(2));
			// 	$("#Local-extra-charges-of-education-funds").val(($("#Business-tax").val()*0.02).toFixed(2));
			// 	$("#Business-tax-and-affiliates").val(parseFloat($("#Business-tax").val())+parseFloat($("#Local-extra-charges-of-education-funds").val())+parseFloat($("#extra-charges-of-education-funds").val())+parseFloat($("#Urban-maintenance-and-construction-tax").val()));


			// });
			// 实时监测输入改变
			$("#Sales-revenue,#Rent-revenue,#Land-cost,#PDE,#Rent-cost").bind('input propertychange',function(){
				$("#Cost-base-for-calculation-of-LVAT-GSA").val((parseFloat($("#Land-cost").val())+parseFloat($("#PDE").val()))*1.2+parseFloat($("#Business-tax-and-affiliates").val())+parseFloat($("#Deed-tax").val()));
				$("#Yearly-Land-use-tax").val((($("#Land-use-tax-rate").val())*$("#Land-cost").val()).toFixed(2));
				$("#Deed-tax").val(($("#Land-cost").val()*(delPercentCharacter($("#Deed-tax-rate").val())/100)).toFixed(2));
				$("#LVAT-prepaid-tax").val(($("#Sales-revenue").val()*(delPercentCharacter($("#LVAT-prepaid-tax-rate").val())/100)).toFixed(2));
				$("#Business-tax").val(((parseFloat($("#Sales-revenue").val())+parseFloat($("#Rent-revenue").val()))*0.05).toFixed(2));
				$("#Urban-maintenance-and-construction-tax").val(($("#Business-tax").val()*0.07).toFixed(2));
				$("#extra-charges-of-education-funds").val(($("#Business-tax").val()*0.03).toFixed(2));
				$("#Local-extra-charges-of-education-funds").val(($("#Business-tax").val()*0.02).toFixed(2));
				$("#Business-tax-and-affiliates").val((parseFloat($("#Business-tax").val())+parseFloat($("#Local-extra-charges-of-education-funds").val())+parseFloat($("#extra-charges-of-education-funds").val())+parseFloat($("#Urban-maintenance-and-construction-tax").val())).toFixed(2));
			});
			
			
			$("#Business-tax-button").click(function() {
				
				$("#Cost-base-for-calculation-of-LVAT-GSA").val((parseFloat($("#Land-cost").val())+parseFloat($("#PDE").val()))*1.2+parseFloat($("#Business-tax-and-affiliates").val())+parseFloat($("#Deed-tax").val()));
				$("#Yearly-Land-use-tax").val((($("#Land-use-tax-rate").val())*$("#Land-cost").val()).toFixed(2));
				$("#Deed-tax").val(($("#Land-cost").val()*(delPercentCharacter($("#Deed-tax-rate").val())/100)).toFixed(2));
				$("#LVAT-prepaid-tax").val(($("#Sales-revenue").val()*(delPercentCharacter($("#LVAT-prepaid-tax-rate").val())/100)).toFixed(2));
				$("#Business-tax").val(((parseFloat($("#Sales-revenue").val())+parseFloat($("#Rent-revenue").val()))*0.05).toFixed(2));
				$("#Urban-maintenance-and-construction-tax").val(($("#Business-tax").val()*0.07).toFixed(2));
				$("#extra-charges-of-education-funds").val(($("#Business-tax").val()*0.03).toFixed(2));
				$("#Local-extra-charges-of-education-funds").val(($("#Business-tax").val()*0.02).toFixed(2));
				$("#Business-tax-and-affiliates").val((parseFloat($("#Business-tax").val())+parseFloat($("#Local-extra-charges-of-education-funds").val())+parseFloat($("#extra-charges-of-education-funds").val())+parseFloat($("#Urban-maintenance-and-construction-tax").val())).toFixed(2));
			});

			$("#Used-real-estate-land-price-and-deed-tax,#Used-real-estate-purchase-price,#Used-real-estate-evaluation-price,#Number-of-years-held,#Used-real-estate-sales-revenue").bind('input propertychange',function(){
				//旧房购置价格或旧房评估价格只允许输入一个
				if($("#Used-real-estate-purchase-price").val()!=0){
					$("#Used-real-estate-evaluation-price").attr("readonly","readonly");
					$("#Used-real-estate-evaluation-price").attr("placeholder","旧房购置价格或旧房评估价格只允许输入一个");
				}else {
					$("#Used-real-estate-evaluation-price").removeAttr("readonly");
					$("#Used-real-estate-evaluation-price").attr("placeholder","请先在这里输入");
				}
				if($("#Used-real-estate-evaluation-price").val()!=0){
					$("#Used-real-estate-purchase-price").attr("readonly","readonly");
					$("#Used-real-estate-purchase-price").attr("placeholder","旧房购置价格或旧房评估价格只允许输入一个");
					
				}else {
					$("#Used-real-estate-purchase-price").removeAttr("readonly");
					$("#Used-real-estate-purchase-price").attr("placeholder","请先在这里输入");
				}
				
				if($("#Used-real-estate-purchase-price").val()==0||$("#Used-real-estate-purchase-price").val()==null){
					cbfcolused=(parseFloat($("#Used-real-estate-evaluation-price").val())+parseFloat($("#Used-real-estate-land-price-and-deed-tax").val())
							+(parseFloat($("#Used-real-estate-sales-revenue").val()))*0.0565);
				}else{
					cbfcolused=(1+(parseFloat($("#Number-of-years-held").val()))*0.05)*parseFloat($("#Used-real-estate-purchase-price").val())
						+(parseFloat($("#Used-real-estate-sales-revenue").val()))*0.0865;
				}
				$("#Cost-base-for-calculation-of-LVAT-used-real-estate").val(cbfcolused.toFixed(2));
				$("#Land-value-added-for-LVAT-assessment-used").val(($("#Used-real-estate-sales-revenue").val()-cbfcolused).toFixed(2));
				$("#Land-value-added-ratio-used").val((($("#Land-value-added-for-LVAT-assessment-used").val()/cbfcolused)*100).toFixed(2)+"%");
				//LVAT_payable_used;
				var d28=$("#Land-value-added-for-LVAT-assessment-used").val()/cbfcolused;
				if(d28<0){
					LVAT_payable_used=0;
				}else if(d28>2){
					LVAT_payable_used=$("#Land-value-added-for-LVAT-assessment-used").val()*0.6-cbfcolused*0.35;
				}else if(d28>1){
					LVAT_payable_used=$("#Land-value-added-for-LVAT-assessment-used").val()*0.5-cbfcolused*0.15;
				}else if(d28>0.5){
					LVAT_payable_used=$("#Land-value-added-for-LVAT-assessment-used").val()*0.4-cbfcolused*0.05;
				}else{
					LVAT_payable_used=$("#Land-value-added-for-LVAT-assessment-used").val()*0.3;
				}
				$("#LVAT-payable-used").val(LVAT_payable_used.toFixed(2));
			});
			
			$("#LVAT-button-used").click(function() {
				
				if($("#Used-real-estate-purchase-price").val()==0||$("#Used-real-estate-purchase-price").val()==null){
					cbfcolused=(parseFloat($("#Used-real-estate-evaluation-price").val())+parseFloat($("#Used-real-estate-land-price-and-deed-tax").val())
							+(parseFloat($("#Used-real-estate-sales-revenue").val()))*0.0565);
				}else{
					cbfcolused=(1+(parseFloat($("#Number-of-years-held").val()))*0.05)*parseFloat($("#Used-real-estate-purchase-price").val())
						+(parseFloat($("#Used-real-estate-sales-revenue").val()))*0.0865;
				}
				$("#Cost-base-for-calculation-of-LVAT-used-real-estate").val(cbfcolused.toFixed(2));
				$("#Land-value-added-for-LVAT-assessment-used").val(($("#Used-real-estate-sales-revenue").val()-cbfcolused).toFixed(2));
				$("#Land-value-added-ratio-used").val((($("#Land-value-added-for-LVAT-assessment-used").val()/cbfcolused)*100).toFixed(2)+"%");
				//LVAT_payable_used;
				var d28=$("#Land-value-added-for-LVAT-assessment-used").val()/cbfcolused;
				if(d28<0){
					LVAT_payable_used=0;
				}else if(d28>2){
					LVAT_payable_used=$("#Land-value-added-for-LVAT-assessment-used").val()*0.6-cbfcolused*0.35;
				}else if(d28>1){
					LVAT_payable_used=$("#Land-value-added-for-LVAT-assessment-used").val()*0.5-cbfcolused*0.15;
				}else if(d28>0.5){
					LVAT_payable_used=$("#Land-value-added-for-LVAT-assessment-used").val()*0.4-cbfcolused*0.05;
				}else{
					LVAT_payable_used=$("#Land-value-added-for-LVAT-assessment-used").val()*0.3;
				}
				$("#LVAT-payable-used").val(LVAT_payable_used.toFixed(2));
			});
			
			$("#LVAT-prepaid-tax-rate").bind('input propertychange',function(){
				$("#Cost-base-for-calculation-of-LVAT-new-real-estate").val(((parseFloat($("#Land-cost").val())+parseFloat($("#PDE").val()))*1.3
						+parseFloat($("#Business-tax-and-affiliates").val())+parseFloat($("#Deed-tax").val())).toFixed(2));
				$("#Land-value-added-for-LVAT-assessment").val(($("#Sales-revenue").val()-$("#Cost-base-for-calculation-of-LVAT-new-real-estate").val()).toFixed(2));
				$("#Land-value-added-ratio").val((($("#Land-value-added-for-LVAT-assessment").val()/($("#Cost-base-for-calculation-of-LVAT-new-real-estate")).val()).toFixed(2))*100+"%");
				var d33=$("#Land-value-added-for-LVAT-assessment").val()/$("#Cost-base-for-calculation-of-LVAT-new-real-estate").val();
				var d31=$("#Cost-base-for-calculation-of-LVAT-new-real-estate").val();
				if(d33<0){
					LVAT_payable=0;
				}else if(d33>2){
					LVAT_payable=$("#Land-value-added-for-LVAT-assessment").val()*0.6-d31*0.35;
				}else if(d33>1){
					LVAT_payable=$("#Land-value-added-for-LVAT-assessment").val()*0.5-d31*0.15;
				}else if(d33>0.5){
					LVAT_payable=$("#Land-value-added-for-LVAT-assessment").val()*0.4-d31*0.05;
				}else{
					LVAT_payable=$("#Land-value-added-for-LVAT-assessment").val()*0.3;
				}
				$("#LVAT-payable").val(LVAT_payable.toFixed(2));
				$("#LVAT-prepaid-tax").val($("#Sales-revenue").val()*delPercentCharacter($("#LVAT-prepaid-tax-rate").val())/100);
				$("#LVAT-liquidation").val($("#LVAT-payable").val()-$("#LVAT-prepaid-tax").val());	
			});
			$("#LVAT-button").click(function() {
				$("#Cost-base-for-calculation-of-LVAT-new-real-estate").val(((parseFloat($("#Land-cost").val())+parseFloat($("#PDE").val()))*1.3
						+parseFloat($("#Business-tax-and-affiliates").val())+parseFloat($("#Deed-tax").val())).toFixed(2));
				$("#Land-value-added-for-LVAT-assessment").val(($("#Sales-revenue").val()-$("#Cost-base-for-calculation-of-LVAT-new-real-estate").val()).toFixed(2));
				$("#Land-value-added-ratio").val((($("#Land-value-added-for-LVAT-assessment").val()/($("#Cost-base-for-calculation-of-LVAT-new-real-estate")).val()).toFixed(2))*100+"%");
				var d33=$("#Land-value-added-for-LVAT-assessment").val()/$("#Cost-base-for-calculation-of-LVAT-new-real-estate").val();
				var d31=$("#Cost-base-for-calculation-of-LVAT-new-real-estate").val();
				if(d33<0){
					LVAT_payable=0;
				}else if(d33>2){
					LVAT_payable=$("#Land-value-added-for-LVAT-assessment").val()*0.6-d31*0.35;
				}else if(d33>1){
					LVAT_payable=$("#Land-value-added-for-LVAT-assessment").val()*0.5-d31*0.15;
				}else if(d33>0.5){
					LVAT_payable=$("#Land-value-added-for-LVAT-assessment").val()*0.4-d31*0.05;
				}else{
					LVAT_payable=$("#Land-value-added-for-LVAT-assessment").val()*0.3;
				}
				$("#LVAT-payable").val(LVAT_payable.toFixed(2));
				$("#LVAT-prepaid-tax").val($("#Sales-revenue").val()*delPercentCharacter($("#LVAT-prepaid-tax-rate").val())/100);
				$("#LVAT-liquidation").val($("#LVAT-payable").val()-$("#LVAT-prepaid-tax").val());
			});

			$("#Deed-tax-rate").bind('input propertychange',function(){
				$("#Cost-base-for-calculation-of-LVAT-GSA").val((parseFloat($("#Land-cost").val())+parseFloat($("#PDE").val()))*1.2+parseFloat($("#Business-tax-and-affiliates").val())+parseFloat($("#Deed-tax").val()));
				$("#Deed-tax").val(($("#Land-cost").val()*(delPercentCharacter($("#Deed-tax-rate").val())/100)).toFixed(2));
			});
			$("#Deed-tax-button").click(function() {
				$("#Cost-base-for-calculation-of-LVAT-GSA").val((parseFloat($("#Land-cost").val())+parseFloat($("#PDE").val()))*1.2+parseFloat($("#Business-tax-and-affiliates").val())+parseFloat($("#Deed-tax").val()));
				$("#Deed-tax").val(($("#Land-cost").val()*(delPercentCharacter($("#Deed-tax-rate").val())/100)).toFixed(2));
			});

			$("#Real-estate-original-value,#Real-estate-monthly-rent").bind('input propertychange',function(){
				//房产原值或月租金只允许输入一个
				if($("#Real-estate-monthly-rent").val()!=0){
					$("#Real-estate-original-value").attr("readonly","readonly");
					$("#Real-estate-original-value").attr("placeholder","房产原值或月租金只允许输入一个");
				}else {
					$("#Real-estate-original-value").removeAttr("readonly");
					$("#Real-estate-original-value").attr("placeholder","请先在这里输入");
				}
				if($("#Real-estate-original-value").val()!=0){
					$("#Real-estate-monthly-rent").attr("readonly","readonly");
					$("#Real-estate-monthly-rent").attr("placeholder","房产原值或月租金只允许输入一个");
					
				}else {
					$("#Real-estate-monthly-rent").removeAttr("readonly");
					$("#Real-estate-monthly-rent").attr("placeholder","请先在这里输入");
				}
				
				if ($("#Real-estate-monthly-rent").val()==0) {
					Real_estate_tax=$("#Real-estate-original-value").val()*0.7*0.012;
				}else{
					Real_estate_tax=$("#Real-estate-monthly-rent").val()*0.12;
				}
				$("#Real-estate-tax").val(Real_estate_tax);
			});
			
			$("#Real-estate-tax-button").click(function() {

				//房产原值或月租金只允许输入一个
				if($("#Real-estate-monthly-rent").val()!=0){
					$("#Real-estate-original-value").attr("readonly","readonly");
					$("#Real-estate-original-value").attr("placeholder","房产原值或月租金只允许输入一个");
				}else {
					$("#Real-estate-original-value").removeAttr("readonly");
					$("#Real-estate-original-value").attr("placeholder","请先在这里输入");
				}
				if($("#Real-estate-original-value").val()!=0){
					$("#Real-estate-monthly-rent").attr("readonly","readonly");
					$("#Real-estate-monthly-rent").attr("placeholder","房产原值或月租金只允许输入一个");
					
				}else {
					$("#Real-estate-monthly-rent").removeAttr("readonly");
					$("#Real-estate-monthly-rent").attr("placeholder","请先在这里输入");
				}
				
				if ($("#Real-estate-monthly-rent").val()==0) {
					Real_estate_tax=$("#Real-estate-original-value").val()*0.7*0.012;
				}else{
					Real_estate_tax=$("#Real-estate-monthly-rent").val()*0.12;
				}
				$("#Real-estate-tax").val(Real_estate_tax);
			
			});

			$("#Land-use-tax-rate,#Land-size").bind('input propertychange',function(){
				$("#Yearly-Land-use-tax").val((($("#Land-use-tax-rate").val())*$("#Land-size").val()).toFixed(2));
			});
			
			$("#Land-use-tax-button").click(function() {
				$("#Yearly-Land-use-tax").val((($("#Land-use-tax-rate").val())*$("#Land-size").val()).toFixed(2));
			});


			$("#Marketing-expenses,#GandA,#Financial-expenses,#CIT-prepaid-tax-rate").bind('input propertychange',function(){
				EBT=parseFloat($("#Sales-revenue").val())+parseFloat($("#Rent-revenue").val())-$("#Land-cost").val()-
					$("#PDE").val()-$("#Rent-cost").val()-$("#Marketing-expenses").val()-
					$("#GandA").val()-$("#Financial-expenses").val()-$("#Business-tax-and-affiliates").val()-
					$("#LVAT-payable-used").val()-$("#LVAT-payable").val()-$("#Deed-tax").val();
				$("#EBT").val(EBT);
				$("#Payable-CIT").val(($("#EBT").val()*0.25).toFixed(2));
				$("#Prepaid-CIT").val(((delPercentCharacter($("#CIT-prepaid-tax-rate").val())/100)*$("#Sales-revenue").val()).toFixed(2));
				$("#Liquidation-of-CIT").val(($("#Payable-CIT").val()-$("#Prepaid-CIT").val()).toFixed(2));
				$("#NPAT").val(($("#EBT").val()-$("#Payable-CIT").val()).toFixed(2));
			});
			
			$("#CIT-button").click(function() {

				EBT=parseFloat($("#Sales-revenue").val())+parseFloat($("#Rent-revenue").val())-$("#Land-cost").val()-
					$("#PDE").val()-$("#Rent-cost").val()-$("#Marketing-expenses").val()-
					$("#GandA").val()-$("#Financial-expenses").val()-$("#Business-tax-and-affiliates").val()-
					$("#LVAT-payable-used").val()-$("#LVAT-payable").val()-$("#Deed-tax").val();
				$("#EBT").val(EBT);
				$("#Payable-CIT").val(($("#EBT").val()*0.25).toFixed(2));
				$("#Prepaid-CIT").val(((delPercentCharacter($("#CIT-prepaid-tax-rate").val())/100)*$("#Sales-revenue").val()).toFixed(2));
				$("#Liquidation-of-CIT").val(($("#Payable-CIT").val()-$("#Prepaid-CIT").val()).toFixed(2));
				$("#NPAT").val(($("#EBT").val()-$("#Payable-CIT").val()).toFixed(2));
			
			});
			
			//土地增值税预缴税率的百分号显示
			$("#LVAT-prepaid-tax-rate").bind('input propertychange',function(){
				$("#LVAT-prepaid-tax-rate").val(delPercentCharacter($("#LVAT-prepaid-tax-rate").val())+"%");
//				alert(delPercentCharacter($("#LVAT-prepaid-tax-rate").val())/100);
			});
			//契税税率的百分号显示
			$("#Deed-tax-rate").bind('input propertychange',function(){
				$("#Deed-tax-rate").val(delPercentCharacter($("#Deed-tax-rate").val())+"%");
			});

/*			//土地使用税率的百分号显示
			$("#Land-use-tax-rate").bind('input propertychange',function(){
				$("#Land-use-tax-rate").val(delPercentCharacter($("#Land-use-tax-rate").val())+"%");
			});*/

			//企业所得税预缴税率的百分号显示
			$("#CIT-prepaid-tax-rate").bind('input propertychange',function(){
				$("#CIT-prepaid-tax-rate").val(delPercentCharacter($("#CIT-prepaid-tax-rate").val())+"%");
//				alert(delPercentCharacter($("#CIT-prepaid-tax-rate").val())/100);
			});
			//年增值率的百分号显示
			$("#Yearly-market-value-increase").bind('input propertychange',function(){
				$("#Yearly-market-value-increase").val(delPercentCharacter($("#Yearly-market-value-increase").val())+"%");
//				alert(delPercentCharacter($("#Yearly-market-value-increase").val())/100);
			});
			
			//增值率的百分号显示
			$("#Land-value-added-for-LVAT-assessment").bind('input propertychange',function(){
				$("#Land-value-added-for-LVAT-assessment").val(delPercentCharacter($("#Land-value-added-for-LVAT-assessment").val())+"%");
//				alert(delPercentCharacter($("#Land-value-added-ratio").val())/100); $("#Land-value-added-ratio").val()
			});


			// 持有年份限制
			$("#Number-of-years-held").change(function(){
				if($("#Number-of-years-held").val()>5){
					alert("持有年份必须小于5年，请重新输入");
					$("#Number-of-years-held").val(0);
				}
			});

		/*	$(".Business-tax-and-affiliates").click(function(){
				$("#Business-tax").val(((parseFloat($("#Sales-revenue").val())+parseFloat($("#Rent-revenue").val()))*0.05).toFixed(2));
				$("#Urban-maintenance-and-construction-tax").val(($("#Business-tax").val()*0.07).toFixed(2));
				$("#extra-charges-of-education-funds").val(($("#Business-tax").val()*0.03).toFixed(2));
				$("#Local-extra-charges-of-education-funds").val(($("#Business-tax").val()*0.02).toFixed(2));
				$("#Business-tax-and-affiliates").val((parseFloat($("#Business-tax").val())+parseFloat($("#Local-extra-charges-of-education-funds").val())+parseFloat($("#extra-charges-of-education-funds").val())+parseFloat($("#Urban-maintenance-and-construction-tax").val())).toFixed(2));
			});
			$(".LVAT").click(function(){
				$("#LVAT-prepaid-tax").val(($("#Sales-revenue").val()*(delPercentCharacter($("#LVAT-prepaid-tax-rate").val())/100)).toFixed(2));
				$("#Cost-base-for-calculation-of-LVAT-GSA").val((parseFloat($("#Land-cost").val())+parseFloat($("#PDE").val()))*1.2+parseFloat($("#Business-tax-and-affiliates").val())+parseFloat($("#Deed-tax").val()));
				if($("#Used-real-estate-purchase-price").val()==0){
					Cost_base_for_calculation_of_LVAT_GLA=$("#Used-real-estate-evaluation-price").val();
					}else{
						Cost_base_for_calculation_of_LVAT_GLA=Math.pow((1+parseFloat($("#Used-real-estate-evaluation-price").val())),$("#Number-of-years-held").val())*$("#Used-real-estate-purchase-price").val();
					}
				$("#Cost-base-for-calculation-of-LVAT-GLA").val(Cost_base_for_calculation_of_LVAT_GLA);
				$("#Cost-base-for-calculation-of-LVAT").val((parseFloat($("#Cost-base-for-calculation-of-LVAT-GSA").val())+parseFloat($("#Cost-base-for-calculation-of-LVAT-GLA").val())).toFixed(2));
				$("#Land-value-added-for-LVAT-assessment").val((parseFloat($("#Sales-revenue").val())-$("#Cost-base-for-calculation-of-LVAT-GLA").val()).toFixed(2));
				// $("#Land-value-added-ratio").val(($("#Land-value-added-for-LVAT-assessment").val()/$("#Cost-base-for-calculation-of-LVAT").val())*100+"%");
				$("#Land-value-added-ratio").val(($("#Land-value-added-for-LVAT-assessment").val()/$("#Cost-base-for-calculation-of-LVAT").val()));
				$("#LVAT-liquidation").val(($("#LVAT-payable").val()-$("#LVAT-prepaid-tax").val()).toFixed(2));
				if ((delPercentCharacter($("#Land-value-added-ratio").val())/100)<0) {
					LVAT_payable=0;
					}else if ((delPercentCharacter($("#Land-value-added-ratio").val())/100)>2) {
						LVAT_payable=$("#Land-value-added-for-LVAT-assessment").val()*0.6-$("#Cost-base-for-calculation-of-LVAT").val()*0.35;
					}else if ((delPercentCharacter($("#Land-value-added-ratio").val())/100)>1) {
						LVAT_payable=$("#Land-value-added-for-LVAT-assessment").val()*0.5-$("#Cost-base-for-calculation-of-LVAT").val()*0.15;
					}else if ((delPercentCharacter($("#Land-value-added-ratio").val())/100)>0.5) {
						LVAT_payable=$("#Land-value-added-for-LVAT-assessment").val()*0.4-$("#Cost-base-for-calculation-of-LVAT").val()*0.05;
					}else{
						LVAT_payable=$("#Land-value-added-for-LVAT-assessment").val()*0.3;
					}
				$("#LVAT-payable").val(LVAT_payable);
			});
			$(".Real-estate-tax").click(function(){
				if ($("#Real-estate-monthly-rent").val()==0) {
					Real_estate_tax=$("#Real-estate-original-value").val()*0.7*0.012;
				}else{
					Real_estate_tax=$("#Real-estate-monthly-rent").val()*0.12;
				}
				$("#Real-estate-tax").val(Real_estate_tax);
			});
			$(".Deed-tax").click(function(){
				$("#Deed-tax").val(($("#Land-cost").val()*(delPercentCharacter($("#Deed-tax-rate").val())/100)).toFixed(2));
			});
			$(".Lan-use-tax").click(function(){
				$("#Yearly-Land-use-tax").val((($("#Land-use-tax-rate").val())*$("#Land-cost").val()).toFixed(2));
			});
			$(".CIT").click(function(){
				EBT=parseFloat($("#Sales-revenue").val())+parseFloat($("#Rent-revenue").val())-$("#Land-cost").val()-
					$("#PDE").val()-$("#Rent-cost").val()-$("#Marketing-expenses").val()-
					$("#GandA").val()-$("#Financial-expenses").val()-$("#Business-tax-and-affiliates").val()-
					$("#LVAT-payable").val()-$("#Deed-tax").val();
				$("#EBT").val(EBT);
				$("#Payable-CIT").val(($("#EBT").val()*0.25).toFixed(2));
				$("#Prepaid-CIT").val(((delPercentCharacter($("#CIT-prepaid-tax-rate").val())/100)*$("#Sales-revenue").val()).toFixed(2));
				$("#Liquidation-of-CIT").val(($("#Payable-CIT").val()-$("#Prepaid-CIT").val()).toFixed(2));
				$("#NPAT").val(($("#EBT").val()-$("#Payable-CIT").val()).toFixed(2));
			});*/


		});

		// 过滤其它字符，只能输入数字，含小数
		 function ValidateNumber(e, pnumber) 
			{ 
			 if (!/^\d*[.]??\d*[%]??$/.test(pnumber)) 
				{ 
				e.value = /^\d*[.]??\d*[%]??$/.exec(e.value);
				alert("输入数据格式错误！");
				}
			return false;
			} 
		 
		 function delPercentCharacter(s) {
			 
			  if (s.length > 1) {
			    s = s.replace("%","");
			    s = s.replace("%","");
			    s = s.replace("%","");
			    s = s.replace("%","");
			  }
			  return s;
			}
		 
		
		 