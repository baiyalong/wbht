/**
 * 更新
 */
function eDitTax(id,yiji,erji,bt,chd,tj,al,wq,fx,fg,gslx,sydqname,gjc,sz,bz)
{
    $.ajax({
        url: "EditTaxServlet",
        data: {
        	id:id,
        	yiji:yiji,
        	erji:erji,
        	bt:bt,
        	chd:chd,
        	tj:tj,
        	al:al,
        	wq:wq,
        	fx:fx,
        	fg:fg,
        	gslx:gslx,
        	sydqname:sydqname,
        	gjc:gjc,
        	sz:sz,
        	bz:bz
        },
        type: "post",
        dataType : "json",
        success: function( json ) {
        	if(json.isEditTaxSuccess)
    		{
        		alert("更新成功！！！");
        		window.location.href="pages/taxType/taxType.jsp";
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

function loadTaxType (start, limit, init, sz, sydq, gjc, companyType, biao,zh,companyName,usertype,servletpath) {

	$(".allTaxType_table_body").empty();
    $(".allTaxType_table_body").html("<p style='text-align: center;width:100%;'><img src='../../imgs/load.jpg'/></p>");

    $.ajax({
            url: "../../ListTaxTypeServlet",
            data: {
            	start: start,
                limit: limit,
                sz: sz,
                sydq: sydq,
                gjc: gjc,
                companyType: companyType,
                biao: biao,
            	companyName:companyName,
            	usertype:usertype
            },
            type: "post",
            dataType : "json",
            success: function( json ) {

              $(".allTaxType_table_body").empty();
              var number = json.list.length;
              var content = json.list;

                for (var i = 0; i < number; i++) {


                ///////////////////////////////
             	var $table_temp = $("<table style='width:100%;hight:auto;' class='table table-bordered table-hover table-striped taxTypeTable tble"+i+"'></table>");
             	var $tr_num = $("<tr></tr>");
             	var $th_num_temp = $("<th>序号</th>");
             	var $td_num_temp = $("<td>"+(i+1)+"</td>");

             	$tr_num.append($th_num_temp);
             	$tr_num.append($td_num_temp);
             	$table_temp.append($tr_num);

             	var $tr_f1 = $("<tr></tr>");
             	var $th_f1 = $("<th>一级节点</th>");
             	var $td_f1 = $("<td>"+content[i].firstnode+"</td>");

             	$tr_f1.append($th_f1);
             	$tr_f1.append($td_f1);
             	$table_temp.append($tr_f1);

             	var $tr_f2 = $("<tr></tr>");
             	var $th_f2 = $("<th>二级节点</th>");
             	var $td_f2 = $("<td>"+content[i].secondnode+"</td>");

             	$tr_f2.append($th_f2);
             	$tr_f2.append($td_f2);
             	$table_temp.append($tr_f2);

             	var $tr_fgnumber = $("<tr></tr>");
             	var $th_fgnumber_temp = $("<th>标题</th>");
             	var $td_fgnumber_temp = $("<td>"+content[i].title+"</td>");

             	$tr_fgnumber.append($th_fgnumber_temp);
             	$tr_fgnumber.append($td_fgnumber_temp);
             	$table_temp.append($tr_fgnumber);

             	var $tr_fc = $("<tr></tr>");
             	var $th_fc = $("<th>筹划点</th>");
             	var $td_fc = $("<td>"+content[i].planpoint+"</td>");

             	$tr_fc.append($th_fc);
             	$tr_fc.append($td_fc);
             	$table_temp.append($tr_fc);

             	///////////////
             	var $tr_ft = $("<tr></tr>");
             	var $th_ft = $("<th>条件</th>");
             	var $td_ft = $("<td>"+content[i].condition+"</td>");

             	$tr_ft.append($th_ft);
             	$tr_ft.append($td_ft);
              if(content[i].condition)
             	$table_temp.append($tr_ft);
             	////////////////


             	var $td_fa = $("<td></td>");
             	var $al = content[i].casetitle.split(';');
             	for(var j=0;j<$al.length;j++)
             	{
             		var  $tdi_fa = $("<a style='cursor:pointer' class='viewAL' data-toggle='modal' href='#viewAnliModal'>"+$al[j]+"</a></br>");
             		$td_fa.append($tdi_fa);
             	}

             	var $tr_fa = $("<tr></tr>");
             	var $th_fa = $("<th>案例</th>");


             	$tr_fa.append($th_fa);
             	$tr_fa.append($td_fa);
              if(content[i].casetitle)
             	$table_temp.append($tr_fa);

             	///////////////
             	if(content[i].misunderstanding!=""&&content[i].misunderstanding!=null)
             	{
	             	var $tr_fW = $("<tr></tr>");
	             	var $th_fW = $("<th>误区</th>");
	             	var $td_fW = $("<td>"+content[i].misunderstanding+"</td>");

	             	$tr_fW.append($th_fW);
	             	$tr_fW.append($td_fW);
	             	$table_temp.append($tr_fW);
             	}
             	////////////////

             	///////////////
             	if(content[i].scheme!=""&&content[i].scheme!=null)
             	{
	             	var $tr_ff = $("<tr></tr>");
	             	var $th_ff = $("<th>风险应对方案</th>");
	             	var $td_ff = $("<td>"+content[i].scheme+"</td>");

	             	$tr_ff.append($th_ff);
	             	$tr_ff.append($td_ff);
	             	$table_temp.append($tr_ff);
             	}
             	////////////////

             	///////////////
             	/*var $td_ftw = $("<td></td>");
             	var $tw = content[i].ruletw.split(';');
             	for(var j=0;j<$tw.length;j++)
             	{
             		var  $tdi_ftw = $("<a style='cursor:pointer' class='viewAL' data-toggle='modal' href='#viewAnliModal'>"+$tw[j]+"</a></br>");
             		$td_ftw.append($tdi_ftw);
             	}


             	var $tr_ftw = $("<tr></tr>");
             	var $th_ftw = $("<th>法规条文</th>");

             	$tr_ftw.append($th_ftw);
             	$tr_ftw.append($td_ftw);
             	$table_temp.append($tr_ftw);*/
             	var $tr_ftw = $('<tr></tr>');
             	var $th_ftw = $("<th>法规</th>");
             	var $td_ftw = $('<td></td>');

             	var $tw = content[i].ruletw.split(';');
             	for(var j=0;j<$tw.length-1;j++)
             	{

             		if($(document).width()<=991)//手机、平板
            		{
             			var  $tdi_ftw = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$tw[j].substring(0,$tw[j].lastIndexOf("."))+"</a>" +
             					"</br>");
             			$td_ftw.append($tdi_ftw);
            		}
             		else//电脑
             		{
             			var  $tdi_ftw = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$tw[j].substring(0,$tw[j].lastIndexOf("."))+"</a>" +
             					"&nbsp;&nbsp;&nbsp;&nbsp;" +
             					"<a href='../../DownloadFileServlet?filename="+servletpath+$tw[j]+"'>查看全文</a>" +
             					"</br>");
             			$td_ftw.append($tdi_ftw);
            		}
             	}

             	$tr_ftw.append($th_ftw);
             	$tr_ftw.append($td_ftw);
              if(content[i].ruletw)
             	$table_temp.append($tr_ftw);
             	////////////////

             	///////////////
             	var $tr_fgs = $("<tr></tr>");
             	var $th_fgs = $("<th>公司类型</th>");
             	var $td_fgs = $("<td>"+content[i].companytype+"</td>");

             	$tr_fgs.append($th_fgs);
             	$tr_fgs.append($td_fgs);
              if(content[i].companytype)
             	$table_temp.append($tr_fgs);
             	////////////////

             	var $tr_area = $("<tr></tr>");
             	var $th_area_temp = $("<th>适用地区</th>");
             	var $td_area_temp = $("<td>"+content[i].area+"</td>");

             	$tr_area.append($th_area_temp);
             	$tr_area.append($td_area_temp);
              if (content[i].area)
             	$table_temp.append($tr_area);


             	var $tr_keyword = $("<tr></tr>");
             	var $th_keyword_temp = $("<th>关键词</th>");
             	var $td_keyword_temp = $("<td>"+content[i].keyword+"</td>");

             	$tr_keyword.append($th_keyword_temp);
             	$tr_keyword.append($td_keyword_temp);
              if(content[i].keyword)
             	$table_temp.append($tr_keyword);


             	var $tr_taxtype = $("<tr></tr>");
             	var $th_taxtype_temp = $("<th>税种</th>");
             	var $td_taxtype_temp = $("<td>"+content[i].taxtype+"</td>");

             	$tr_taxtype.append($th_taxtype_temp);
             	$tr_taxtype.append($td_taxtype_temp);
              if(content[i].taxtype)
             	$table_temp.append($tr_taxtype);

             	if(content[i].note!=""&&content[i].note!=null)
             	{
	             	var $tr_note = $("<tr></tr>");
	             	var $th_note_temp = $("<th>备注</th>");
	             	var $td_note_temp = $("<td>"+content[i].note+"</td>");

	             	$tr_note.append($th_note_temp);
	             	$tr_note.append($td_note_temp);
	             	$table_temp.append($tr_note);
             	}
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
	             	var $tr_del = $("<tr></tr>");
	             	//注意：这里的delButton仅作为过滤选择器的过滤条件，不可以用该值来操作该按钮,这里按钮的大小有待调整
	             	var $td_del_temp = $("<td colspan='2' class='delButton'>" +
	             			"<a " +
	             			" class='btn btn-warning editModalButtonJs col-xs-5 col-sm-5 col-md-5 col-lg-5' " +
	             			"href='../../FindTaxByIdServlet?id="+content[i].id+"'>" +
	             				"<span class='glyphicon glyphicon-edit'></span>&nbsp;&nbsp;修改本条数据" +
	             			"</a>"+
	             			"<a data-toggle='modal' data-target='#confirmModalxxsz"+i+"'" +
	             			" class='btn btn-danger delModalButtonJs col-xs-5 col-xs-offset-2 col-sm-5 col-sm-offset-2 col-md-5 col-md-offset-2 col-lg-5 col-lg-offset-2' rel='../../DeleteTaxServlet?id="+content[i].id+"'>" +
	             				"<span class='glyphicon glyphicon-trash'></span>&nbsp;&nbsp;删除本条数据" +
	             			"</a></td>");

	             	$tr_del.append($td_del_temp);
	             	$table_temp.append($tr_del);
         		}
             	////////////////////////////////////

             	$(".allTaxType_table_body").append($table_temp);

             	////////////////////////////////
             	//////////////////动态生成模态框开始////////////////////////
             	var $modal = $("<div id='confirmModalxxsz"+i+"' data-backdrop='static' class='modal fade' id='delModal' tabindex='-1' role='dialog' aria-labelledby='delModalLabel' aria-hidden='true'></div>");
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


                }
                /////////////////////////
                /////////////////////////
                // 绑定弹窗
                   $('.delModalButtonJs').click(function(){
                	     var nowPanelBody = $(this).parents("table");
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
                                	if(json.isDeleteTaxSuccess)
                            		{
                                		alert("删除成功！！！");
                                		$('.modal-backdrop').remove();
                                		loadTaxType(0,3,true, sz, sydq, gjc, companyType, biao,zh,companyName,usertype,servletpath);
                                		//下面这两句话用于实现删除表格的隐藏
                                		/*var idValue = idStr.split("=")[1];
                                		$("td:contains("+idValue+")").parents("table").hide();*/
                            		}
                                	else{
                                		alert("删除失败！！！");
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
                /////////////////////////
                if(init){
                    var options = {
                    currentPage: 1,
                    totalPages: getPageNumber(json.sum,3),
                    bootstrapMajorVersion:3,
                    onPageClicked: function(e,originalEvent,type,page){
                    	loadTaxType(3*(page-1),3,false, sz, sydq, gjc, companyType, biao,zh,companyName,usertype,servletpath);
                    }
                };
                    makePigination(options);
                }

                /////////////////////////
                //////////绑定查看法规条文的程序开始//////////////
                $(".viewFgtw").click(viewFgtwContent);//选取所有的除了class为delButton的单元格
                /////////////////////////
                //////////绑定查看案例全文的程序开始//////////////
                $(".viewAL").click(viewAlContent);//选取所有的除了class为delButton的单元格
                /////////////////////////
            },
            error: function( xhr, status ) {
            	alert("error");
            },
            complete: function( xhr, status ) {
            	checkstring();
            }
        });
}

////////////////////////////////////
function loadTaxByJilian (start, limit, init, yijicd, erji, table,zh,companyName,usertype,servletpath) {

	$(".allTaxType_table_body").empty();
    $(".allTaxType_table_body").html("<p style='text-align: center;width:100%;'><img src='../../imgs/load.jpg'/></p>");

    $.ajax({
            url: "../../ListTaxTypeByJilianServlet",
            data: {
            	start: start,
                limit: limit,
                yijicd: yijicd,
                erji:erji,
                table: table,
            	companyName:companyName,
            	usertype:usertype
            },
            type: "post",
            dataType : "json",
            success: function( json ) {

              $(".allTaxType_table_body").empty();
              var number = json.list.length;
              var content = json.list;

                for (var i = 0; i < number; i++) {


                ///////////////////////////////
             	var $table_temp = $("<table class='table table-bordered table-hover table-striped taxTypeTable tble"+i+"'></table>");
             	var $tr_num = $("<tr></tr>");
             	var $th_num_temp = $("<th>序号</th>");
             	var $td_num_temp = $("<td>"+(i+1)+"</td>");

             	$tr_num.append($th_num_temp);
             	$tr_num.append($td_num_temp);
             	$table_temp.append($tr_num);

             	var $tr_f1 = $("<tr></tr>");
             	var $th_f1 = $("<th>一级节点</th>");
             	var $td_f1 = $("<td>"+content[i].firstnode+"</td>");

             	$tr_f1.append($th_f1);
             	$tr_f1.append($td_f1);
             	$table_temp.append($tr_f1);

             	var $tr_f2 = $("<tr></tr>");
             	var $th_f2 = $("<th>二级节点</th>");
             	var $td_f2 = $("<td>"+content[i].secondnode+"</td>");

             	$tr_f2.append($th_f2);
             	$tr_f2.append($td_f2);
             	$table_temp.append($tr_f2);

             	var $tr_fgnumber = $("<tr></tr>");
             	var $th_fgnumber_temp = $("<th>标题</th>");
             	var $td_fgnumber_temp = $("<td>"+content[i].title+"</td>");

             	$tr_fgnumber.append($th_fgnumber_temp);
             	$tr_fgnumber.append($td_fgnumber_temp);
             	$table_temp.append($tr_fgnumber);

             	var $tr_fc = $("<tr></tr>");
             	var $th_fc = $("<th>筹划点</th>");
             	var $td_fc = $("<td>"+content[i].planpoint+"</td>");

             	$tr_fc.append($th_fc);
             	$tr_fc.append($td_fc);
             	$table_temp.append($tr_fc);

             	///////////////
             	var $tr_ft = $("<tr></tr>");
             	var $th_ft = $("<th>条件</th>");
             	var $td_ft = $("<td>"+content[i].condition+"</td>");

             	$tr_ft.append($th_ft);
             	$tr_ft.append($td_ft);
              if(content[i].condition)
             	$table_temp.append($tr_ft);
             	////////////////


             	var $td_fa = $("<td></td>");
             	var $al = content[i].casetitle.split(';');
             	for(var j=0;j<$al.length;j++)
             	{
             		var  $tdi_fa = $("<a style='cursor:pointer' class='viewAL' data-toggle='modal' href='#viewAnliModal'>"+$al[j]+"</a></br>");
             		$td_fa.append($tdi_fa);
             	}

             	var $tr_fa = $("<tr></tr>");
             	var $th_fa = $("<th>案例</th>");


             	$tr_fa.append($th_fa);
             	$tr_fa.append($td_fa);
              if(content[i].casetitle)
             	$table_temp.append($tr_fa);

             	///////////////
             	if(content[i].misunderstanding!=""&&content[i].misunderstanding!=null)
             	{
	             	var $tr_fW = $("<tr></tr>");
	             	var $th_fW = $("<th>误区</th>");
	             	var $td_fW = $("<td>"+content[i].misunderstanding+"</td>");

	             	$tr_fW.append($th_fW);
	             	$tr_fW.append($td_fW);
	             	$table_temp.append($tr_fW);
             	}
             	////////////////

             	///////////////
             	if(content[i].scheme!=""&&content[i].scheme!=null)
             	{
	             	var $tr_ff = $("<tr></tr>");
	             	var $th_ff = $("<th>风险应对方案</th>");
	             	var $td_ff = $("<td>"+content[i].scheme+"</td>");

	             	$tr_ff.append($th_ff);
	             	$tr_ff.append($td_ff);
	             	$table_temp.append($tr_ff);
             	}
             	////////////////

             	///////////////
             	/*var $td_ftw = $("<td></td>");
             	var $tw = content[i].ruletw.split(';');
             	for(var j=0;j<$tw.length;j++)
             	{
             		var  $tdi_ftw = $("<a style='cursor:pointer' class='viewAL' data-toggle='modal' href='#viewAnliModal'>"+$tw[j]+"</a></br>");
             		$td_ftw.append($tdi_ftw);
             	}


             	var $tr_ftw = $("<tr></tr>");
             	var $th_ftw = $("<th>法规条文</th>");

             	$tr_ftw.append($th_ftw);
             	$tr_ftw.append($td_ftw);
             	$table_temp.append($tr_ftw);*/
             	var $tr_ftw = $('<tr></tr>');
             	var $th_ftw = $("<th>法规</th>");
             	var $td_ftw = $('<td></td>');

             	var $tw = content[i].ruletw.split(';');
             	for(var j=0;j<$tw.length-1;j++)
             	{
             		if($(document).width()<=991)//手机、平板
            		{
             			var  $tdi_ftw = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$tw[j].substring(0,$tw[j].lastIndexOf("."))+"</a>" +
             					"</br>");
             			$td_ftw.append($tdi_ftw);
            		}
             		else//电脑
             		{
             			var  $tdi_ftw = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$tw[j].substring(0,$tw[j].lastIndexOf("."))+"</a>" +
             					"&nbsp;&nbsp;&nbsp;&nbsp;" +
             					"<a href='../../DownloadFileServlet?filename="+servletpath+$tw[j]+"'>查看全文</a>" +
             					"</br>");
             			$td_ftw.append($tdi_ftw);
            		}
             	}

             	$tr_ftw.append($th_ftw);
             	$tr_ftw.append($td_ftw);
              if(content[i].ruletw)
             	$table_temp.append($tr_ftw);
             	////////////////

             	///////////////
             	var $tr_fgs = $("<tr></tr>");
             	var $th_fgs = $("<th>公司类型</th>");
             	var $td_fgs = $("<td>"+content[i].companytype+"</td>");

             	$tr_fgs.append($th_fgs);
             	$tr_fgs.append($td_fgs);
              if(content[i].companytype)
             	$table_temp.append($tr_fgs);
             	////////////////

             	var $tr_area = $("<tr></tr>");
             	var $th_area_temp = $("<th>适用地区</th>");
             	var $td_area_temp = $("<td>"+content[i].area+"</td>");

             	$tr_area.append($th_area_temp);
             	$tr_area.append($td_area_temp);
              if(content[i].area)
             	$table_temp.append($tr_area);


             	var $tr_keyword = $("<tr></tr>");
             	var $th_keyword_temp = $("<th>关键词</th>");
             	var $td_keyword_temp = $("<td>"+content[i].keyword+"</td>");

             	$tr_keyword.append($th_keyword_temp);
             	$tr_keyword.append($td_keyword_temp);
              if(content[i].keyword)
             	$table_temp.append($tr_keyword);


             	var $tr_taxtype = $("<tr></tr>");
             	var $th_taxtype_temp = $("<th>税种</th>");
             	var $td_taxtype_temp = $("<td>"+content[i].taxtype+"</td>");

             	$tr_taxtype.append($th_taxtype_temp);
             	$tr_taxtype.append($td_taxtype_temp);
              if(content[i].taxtype)
             	$table_temp.append($tr_taxtype);

             	if(content[i].note!=""&&content[i].note!=null)
             	{
	             	var $tr_note = $("<tr></tr>");
	             	var $th_note_temp = $("<th>备注</th>");
	             	var $td_note_temp = $("<td>"+content[i].note+"</td>");

	             	$tr_note.append($th_note_temp);
	             	$tr_note.append($td_note_temp);
	             	$table_temp.append($tr_note);
             	}
             	///////////////////////////////////////
             	var $tr_id = $('<tr class="hidden"></tr>');
             	var $th_id_temp = $("<th>id</th>");
             	var $td_id_temp = $("<td class='delButton'>"+content[i].id+"</td>");

             	$tr_id.append($th_id_temp);
             	$tr_id.append($td_id_temp);
             	$table_temp.append($tr_id);

             	//////////////////删除按钮///////////////////
             	//普通管理员能看到自己公司自己工号下的地税，超级管理员能看到自己公司的地税
             	if(((usertype=="admin")&&(content[i].companyName==companyName)&&(content[i].gonghao==zh))||((usertype=="superadmin")&&(content[i].companyName==companyName)))
         		{
	             	var $tr_del = $("<tr></tr>");
	             	//注意：这里的delButton仅作为过滤选择器的过滤条件，不可以用该值来操作该按钮,这里按钮的大小有待调整
	             	var $td_del_temp = $("<td colspan='2' class='delButton'>" +
	             			"<a " +
	             			" class='btn btn-warning editModalButtonJs col-xs-5 col-sm-5 col-md-5 col-lg-5' " +
	             			"href='../../FindTaxByIdServlet?id="+content[i].id+"'>" +
	             				"<span class='glyphicon glyphicon-edit'></span>&nbsp;&nbsp;修改本条合同控税数据" +
	             			"</a>"+
	             			"<a data-toggle='modal' data-target='#confirmModalxxszjl"+i+"'" +
	             			" class='btn btn-danger delModalButtonJs col-xs-5 col-xs-offset-2 col-sm-5 col-sm-offset-2 col-md-5 col-md-offset-2 col-lg-5 col-lg-offset-2' rel='../../DeleteTaxServlet?id="+content[i].id+"'>" +
	             				"<span class='glyphicon glyphicon-trash'></span>&nbsp;&nbsp;删除本条合同控税数据" +
	             			"</a></td>");

	             	$tr_del.append($td_del_temp);
	             	$table_temp.append($tr_del);
         		}
             	////////////////////////////////////


             	$(".allTaxType_table_body").append($table_temp);

             	////////////////////////////////
             	//////////////////动态生成模态框开始////////////////////////
             	var $modal = $("<div id='confirmModalxxszjl"+i+"' data-backdrop='static' class='modal fade' id='delModal' tabindex='-1' role='dialog' aria-labelledby='delModalLabel' aria-hidden='true'></div>");
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


                }

                /////////////////////////
                // 绑定弹窗
                   $('.delModalButtonJs').click(function(){
                	     var nowPanelBody = $(this).parents("table");
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
                                	if(json.isDeleteTaxSuccess)
                            		{
                                		alert("删除成功！！！");
                                		$('.modal-backdrop').remove();
                                		loadTaxByJilian(0,3,true, yijicd, erji, table,zh,companyName,usertype,servletpath);
                                		//下面这两句话用于实现删除表格的隐藏
                                		/*var idValue = idStr.split("=")[1];
                                		$("td:contains("+idValue+")").parents("table").hide();*/
                            		}
                                	else{
                                		alert("删除失败！！！");
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
                /////////////////////////

                if(init){
                    var options = {
                    currentPage: 1,
                    totalPages: getPageNumber(json.sum,3),
                    bootstrapMajorVersion:3,
                    onPageClicked: function(e,originalEvent,type,page){
                    	loadTaxByJilian(3*(page-1),3,false, yijicd, erji, table,zh,companyName,usertype,servletpath);
                    }
                };
                    makePigination(options);
                }

                /////////////////////////
                //////////绑定查看法规条文的程序开始//////////////
                $(".viewFgtw").click(viewFgtwContent);//选取所有的除了class为delButton的单元格
                /////////////////////////
                //////////绑定查看案例全文的程序开始//////////////
                $(".viewAL").click(viewAlContent);//选取所有的除了class为delButton的单元格
                /////////////////////////
            },
            error: function( xhr, status ) {
            	alert("error");
            },
            complete: function( xhr, status ) {
            	checkstring();
            }
        });
}
///////////////////////////////////////////////////

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



/*增加税种*/
function addTaxType(yiji,erji,bt,chd,tj,al,wq,fx,fg,gslx,sydqname,gjc,sz,bz,zh,companyName,usertype)
{
    $.ajax({
            url: "../../AddTaxTypeServlet",
        data: {
        	yiji:yiji,
        	erji:erji,
        	bt:bt,
        	chd:chd,
        	tj:tj,
        	al:al,
        	wq:wq,
        	fx:fx,
        	fg:fg,
        	gslx:gslx,
        	sydqname:sydqname,
        	gjc:gjc,
        	sz:sz,
        	bz:bz,
        	zh:zh,
        	companyName:companyName,
        	usertype:usertype
        },
        type: "post",
        dataType : "json",
        success: function( json ) {
        	if(json.isAddTaxTypeSuccess)
    		{
        		alert("添加税种数据成功！！！");
        		window.location.href="taxType.jsp";
    		}
        	else{
        		alert("添加税种数据失败！！！");
        	}
        },
        error: function( xhr, status ) {
        	alert("error");
        },
        complete: function( xhr, status ) {

        }
    });
}

//查看法规条文开始
function viewFgtwContent(){
	$("#viewFgtwModalBody").empty();
    $("#viewFgtwModalBody").html("<p style='text-align: center;width:100%;'><img src='../../imgs/load.jpg'/></p>");

    var firstAvalue = $(this).text();//当前节点的上一个兄弟节点
    //alert("firstAvalue-->"+firstAvalue);
    $.ajax({
            url: "../../ViewFgtwContentServlet",
            data: {
            	firstAvalue: firstAvalue
            },
            type: "post",
            dataType : "json",
            success: function( json ) {

              $("#viewFgtwModalBody").empty();

                if(json.fgtw!="")
                	$("#viewFgtwModalBody").html("<p>"+json.fgtw+"</p>");
                else
                	$("#viewFgtwModalBody").html("<p>暂无内容！！！</p>");
            },
            error: function( xhr, status ) {
            	alert("error");
            },
            complete: function( xhr, status ) {

            }
        });
}
//查看法规条文结束


//查看全文
function viewAlContent(){
	$("#viewHtModalBody").empty();
    $("#viewHtModalBody").html("<p style='text-align: center;width:100%;'><img src='../../imgs/load.jpg'/></p>");

    var anTitle = $(this).text();

    $.ajax({
            url: "../../ViewAnliContentServlet",
            data: {
            	anTitle: anTitle
            },
            type: "post",
            dataType : "json",
            success: function( json ) {

              $("#viewHtModalBody").empty();

                if(json.casecontent!="")
                	$("#viewHtModalBody").html("<p>"+json.casecontent+"</p>");
                else
                	$("#viewHtModalBody").html("<p>暂无内容！！！</p>");

             	////////////////////////////////

                /////////////////////////////////////绑定更新事件
               // $("td:not(.delButton)").click(tdClick);//选取所有的除了class为delButton的单元格
                ////////////////////////////////////
            },
            error: function( xhr, status ) {
            	alert("error");
            },
            complete: function( xhr, status ) {

            }
        });
}

//显示更多功能
function checkstring(){
	var tdnumber=$('td').size();
	$('td').each(function(){
		if($(this).text().length>9000000000){
			$(this).after("<td class='nrmore' style='display:none'>"+$(this).text()+"<a href='javascript:void(0)' onclick='hidemore()'>隐藏</a> "+"</td>");
			$(this).html($(this).text().substr(0,70)+"<a href='javascript:void(0)' onclick='showmore()'> 显示更多</a>");
			$(this).addClass('nr');
		}
	});
}

function showmore(){
	$(".nrmore").show();
	$(".nr").hide();
}
function hidemore(){
	$(".nrmore").hide();
	$(".nr").show();
}
