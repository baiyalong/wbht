function loadAllJilianNode(start, limit, init,path) {
    
	$("#alljilian_table_body").empty();
    $("#alljilian_table_body").html("<td colspan='10' style='text-align: center;'><img src='../../imgs/load.jpg'/></td>");
    
    $.ajax({
            url: path+"/ListAllJilianNodeServlet",
            data: {
            	start: start,
                limit: limit
            },
            type: "post",
            dataType : "json",
            success: function( json ) {
            	
              $("#alljilian_table_body").empty();
              var number = json.list.length;
              var content = json.list;

                for (var i = 0; i < number; i++) {
                	
                	var $tr_temp = $("<tr class='tr"+i+"'></tr>");
                	
                    var $td_num_temp = $("<td>"+(i+1)+"</td>");
                    var $td_lxhm_temp = $("<td class='editJilian'>"+content[i].yijinode+"</td>");
                    var $td_kdgs_temp = $("<td class='editJilian'>"+content[i].erjinode+"</td>");
                    var $td_wzdm_temp = $("<td class='editJilian'>"+content[i].type+"</td>");
                    var $td_id_temp = $("<td class='hidden'>"+content[i].id+"</td>");
                    //////////////////删除按钮///////////////////
                 	var $td_del_temp = $("<td>" +
                 			"<a data-toggle='modal' data-target='#confirmModal"+i+"'" +
                 			" class='btn btn-danger delModalButtonJs' rel="+path+"/DeleteJilianServlet?id="+content[i].id+">" +
                 				"<span class='glyphicon glyphicon-trash'></span>" +
                 			"</a></td>");
                 	////////////////////////////////////
                    
                    $tr_temp.append($td_num_temp);
                    $tr_temp.append($td_lxhm_temp);
                    $tr_temp.append($td_kdgs_temp);
                    $tr_temp.append($td_wzdm_temp);
                    $tr_temp.append($td_id_temp);
                    $tr_temp.append($td_del_temp);
                    

                    $("#alljilian_table_body").append($tr_temp); 
                    //////////////////动态生成模态框开始////////////////////////
                 	var $modal = $("<div id='confirmModal"+i+"' data-backdrop='static' class='modal fade' id='delModal' tabindex='-1' role='dialog' aria-labelledby='delModalLabel' aria-hidden='true'></div>");
                 	var $modal1 = $("<div class='modal-dialog modal-lg'></div>");
                 	var $modal2 = $("<div class='modal-content'></div>");
                 	
                 	var $modal30 = $("<div class='modal-header'><button type='button' class='close' data-dismiss='modal'><span aria-hidden='true'>&times;</span><span class='sr-only'>Close</span></button><h4 class='modal-title' id='delModalLabel'>确定删除</h4></div>");
                 	var $modal31 = $("<div class='modal-body'><div class='text-center delFont' style='font-family: 微软雅黑;font-size:20px;letter-spacing: 3px;color:red;'>确定要删除选中数据吗？</div></div>");
                 	var $modal32 = $("<div class='modal-footer'></div>");
                 	var $modal321 = $("<button type='button' class='btn btn-primary confirmJs' data-dismiss='modal'>确定</button>");
                 	var $modal322 = $("<button type='button' class='btn btn-default' data-dismiss='modal'>关闭</button>");
                 	
                 	$modal32.append($modal321);
                 	$modal32.append($modal322);
                 	
                 	$modal2.append($modal30);
                 	$modal2.append($modal31);
                 	$modal2.append($modal32);
                 	
                 	$modal1.append($modal2);
                 	$modal.append($modal1);
                 	$(".tr"+i).append($modal);
                 	//////////////////动态生成模态框结束////////////////////////
                    
                }
                /////////////////////////
             // 绑定弹窗
                $('.delModalButtonJs').click(function(){
                	 var nowPanelBody = $(this).parents("tr");
	           	     var nowModal = nowPanelBody.children("div").eq(0);
	           	     var nowContentModal = nowModal.children("div").eq(0).children("div").eq(0);
	           	     var nowModalFooterModal = nowContentModal.children("div").eq(2);
	           	     var confirmAnniu = nowModalFooterModal.children("button").eq(0);
	           	     confirmAnniu.attr('rel', $(this).attr('rel') );
	           	     confirmAnniu.click(function () {
                             /*window.location.href=$(this).attr('rel');
                             alert("删除成功！！！");*/
                           $.ajax({
                             url: $(this).attr('rel'),
                             type: "post",
                             dataType : "json",
                             success: function( json ) {
                             	if(json.isDeleteJilianSuccess)
                         		{
                             		alert("删除成功！！！");
                             		$('.modal-backdrop').remove();
                             		loadAllJilianNode(0, 20, true,path);
                             		//下面这两句话用于实现删除表格的隐藏
                             		/*var idValue = idStr.split("=")[1];
                             		$("td:contains("+idValue+")").parents("table").hide();*/
                             		//loadDd(0,3,false, username);
                         		}
                             	else{
                             		alert("删除成功！！！");
                             	}
                             },
                             error: function( xhr, status ) {
                             	alert("error");
                             },
                             complete: function( xhr, status ) {

                             }
                         });
                        	 
                         });
                    });
                /////////////删除结束////////////
                
                if(init){
                    var options = {
                    currentPage: 1,
                    totalPages: getPageNumber(json.sum,20),
                    bootstrapMajorVersion:3,
                    onPageClicked: function(e,originalEvent,type,page){
                    	loadAllJilianNode(20*(page-1),20,false,path);
                    }
                };
                    makePigination(options);
                }
                
                /////////////////////////
                ////////////////////////////////////绑定更新事件
                $(".editJilian").click(tdClickJilian);//选取所有的除了class为delButton的单元格
                 ////////////////////////////////////
            },
            error: function( xhr, status ) {
            	alert("error");
            },
            complete: function( xhr, status ) {

            }
        });
}

function tdClickJilian(){ 
	/*
	 * 将单元格变成文本框
	 */
	////////////////////////////////////
	  //保存当前的td节点 
	    var td = $(this); 
	    //取出当前td节点的文本内容并保存起来 
	    var text = td.text(); 
	    //alert(text);
	    
	   //清空td里面的内容 
	    td.empty();//也可以是td.empty(); 
	    //建立一个文本框 
	    
	    var input = $("<textarea>");
	    //设置文本框的值是刚保存起来的 
	    input.text(text); 
	    input.width(td.width());
	    input.height(td.height());
	    //input.height(40);
	    //td.css("padding", 0);
	    //将文本框加入到td中 
	    td.append(input); 
	    ///////////////////////////////////////
	    //让文本框里的文字高亮选中 
	    var inputDom = input.get(0); 
	    inputDom.select(); 
	    //取消td的点击事件 
	    td.unbind("click"); 
	    
	    input.blur(function(){
	      var inputNode = $(this); 
	      var inputText = inputNode.val(); 
	      var tdNode = inputNode.parent(); 
	      tdNode.html(inputText);
	      
	      if(text!=inputText)
	      {
	    	  	var yiji = td.parents("tr").children("td").eq(1).text();//注意：children只能获取旗下的所有子元素，而不能获取后代元素
	    	  	var erji = td.parents("tr").children("td").eq(2).text();//注意：children只能获取旗下的所有子元素，而不能获取后代元素
	    	  	var type = td.parents("tr").children("td").eq(3).text();//注意：children只能获取旗下的所有子元素，而不能获取后代元素
		        var id = td.parents("tr").children("td").eq(4).text();
		        //alert(isGet);
		        $.ajax({
		            url: "../../UpdateJilianServlet",
		            data: {
		            	yiji: yiji,
		            	erji: erji,
		            	type: type,
		            	id: id
		            },
		            type: "post",
		            dataType : "json",
		            success: function(json) {
		            	if(json.isUpdateJilianSuccess)
		        		{
		            		alert("更新成功!!!");
		        		}
		            	else{
		            		alert("更新失败!!!");
			            	tdNode.html(text);
		            	}
		            },
		            error: function()
		            {
		            	alert("更新失败!!!");
		            	tdNode.html(text);
		            }
		        });
		  /////////////////
	      }
	      
	      tdNode.click(tdClickJilian); 
	    }); 
	    //////////////////////////////////////////////////////////////////////////////////////////////////
}


function loadAdmin (start, limit, init,usertype2,path) {
    
	$("#alladmin_table_body").empty();
    $("#alladmin_table_body").html("<td colspan='10' style='text-align: center;'><img src='../../imgs/load.jpg'/></td>");
    
    $.ajax({
            url: "../../ListAdminServlet",
            data: {
            	start: start,
                limit: limit,
                usertype2:usertype2
            },
            type: "post",
            dataType : "json",
            success: function( json ) {
            	
              $("#alladmin_table_body").empty();
              var number = json.list.length;
              var content = json.list;

                for (var i = 0; i < number; i++) {
                	
                	var $tr_temp = $("<tr class='tr"+i+"'></tr>");
                	
                    var $td_num_temp = $("<td>"+(i+1)+"</td>");
                    var $td_lxhm_temp = $("<td>"+content[i].acountnumber+"</td>");
                    var $td_kdgs_temp = $("<td>"+content[i].username+"</td>");
                    var $td_usertype_temp = $("<td>"+content[i].usertype+"</td>");
                    var $td_gsmc_temp = $("<td>"+content[i].companyname+"</td>");
                    var $td_wzdm_temp = null;
                    if(content[i].usertype=="worker"||(content[i].usertype=="superadmin"))
                        $td_wzdm_temp = $("<td>-----</td>");
                    else 
                    	$td_wzdm_temp = $("<td class='editLimitnumber'>"+content[i].limitnumber+"</td>");
                    
                    var $td_createby_temp = $("<td>"+content[i].createby+"</td>");
                    var $td_id_temp = $("<td class='hidden'>"+content[i].id+"</td>");
                    
                    
                    
                    //////////////////删除按钮///////////////////
                 	var $td_del_temp = $("<td>" +
                 			"<a data-toggle='modal' data-target='#confirmModalxx"+i+"'" +
                 			" class='btn btn-danger delModalButtonJs2' " +
                 			"rel="+path+"/DeleteYgServlet?acountnumber="+content[i].acountnumber+"&usertype="+content[i].usertype+"&createby="+content[i].createby+">" +
                 				"<span class='glyphicon glyphicon-trash'></span>" +
                 			"</a></td>");
                 	////////////////////////////////////
                    $tr_temp.append($td_num_temp);
                    $tr_temp.append($td_lxhm_temp);
                    $tr_temp.append($td_kdgs_temp);
                    $tr_temp.append($td_usertype_temp);
                    $tr_temp.append($td_gsmc_temp);
                    $tr_temp.append($td_wzdm_temp);
                    $tr_temp.append($td_createby_temp);
                    $tr_temp.append($td_id_temp);
                    $tr_temp.append($td_del_temp);
                    
                    $("#alladmin_table_body").append($tr_temp); 
                    //////////////////动态生成模态框开始////////////////////////
                 	var $modal = $("<div id='confirmModalxx"+i+"' data-backdrop='static' class='modal fade' id='delModal' tabindex='-1' role='dialog' aria-labelledby='delModalLabel' aria-hidden='true'></div>");
                 	var $modal1 = $("<div class='modal-dialog modal-lg'></div>");
                 	var $modal2 = $("<div class='modal-content'></div>");
                 	
                 	var $modal30 = $("<div class='modal-header'><button type='button' class='close' data-dismiss='modal'><span aria-hidden='true'>&times;</span><span class='sr-only'>Close</span></button><h4 class='modal-title' id='delModalLabel'>确定删除</h4></div>");
                 	var $modal31 = $("<div class='modal-body'><div class='text-center delFont' style='font-family: 微软雅黑;font-size:20px;letter-spacing: 3px;color:red;'>确定要删除选中数据吗？</div></div>");
                 	var $modal32 = $("<div class='modal-footer'></div>");
                 	var $modal321 = $("<button type='button' class='btn btn-primary confirmJs' data-dismiss='modal'>确定</button>");
                 	var $modal322 = $("<button type='button' class='btn btn-default' data-dismiss='modal'>关闭</button>");
                 	
                 	$modal32.append($modal321);
                 	$modal32.append($modal322);
                 	
                 	$modal2.append($modal30);
                 	$modal2.append($modal31);
                 	$modal2.append($modal32);
                 	
                 	$modal1.append($modal2);
                 	$modal.append($modal1);
                 	$(".tr"+i).append($modal);
                 	//////////////////动态生成模态框结束////////////////////////
                }
                /////////////////////////
             // 绑定弹窗
                $('.delModalButtonJs2').click(function(){
                	 var nowPanelBody = $(this).parents("tr");
	           	     var nowModal = nowPanelBody.children("div").eq(0);
	           	     var nowContentModal = nowModal.children("div").eq(0).children("div").eq(0);
	           	     var nowModalFooterModal = nowContentModal.children("div").eq(2);
	           	     var confirmAnniu = nowModalFooterModal.children("button").eq(0);
	           	     confirmAnniu.attr('rel', $(this).attr('rel') );
	           	     confirmAnniu.click(function () {
                             /*window.location.href=$(this).attr('rel');
                             alert("删除成功！！！");*/
                           $.ajax({
                             url: $(this).attr('rel'),
                             type: "post",
                             dataType : "json",
                             success: function( json ) {
                             	if(json.isDeleteYgASuccess)
                         		{
                             		alert("删除成功！！！");
                             		$('.modal-backdrop').remove();
                             		loadAdmin(0,20,true,usertype2,path);
                             		//下面这两句话用于实现删除表格的隐藏
                             		/*var idValue = idStr.split("=")[1];
                             		$("td:contains("+idValue+")").parents("table").hide();*/
                             		//loadDd(0,3,false, username);
                         		}
                             	else{
                             		alert("删除成功！！！");
                             	}
                             },
                             error: function( xhr, status ) {
                             	alert("error");
                             },
                             complete: function( xhr, status ) {

                             }
                         });
                        	 
                         });
                    });
                /////////////删除结束////////////
                /////////////////////////
                if(init){
                    var options = {
                    currentPage: 1,
                    totalPages: getPageNumber(json.sum,20),
                    bootstrapMajorVersion:3,
                    onPageClicked: function(e,originalEvent,type,page){
                    	loadAdmin(20*(page-1),20,false,usertype2,path);
                    }
                };
                    makePigination(options);
                }
                
                /////////////////////////
                ////////////////////////////////////绑定更新事件
                $(".editLimitnumber").click(tdClick);//选取所有的除了class为delButton的单元格
                 ////////////////////////////////////
            },
            error: function( xhr, status ) {
            	alert("error");
            },
            complete: function( xhr, status ) {

            }
        });
}
function tdClick(){ 
	/*
	 * 将单元格变成文本框
	 */
	////////////////////////////////////
	  //保存当前的td节点 
	    var td = $(this); 
	    //取出当前td节点的文本内容并保存起来 
	    var text = td.text(); 
	    //alert(text);
	    
	   //清空td里面的内容 
	    td.empty();//也可以是td.empty(); 
	    //建立一个文本框 
	    
	    var input = $("<textarea>");
	    //设置文本框的值是刚保存起来的 
	    input.text(text); 
	    input.width(td.width());
	    input.height(td.height());
	    //input.height(40);
	    //td.css("padding", 0);
	    //将文本框加入到td中 
	    td.append(input); 
	    ///////////////////////////////////////
	    //让文本框里的文字高亮选中 
	    var inputDom = input.get(0); 
	    inputDom.select(); 
	    //取消td的点击事件 
	    td.unbind("click"); 
	    
	    input.blur(function(){
	      var inputNode = $(this); 
	      var inputText = inputNode.val(); 
	      var tdNode = inputNode.parent(); 
	      tdNode.html(inputText);
	      
	      if(text!=inputText)
	      {
	    	  	var limitnum = td.parents("tr").children("td").eq(5).text();//注意：children只能获取旗下的所有子元素，而不能获取后代元素
		        var id = td.parents("tr").children("td").eq(7).text();
		        //alert(isGet);
		        $.ajax({
		            url: "../../UpdateLimitNumberServlet",
	            data: {
		            	limitnum: limitnum,
		            	id: id
		            },
		            type: "post",
		            dataType : "json",
		            success: function(json) {
		            	if(json.isUpdateLimitNumSuccess)
		        		{
		            		alert("更新成功!!!");
		        		}
		            	else{
		            		alert("更新失败!!!");
			            	tdNode.html(text);
		            	}
		            },
		            error: function()
		            {
		            	alert("更新失败!!!");
		            	tdNode.html(text);
		            }
		        });
		  /////////////////
	      }
	      
	      tdNode.click(tdClick); 
	    }); 
	    //////////////////////////////////////////////////////////////////////////////////////////////////
}

//方法：获得分页的数量
//参数：数据总量 每页数据
function getPageNumber (number,limit) {
var totalNumber = number;
var pageNumber = Math.floor(totalNumber/limit);
if(totalNumber%limit == 0){
   //do nothing
}else{
   pageNumber = pageNumber+1;
}
// alert(pageNumber);
return pageNumber;
}


//方法：生成分页标签
//参数：number 数据总数 another 可选参数
function makePigination (options,another) {
//生成分页
if(another === undefined){
   $('#index-bar').bootstrapPaginator(options);
}else{
   var $nav = $("#"+another);
   $nav.bootstrapPaginator(options);
   // $('#index-car-bar').bootstrapPaginator(options);
}
}

function isRepeateCompanyName(companyName, allowInsertCompany) 
{
    $.ajax({
            url: "../../IsRepeateCompanyNameServlet",
            async:false,
            data: {
            	companyName:companyName
            },
            type: "post",
            dataType : "json",
            success: function( json ) {
            	if(json.isRepeateCompanyName)
        		{
            		alert("公司名称不能重复！！！");
        		}
            	else{  
            		allowInsertCompany = true;
            		
            	}
            },
            error: function( xhr, status ) {
            	alert("error");
            },
            complete: function( xhr, status ) {
            	
            }
        });
    return allowInsertCompany;
}

function isRepeateJilian(yijiData, allowInsertJilian) 
{
    $.ajax({
            url: "../../IsRepeateJilianServlet",
            async:false,
            data: {
            	yijiData:yijiData
            },
            type: "post",
            dataType : "json",
            success: function( json ) {
            	if(json.isRepeateJilian)
        		{
            		alert("一级级联不能重复！！！");
        		}
            	else{  
            		allowInsertJilian = true;
            		
            	}
            },
            error: function( xhr, status ) {
            	alert("error");
            },
            complete: function( xhr, status ) {
            	
            }
        });
    return allowInsertJilian;
}

function addJilianData(yijiData,erjiData,type)
{
	$.ajax({
        url: "../../AddJilianServlet",
        data: {
        	yijiData:yijiData,
        	erjiData:erjiData,
        	type:type
        },
        type: "post",
        dataType : "json",
        success: function( json ) {
        	if(json.isAddJilianSuccess)
    		{
        		alert("添加数据成功！！！");
    		}
        	else{
        		alert("添加数据失败！！！");
        	}
        },
        error: function( xhr, status ) {
        	alert("error");
        },
        complete: function( xhr, status ) {

        }
    });
}

function isRepeateAdminAcount(adminAcount, allowInsertAdminAccount) 
{
    $.ajax({
            url: "../../IsRepeateAdminAcount",
            data: {
            	adminAcount:adminAcount
            },
            async:false,
            type: "post",
            dataType : "json",
            success: function( json ) {
            	if(json.isRepeateAdminAcount)
        		{
            		alert("账号名称不能重复！！！");
        		}
            	else{
            		allowInsertAdminAccount = true;
            	}
            },
            error: function( xhr, status ) {
            	alert("error");
            },
            complete: function( xhr, status ) {

            }
        });
    return allowInsertAdminAccount;
}

function addAdmin(companyName,companyType,adminAcount,adminPassword,workerNumber,adminName,createby) 
{
    $.ajax({
            url: "../../AddAdminServlet",
            data: {
            	companyName:companyName,
            	companyType:companyType,
            	adminAcount:adminAcount,
            	adminPassword:adminPassword,
            	workerNumber:workerNumber,
            	adminName:adminName,
            	createby:createby
            },
            type: "post",
            dataType : "json",
            success: function( json ) {
            	if(json.isAddAdminSuccess)
        		{
            		alert("添加管理员成功！！！");
        		}
            	else{
            		alert("添加管理员失败！！！");
            	}
            },
            error: function( xhr, status ) {
            	alert("error");
            },
            complete: function( xhr, status ) {

            }
        });
}