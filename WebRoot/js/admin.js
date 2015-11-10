
function loadWorker (start, limit, init,usertype2,path,zh) {
    
	$("#alladmin_table_body").empty();
    $("#alladmin_table_body").html("<td colspan='10' style='text-align: center;'><img src='../../imgs/load.jpg'/></td>");
    
    $.ajax({
            url: "../../ListAdminServlet",
            data: {
            	start: start,
                limit: limit,
                usertype2:usertype2,
                zh:zh
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
                    var $td_wzdm_temp = "";
                    if(content[i].usertype=="worker"||(content[i].usertype=="superadmin"))
                        $td_wzdm_temp = $("<td>-----</td>");
                    else 
                    	$td_wzdm_temp = $("<td class='editLimitnumberxx'>"+content[i].limitnumber+"</td>");
                    var $td_createby_temp = $("<td>"+content[i].createby+"</td>");
                    var $td_id_temp = $("<td class='hidden'>"+content[i].id+"</td>");
                    
                    //////////////////删除按钮///////////////////
                 	var $td_del_temp = $("<td>" +
                 			"<a data-toggle='modal' data-target='#confirmModalxxx"+i+"'" +
                 			" class='btn btn-danger delModalButtonJs2x' " +
                 			"rel="+path+"/DeleteYgxServlet?acountnumber="+content[i].acountnumber+">" +
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
                 	var $modal = $("<div id='confirmModalxxx"+i+"' data-backdrop='static' class='modal fade' id='delModal' tabindex='-1' role='dialog' aria-labelledby='delModalLabel' aria-hidden='true'></div>");
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
                $('.delModalButtonJs2x').click(function(){
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
                             	if(json.isDeleteYgxASuccess)
                         		{
                             		alert("删除成功！！！");
                             		$('.modal-backdrop').remove();
                             		loadWorker (0, 20, true,usertype2,path,zh);
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
                    	loadWorker (20*(page-1), 20, false,usertype2,path,zh);
                    }
                };
                    makePigination(options);
                }
                
                /////////////////////////
                ////////////////////////////////////绑定更新事件
                //$(".editLimitnumber").click(tdClick);//选取所有的除了class为delButton的单元格
                 ////////////////////////////////////
            },
            error: function( xhr, status ) {
            	alert("error");
            },
            complete: function( xhr, status ) {

            }
        });
}

function isRepeateWorkerAcount(workerAcount, allowInsertWorkerAcount) 
{
    $.ajax({
            url: "../../IsRepeateWorkerAcountServlet",
            async:false,
            data: {
            	workerAcount:workerAcount
            },
            type: "post",
            dataType : "json",
            success: function( json ) {
            	if(json.isRepeateWorkerAcount)
        		{
            		alert("员工账号不能重复！！！");
        		}
            	else{  
            		allowInsertWorkerAcount = true;
            		
            	}
            },
            error: function( xhr, status ) {
            	alert("error");
            },
            complete: function( xhr, status ) {
            	
            }
        });
    return allowInsertWorkerAcount;//ajax向jsp页面返回值的方法
}



function findNum(zh,allowInsertWorkerAcount)
{
    $.ajax({
            url: "../../FindNumServlet",
            async:false,
            data: {
            	zh:zh
            },
            type: "post",
            dataType : "json",
            success: function( json ) {
            	if(json.limitnum<=json.nownum)
        		{
            		alert("开户数量已满！！！");
            		$('.createWorkerButton').attr("disabled",true);
        		}
            	else
        		{
            		allowInsertWorkerAcount = true;
        		}
            },
            error: function( xhr, status ) {
            	alert("error");
            },
            complete: function( xhr, status ) {
            	
            }
        });
    return allowInsertWorkerAcount;//ajax向jsp页面返回值的方法
}

function addWorker(companyName,companyType,workerAcount,workerName,workerPassword,position,zh) 
{
    $.ajax({
            url: "../../AddWorkerServlet",
            data: {
            	companyName:companyName,
            	companyType:companyType,
            	workerAcount:workerAcount,
            	workerName:workerName,
            	workerPassword:workerPassword,
            	position:position,
            	zh:zh
            },
            type: "post",
            dataType : "json",
            success: function( json ) {
            	if(json.isAddWorkerSuccess)
        		{
            		alert("添加员工成功！！！");
        		}
            	else{
            		alert("添加员工失败！！！");
            	}
            },
            error: function( xhr, status ) {
            	alert("error");
            },
            complete: function( xhr, status ) {

            }
        });
}