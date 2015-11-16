/**
 * 更新
 */
function eDitFaguiku(id,fgwh,fgtw,fgqwFileNameTime,gjc,sz,sydqname,bz,path)
{
    $.ajax({
        url: "EditFaguiServlet",
        data: {
        	id:id,
        	fgwh:fgwh,
        	fgtw:fgtw,
        	fgqwFileNameTime:fgqwFileNameTime,
        	gjc:gjc,
        	sz:sz,
        	sydqname:sydqname,
        	bz:bz
        },
        type: "post",
        dataType : "json",
        success: function( json ) {
        	if(json.isEditFaguiSuccess)
    		{
        		alert("更新成功！！！");
        		window.location.href=path+"/pages/faguiku/faguiku.jsp";
    		}
        	else{
        		alert("更新失败！！！");
        	}
        },
        error: function( xhr, status ) {
        	alert("error");
        },
        complete: function( xhr, status ) {

        }
    });
}
/**
 * 列出所有的法规
 * @param start  以后会用作分页
 * @param limit  以后会用作分页
 * @param init
 */
function loadAllFagui (start, limit, init,gjc_sousuo,sz_sousuo,fgwh_sousuo,zh,companyName,usertype) {
    
	$(".allFaGui_table_body").empty();
    $(".allFaGui_table_body").html("<p style='text-align: center;width:100%;'><img src='../../imgs/load.jpg'/></p>");
    
    $.ajax({
            url: "../../ListAllFaguiServlet",
            data: {
            	start: start,
                limit: limit,
                gjc_sousuo: gjc_sousuo,
                sz_sousuo: sz_sousuo,
                fgwh_sousuo: fgwh_sousuo,
                companyName:companyName,
                usertype:usertype
            },
            type: "post",
            dataType : "json",
            success: function( json ) {
            	
              $(".allFaGui_table_body").empty();
              var number = json.list.length;
              var content = json.list;

                for (var i = 0; i < number; i++) {
                	////////////权限问题开始//////////////
                	
                	/*if((content[i].companyName==companyName)||(content[i].usertype=="superadmin")||(usertype=="superadmin"))
                	{
                	*/	var $table_temp = $("<table class='table table-bordered table-hover table-striped faguiTable tble"+i+"'></table>");
                     	var $tr_num = $('<tr></tr>');
                     	var $th_num_temp = $("<th>序号</th>");
                     	var $td_num_temp = $("<td class='delButton'>"+(i+1)+"</td>");
                     	
                     	$tr_num.append($th_num_temp);
                     	$tr_num.append($td_num_temp);
                     	$table_temp.append($tr_num);
                     	
                     	
                     	var $tr_fgnumber = $('<tr></tr>');
                     	var $th_fgnumber_temp = $("<th>法规文号</th>");
                     	var $td_fgnumber_temp = $("<td class='nrmore' style='display:none'>"+content[i].fgnumber+"<a href='javascript:void(0)' onclick='hidemore()'>隐藏</a> "+"</td>");
                     	var $td_fgnumber_temp2 = $("<td class='nr'>"+shortstring(content[i].fgnumber)+"</td>");
                     	
                     	$tr_fgnumber.append($th_fgnumber_temp);
                     	$tr_fgnumber.append($td_fgnumber_temp);
                     	$tr_fgnumber.append($td_fgnumber_temp2);
                     	$table_temp.append($tr_fgnumber);
                     	
                     	
                     	var $tr_fgtw = $('<tr></tr>');
                     	var $th_fgtw_temp = $("<th>法规条文</th>");
                     	var $td_fgtw_temp = $("<td class='nrmore' style='display:none'>"+content[i].fgtw+"<a href='javascript:void(0)' onclick='hidemore()'>隐藏</a> "+"</td>");
                     	//var $td_fgtw_temp = $("<td>"+content[i].fgtw+"</td>");
                     	var $td_fgtw_temp2 = $("<td class='nr'>"+shortstring(content[i].fgtw)+"</td>");
                     	
                     	$tr_fgtw.append($th_fgtw_temp);
                     	$tr_fgtw.append($td_fgtw_temp);
                     	$tr_fgtw.append($td_fgtw_temp2);
                     	$table_temp.append($tr_fgtw);
                     	
                     	var $tr_content = $('<tr></tr>');
                     	var $th_content_temp = $("<th>法规全文</th>");
                     	//var $td_content_temp = $("<td><a href="+content[i].content.split("|")[1]+">"+content[i].content.split("|")[0]+"<a></td>");
                     	var $td_content_temp ;
                     	if(content[i].content)
                     		$td_content_temp = $("<td><a href='../../DownloadFileServlet?filename="+content[i].content.split("|")[1]+"'>"+content[i].content.split("|")[0]+"<a></td>");
                     	else
                     		$td_content_temp = $("<td></td>");
                     	
                     	$tr_content.append($th_content_temp);
                     	$tr_content.append($td_content_temp);
                     	$table_temp.append($tr_content);
                     	
                     	var $tr_area = $('<tr></tr>');
                     	var $th_area_temp = $("<th>适用地区</th>");
                     	var $td_area_temp = $("<td>"+content[i].area?content[i].area:''+"</td>");
                     	
                     	$tr_area.append($th_area_temp);
                     	$tr_area.append($td_area_temp);
                     	$table_temp.append($tr_area);
                     	
                     	var $tr_taxtype = $('<tr></tr>');
                     	var $th_taxtype_temp = $("<th>税种</th>");
                     	var $td_taxtype_temp = $("<td>"+content[i].taxtype+"</td>");
                     	
                     	$tr_taxtype.append($th_taxtype_temp);
                     	$tr_taxtype.append($td_taxtype_temp);
                     	$table_temp.append($tr_taxtype);
                     	
                     	var $tr_keyword = $('<tr></tr>');
                     	var $th_keyword_temp = $("<th>关键词</th>");
                     	var $td_keyword_temp = $("<td class='nrmore' style='display:none'>"+content[i].keyword+"<a href='javascript:void(0)' onclick='hidemore()'>隐藏</a> "+"</td>");
                     	var $td_keyword_temp2 = $("<td class='nr'>"+shortstring(content[i].keyword)+"</td>");
                     	
                     	$tr_keyword.append($th_keyword_temp);
                     	$tr_keyword.append($td_keyword_temp);
                     	$tr_keyword.append($td_keyword_temp2);
                     	$table_temp.append($tr_keyword);
                     	
                     	var $tr_note = $('<tr></tr>');
                     	var $th_note_temp = $("<th>备注</th>");
                     	var $td_note_temp = $("<td class='nrmore' style='display:none'>"+content[i].note+"<a href='javascript:void(0)' onclick='hidemore()'>隐藏</a> "+"</td>");
                     	var $td_note_temp2 = $("<td class='nr'>"+shortstring(content[i].note)+"</td>");
                     	
                     	$tr_note.append($th_note_temp);
                     	$tr_note.append($td_note_temp);
                     	$tr_note.append($td_note_temp2);
                     	$table_temp.append($tr_note);
                     	
                     	///////////////////////////////////////
                     	var $tr_id = $('<tr class="hidden"></tr>');
                     	var $th_id_temp = $("<th>id</th>");
                     	var $td_id_temp = $("<td class='delButton'>"+content[i].id+"</td>");
                     	
                     	$tr_id.append($th_id_temp);
                     	$tr_id.append($td_id_temp);
                     	$table_temp.append($tr_id);
                     	
                     	//////////////////删除按钮///////////////////
                     	
                     	if(((usertype=="admin")&&(content[i].companyName==companyName)&&(content[i].gonghao==zh))||((usertype=="superadmin")&&(content[i].companyName==companyName)))
                 		{
                     		var $tr_del = $('<tr></tr>');
                         	//注意：这里的delButton仅作为过滤选择器的过滤条件，不可以用该值来操作该按钮,这里按钮的大小有待调整
                         	var $td_del_temp = $("<td colspan='2' class='delButton'>" +
                         			"<a " +
                         			" class='btn btn-warning editModalButtonJs col-xs-5 col-sm-5 col-md-5 col-lg-5' " +
                         			"href='../../FindFaguiByIdServlet?id="+content[i].id+"'>" +
                         				"<span class='glyphicon glyphicon-edit'></span>&nbsp;&nbsp;修改本条数据" +
                         			"</a>"+
                         			"<a data-toggle='modal' data-target='#confirmModalxxf"+i+"'" +
                         			" class='btn btn-danger delModalButtonJs col-xs-5 col-xs-offset-2 col-sm-5 col-sm-offset-2 col-md-5 col-md-offset-2 col-lg-5 col-lg-offset-2' rel='../../DeleteFaguiServlet?id="+content[i].id+"'>" +
                         				"<span class='glyphicon glyphicon-trash'></span>&nbsp;&nbsp;删除本条数据" +
                         			"</a></td>");
                         	
                         	$tr_del.append($td_del_temp);
                         	$table_temp.append($tr_del);
                 		}
                     	
                     	////////////////////////////////////
                     	
                     	$(".allFaGui_table_body").append($table_temp);
                     	
                     	////////////////////////////////
                     	//////////////////动态生成模态框开始////////////////////////
                     	var $modal = $("<div id='confirmModalxxf"+i+"' data-backdrop='static' class='modal fade' id='delModal' tabindex='-1' role='dialog' aria-labelledby='delModalLabel' aria-hidden='true'></div>");
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
                     	$(".tble"+i).append($modal);
                     	//////////////////动态生成模态框结束////////////////////////
                	/*}
                	else{
                		
                	}*/
                	////////////权限问题结束//////////////
                	
                }
                /////////////////////////
                
                /////////////////////////删除还有问题？
                // 绑定弹窗
                $('.delModalButtonJs').click(function(){
                	 var nowPanelBody = $(this).parents("table");
	           		 var nowModal = nowPanelBody.children("div").eq(0);
	           		 var nowContentModal = nowModal.children("div").eq(0).children("div").eq(0);
	           		 var nowModalFooterModal = nowContentModal.children("div").eq(2);
          	     	 var confirmAnniu = nowModalFooterModal.children("button").eq(0);
          	     	 confirmAnniu.attr('rel', $(this).attr('rel') );
                    //$('#confirmDel').attr('rel', $(this).attr('rel') );
          	     	 confirmAnniu.click(function () {
                             /*window.location.href=$(this).attr('rel');
                             alert("删除成功！！！");*/
                           $.ajax({
                             url: $(this).attr('rel'),
                             type: "post",
                             dataType : "json",
                             success: function( json ) {
                             	if(json.isDeleteFaguiSuccess)
                         		{
                             		alert("删除法规成功！！！");
                             		$('.modal-backdrop').remove();
                             		loadAllFagui(0,3,true,gjc_sousuo,sz_sousuo,fgwh_sousuo,zh,companyName,usertype);
                             		//下面这两句话用于实现删除表格的隐藏
                             		/*var idValue = idStr.split("=")[1];
                             		$("td:contains("+idValue+")").parents("table").hide();*/
                         		}
                             	else{
                             		alert("删除法规失败！！！");
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
                
                /////////////////////////
                
                if(init){
                    var options = {
                    currentPage: 1,
                    totalPages: getPageNumber(json.sum,3),
                    bootstrapMajorVersion:3,
                    onPageClicked: function(e,originalEvent,type,page){
                    	loadAllFagui(3*(page-1),3,false,gjc_sousuo,sz_sousuo,fgwh_sousuo,zh,companyName,usertype);
                    }
                };
                    makePigination(options);
                }
                
                /////////////////////////////////////绑定更新事件
                //$("td:not(.delButton)").click(tdClick);//选取所有的除了class为delButton的单元格
                /////////////////////////
            },
            error: function( xhr, status ) {
            	alert("error");
            },
            complete: function( xhr, status ) {

            }
        });
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


/*增加法规*/
function addFagui(fgwh,fgtw,sydq,sz,gjc,bz,zh,fgqwFileName,companyName,usertype)
{
    $.ajax({
            url: "../../AddFaguiServlet",
        data: {
        	fgwh:fgwh,
        	fgtw:fgtw,
        	sydq:sydq,
        	sz:sz,
        	gjc:gjc,
        	bz:bz,
        	zh:zh,
        	fgqwFileName:fgqwFileName,
        	companyName:companyName,
        	usertype:usertype
        },
        type: "post",
        dataType : "json",
        success: function( json ) {
        	if(json.isAddFaguiSuccess)
    		{
        		alert("添加法规成功！！！");
    		}
        	else{
        		alert("添加法规失败！！！");
        	}
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
	    //input.height(td.height());
	    input.height(40);
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
	    	  	var wh = td.parents("tbody").children("tr").eq(1).children("td").eq(0).text();//注意：children只能获取旗下的所有子元素，而不能获取后代元素
		        var tw = td.parents("tbody").children("tr").eq(2).children("td").eq(0).text();
		        var qw = td.parents("tbody").children("tr").eq(3).children("td").eq(0).text();
		        var sydq = td.parents("tbody").children("tr").eq(4).children("td").eq(0).text();
		        var sz = td.parents("tbody").children("tr").eq(5).children("td").eq(0).text();
		        var gjc = td.parents("tbody").children("tr").eq(6).children("td").eq(0).text();
		        var bz = td.parents("tbody").children("tr").eq(7).children("td").eq(0).text();
		        var id = td.parents("tbody").children("tr").eq(8).children("td").eq(0).text();
		        //alert(isGet);
		        $.ajax({
		            url: "../../UpdateFaguiServlet",
		            data: {
		            	wh: wh,
		            	tw: tw,
		            	qw: qw,
		            	sydq: sydq,
		            	sz: sz,
		            	gjc: gjc,
		            	bz: bz,
		            	id: id
		            },
		            type: "post",
		            dataType : "text",
		            success: function() {
		            	alert("更新成功!!!");
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

function shortstring(s){
	if(s.length>70){
		s=s.substr(0,70)+"<a href='javascript:void(0)' onclick='showmore()'> 显示更多</a> ";
	}
	return s;
}
function showmore(){
	$(".nrmore").show();
	$(".nr").hide();
}
function hidemore(){
	$(".nrmore").hide();
	$(".nr").show();
}
//+"<a href='javascript:void(0)' onclick='hidemore()'>隐藏</a> "

//////////////////////////////////////////