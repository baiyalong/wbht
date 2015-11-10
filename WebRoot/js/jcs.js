/**
 * 更新
 */
function eDitJcs(id,yiji,erji,bt,yaodian,gslx,gjc,bz,al,
		  yy_chd1,yy_tj1,yy_chd2,yy_tj2,yy_chd3,yy_tj3,yy_al,yy_wq,yy_fx,yy_fg,
		  qy_chd1,qy_tj1,qy_chd2,qy_tj2,qy_chd3,qy_tj3,qy_al,qy_wq,qy_fx,qy_fg,
		  tdzz_chd1,tdzz_tj1,tdzz_chd2,tdzz_tj2,tdzz_chd3,tdzz_tj3,tdzz_al,tdzz_wq,tdzz_fx,tdzz_fg,
		  zz_chd1,zz_tj1,zz_chd2,zz_tj2,zz_chd3,zz_tj3,zz_al,zz_wq,zz_fx,zz_fg,
		  q_chd1,q_tj1,q_chd2,q_tj2,q_chd3,q_tj3,q_al,q_wq,q_fx,q_fg,
		  grsd_chd1,grsd_tj1,grsd_chd2,grsd_tj2,grsd_chd3,grsd_tj3,grsd_al,grsd_wq,grsd_fx,grsd_fg,
		  fc_chd1,fc_tj1,fc_chd2,fc_tj2,fc_chd3,fc_tj3,fc_al,fc_wq,fc_fx,fc_fg,
		  tdsy_chd1,tdsy_tj1,tdsy_chd2,tdsy_tj2,tdsy_chd3,tdsy_tj3,tdsy_al,tdsy_wq,tdsy_fx,tdsy_fg,
		  yh_chd1,yh_tj1,yh_chd2,yh_tj2,yh_chd3,yh_tj3,yh_al,yh_wq,yh_fx,yh_fg)
{
    $.ajax({
        url: "EditJcsServlet",
        data: {
        	id:id,
        	yiji:yiji,
        	erji:erji,
        	bt:bt,
        	yaodian:yaodian,
        	gslx:gslx,
        	//sydqname:sydqname,
        	gjc:gjc,
        	bz:bz,
        	al:al,
        	///////////////////
        	yy_chd1:yy_chd1,
        	yy_tj1:yy_tj1,
        	yy_chd2:yy_chd2,
        	yy_tj2:yy_tj2,
        	yy_chd3:yy_chd3,
        	yy_tj3:yy_tj3,
        	yy_al:yy_al,
        	yy_wq:yy_wq,
        	yy_fx:yy_fx,
        	yy_fg:yy_fg,
        	/////////////////////// 
        	qy_chd1:qy_chd1,
        	qy_tj1:qy_tj1,
        	qy_chd2:qy_chd2,
        	qy_tj2:qy_tj2,
        	qy_chd3:qy_chd3,
        	qy_tj3:qy_tj3,
        	qy_al:qy_al,
        	qy_wq:qy_wq,
        	qy_fx:qy_fx,
        	qy_fg:qy_fg,
        	//////////////////////
        	tdzz_chd1:tdzz_chd1,
        	tdzz_tj1:tdzz_tj1,
        	tdzz_chd2:tdzz_chd2,
        	tdzz_tj2:tdzz_tj2,
        	tdzz_chd3:tdzz_chd3,
        	tdzz_tj3:tdzz_tj3,
        	tdzz_al:tdzz_al,
        	tdzz_wq:tdzz_wq,
        	tdzz_fx:tdzz_fx,
        	tdzz_fg:tdzz_fg,
        	///////////////////////
        	zz_chd1:zz_chd1,
        	zz_tj1:zz_tj1,
        	zz_chd2:zz_chd2,
        	zz_tj2:zz_tj2,
        	zz_chd3:zz_chd3,
        	zz_tj3:zz_tj3,
        	zz_al:zz_al,
        	zz_wq:zz_wq,
        	zz_fx:zz_fx,
        	zz_fg:zz_fg,
        	////////////////////
        	q_chd1:q_chd1,
        	q_tj1:q_tj1,
        	q_chd2:q_chd2,
        	q_tj2:q_tj2,
        	q_chd3:q_chd3,
        	q_tj3:q_tj3,
        	q_al:q_al,
        	q_wq:q_wq,
        	q_fx:q_fx,
        	q_fg:q_fg,
        	///////////////////
        	grsd_chd1:grsd_chd1,
        	grsd_tj1:grsd_tj1,
        	grsd_chd2:grsd_chd2,
        	grsd_tj2:grsd_tj2,
        	grsd_chd3:grsd_chd3,
        	grsd_tj3:grsd_tj3,
        	grsd_al:grsd_al,
        	grsd_wq:grsd_wq,
        	grsd_fx:grsd_fx,
        	grsd_fg:grsd_fg,
        	//////////////////////
        	fc_chd1:fc_chd1,
        	fc_tj1:fc_tj1,
        	fc_chd2:fc_chd2,
        	fc_tj2:fc_tj2,
        	fc_chd3:fc_chd3,
        	fc_tj3:fc_tj3,
        	fc_al:fc_al,
        	fc_wq:fc_wq,
        	fc_fx:fc_fx,
        	fc_fg:fc_fg,
        	//////////////////////
        	tdsy_chd1:tdsy_chd1,
        	tdsy_tj1:tdsy_tj1,
        	tdsy_chd2:tdsy_chd2,
        	tdsy_tj2:tdsy_tj2,
        	tdsy_chd3:tdsy_chd3,
        	tdsy_tj3:tdsy_tj3,
        	tdsy_al:tdsy_al,
        	tdsy_wq:tdsy_wq,
        	tdsy_fx:tdsy_fx,
        	tdsy_fg:tdsy_fg,
        	/////////////////////////
    		yh_chd1:yh_chd1,
    		yh_tj1:yh_tj1,
    		yh_chd2:yh_chd2,
    		yh_tj2:yh_tj2,
    		yh_chd3:yh_chd3,
    		yh_tj3:yh_tj3,
    		yh_al:yh_al,
    		yh_wq:yh_wq,
    		yh_fx:yh_fx,
    		yh_fg:yh_fg
        },
        type: "post",
        dataType : "json",
        success: function( json ) {
        	if(json.isEditJcsSuccess)
    		{
        		alert("更新成功！！！");
        		window.location.href="pages/jcs/jcs.jsp";
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
 * 增加合同控税数据
 */
function addJcs(yiji,erji,biaoti,yaodian,gslx,gjc,bz,al,zh,companyName,usertype,
		  yy_chd1,yy_tj1,yy_chd2,yy_tj2,yy_chd3,yy_tj3,yy_al,yy_wq,yy_fx,yy_fg,
		  qy_chd1,qy_tj1,qy_chd2,qy_tj2,qy_chd3,qy_tj3,qy_al,qy_wq,qy_fx,qy_fg,
		  tdzz_chd1,tdzz_tj1,tdzz_chd2,tdzz_tj2,tdzz_chd3,tdzz_tj3,tdzz_al,tdzz_wq,tdzz_fx,tdzz_fg,
		  zz_chd1,zz_tj1,zz_chd2,zz_tj2,zz_chd3,zz_tj3,zz_al,zz_wq,zz_fx,zz_fg,
		  q_chd1,q_tj1,q_chd2,q_tj2,q_chd3,q_tj3,q_al,q_wq,q_fx,q_fg,
		  grsd_chd1,grsd_tj1,grsd_chd2,grsd_tj2,grsd_chd3,grsd_tj3,grsd_al,grsd_wq,grsd_fx,grsd_fg,
		  fc_chd1,fc_tj1,fc_chd2,fc_tj2,fc_chd3,fc_tj3,fc_al,fc_wq,fc_fx,fc_fg,
		  tdsy_chd1,tdsy_tj1,tdsy_chd2,tdsy_tj2,tdsy_chd3,tdsy_tj3,tdsy_al,tdsy_wq,tdsy_fx,tdsy_fg,
		  yh_chd1,yh_tj1,yh_chd2,yh_tj2,yh_chd3,yh_tj3,yh_al,yh_wq,yh_fx,yh_fg)
{
    $.ajax({
            url: "../../AddJcsServlet",
        data: {
        	yiji:yiji,
        	erji:erji,
        	biaoti:biaoti,
        	yaodian:yaodian,
        	gslx:gslx,
        	//sydqname:sydqname,
        	gjc:gjc,
        	bz:bz,
        	al:al,
        	zh:zh,
        	companyName:companyName,
        	usertype:usertype,
        	///////////////////
        	yy_chd1:yy_chd1,
        	yy_tj1:yy_tj1,
        	yy_chd2:yy_chd2,
        	yy_tj2:yy_tj2,
        	yy_chd3:yy_chd3,
        	yy_tj3:yy_tj3,
        	yy_al:yy_al,
        	yy_wq:yy_wq,
        	yy_fx:yy_fx,
        	yy_fg:yy_fg,
        	/////////////////////// 
        	qy_chd1:qy_chd1,
        	qy_tj1:qy_tj1,
        	qy_chd2:qy_chd2,
        	qy_tj2:qy_tj2,
        	qy_chd3:qy_chd3,
        	qy_tj3:qy_tj3,
        	qy_al:qy_al,
        	qy_wq:qy_wq,
        	qy_fx:qy_fx,
        	qy_fg:qy_fg,
        	//////////////////////
        	tdzz_chd1:tdzz_chd1,
        	tdzz_tj1:tdzz_tj1,
        	tdzz_chd2:tdzz_chd2,
        	tdzz_tj2:tdzz_tj2,
        	tdzz_chd3:tdzz_chd3,
        	tdzz_tj3:tdzz_tj3,
        	tdzz_al:tdzz_al,
        	tdzz_wq:tdzz_wq,
        	tdzz_fx:tdzz_fx,
        	tdzz_fg:tdzz_fg,
        	///////////////////////
        	zz_chd1:zz_chd1,
        	zz_tj1:zz_tj1,
        	zz_chd2:zz_chd2,
        	zz_tj2:zz_tj2,
        	zz_chd3:zz_chd3,
        	zz_tj3:zz_tj3,
        	zz_al:zz_al,
        	zz_wq:zz_wq,
        	zz_fx:zz_fx,
        	zz_fg:zz_fg,
        	////////////////////
        	q_chd1:q_chd1,
        	q_tj1:q_tj1,
        	q_chd2:q_chd2,
        	q_tj2:q_tj2,
        	q_chd3:q_chd3,
        	q_tj3:q_tj3,
        	q_al:q_al,
        	q_wq:q_wq,
        	q_fx:q_fx,
        	q_fg:q_fg,
        	///////////////////
        	grsd_chd1:grsd_chd1,
        	grsd_tj1:grsd_tj1,
        	grsd_chd2:grsd_chd2,
        	grsd_tj2:grsd_tj2,
        	grsd_chd3:grsd_chd3,
        	grsd_tj3:grsd_tj3,
        	grsd_al:grsd_al,
        	grsd_wq:grsd_wq,
        	grsd_fx:grsd_fx,
        	grsd_fg:grsd_fg,
        	//////////////////////
        	fc_chd1:fc_chd1,
        	fc_tj1:fc_tj1,
        	fc_chd2:fc_chd2,
        	fc_tj2:fc_tj2,
        	fc_chd3:fc_chd3,
        	fc_tj3:fc_tj3,
        	fc_al:fc_al,
        	fc_wq:fc_wq,
        	fc_fx:fc_fx,
        	fc_fg:fc_fg,
        	//////////////////////
        	tdsy_chd1:tdsy_chd1,
        	tdsy_tj1:tdsy_tj1,
        	tdsy_chd2:tdsy_chd2,
        	tdsy_tj2:tdsy_tj2,
        	tdsy_chd3:tdsy_chd3,
        	tdsy_tj3:tdsy_tj3,
        	tdsy_al:tdsy_al,
        	tdsy_wq:tdsy_wq,
        	tdsy_fx:tdsy_fx,
        	tdsy_fg:tdsy_fg,
        	/////////////////////////
    		yh_chd1:yh_chd1,
    		yh_tj1:yh_tj1,
    		yh_chd2:yh_chd2,
    		yh_tj2:yh_tj2,
    		yh_chd3:yh_chd3,
    		yh_tj3:yh_tj3,
    		yh_al:yh_al,
    		yh_wq:yh_wq,
    		yh_fx:yh_fx,
    		yh_fg:yh_fg
        },
        type: "post",
        dataType : "json",
        success: function( json ) {
        	if(json.isAddJcsSuccess)
    		{
        		alert("添加决策树数据成功！！！");
        		window.location.href="jcs.jsp";
    		}
        	else{
        		alert("添加决策树数据失败！！！");
        	}
        },
        error: function( xhr, status ) {
        	alert("error");
        },
        complete: function( xhr, status ) {

        }
    });
}


function loadJcs(start, limit, init, gjc, biaoti, yaodian, gslx,zh,companyName,usertype,servletpath,alsousuo) {
    
	$(".allJcs_table_body").empty();
    $(".allJcs_table_body").html("<p style='text-align: center;width:100%;'><img src='../../imgs/load.jpg'/></p>");
    
    $.ajax({
            url: "../../ListJcsServlet",
            data: {
            	start: start,
                limit: limit,
                gjc: gjc,
                biaoti: biaoti,
                yaodian: yaodian,
                gslx: gslx,
            	companyName:companyName,
            	usertype:usertype,
            	alsousuo:alsousuo
            },
            type: "post",
            dataType : "json",
            success: function( json ) {
            	
              $(".allJcs_table_body").empty();
              var number = json.list.length;
              var content = json.list;

                for (var i = 0; i < number; i++) {
                	
                	
                ///////////////////////////////
             	var $table_temp = $("<table class='table table-bordered table-hover table-striped htTable tble"+i+"'></table>");
             	var $tr_num = $('<tr></tr>');
             	var $th_num_temp = $("<th>序号</th>");
             	var $td_num_temp = $("<td>"+(i+1)+"</td>");
             	
             	$tr_num.append($th_num_temp);
             	$tr_num.append($td_num_temp);
             	$table_temp.append($tr_num);
             	
             	/*if(content[i].firstnode!=""&&content[i].firstnode!=null)
             	{*/
	             	var $tr_f1 = $('<tr></tr>');
	             	var $th_f1 = $("<th>一级节点</th>");
	             	var $td_f1 = $("<td>"+content[i].firstnode+"</td>");
	             	
	             	$tr_f1.append($th_f1);
	             	$tr_f1.append($td_f1);
	             	$table_temp.append($tr_f1);
             	/*}*/
             	
             	/*if(content[i].secondnode!=""&&content[i].secondnode!=null)
             	{*/
	             	var $tr_f2 = $('<tr></tr>');
	             	var $th_f2 = $("<th>二级节点</th>");
	             	var $td_f2 = $("<td>"+content[i].secondnode+"</td>");
	             	
	             	$tr_f2.append($th_f2);
	             	$tr_f2.append($td_f2);
	             	$table_temp.append($tr_f2);
             	/*}*/
             	///////////////////////////////////
             	if(content[i].title!=""&&content[i].title!=null)
             	{
	             	var $tr_fgnumber = $('<tr></tr>');
	             	var $th_fgnumber_temp = $("<th>标题</th>");
	             	var $td_fgnumber_temp = $("<td>"+content[i].title+"</td>");
	             	
	             	$tr_fgnumber.append($th_fgnumber_temp);
	             	$tr_fgnumber.append($td_fgnumber_temp);
	             	$table_temp.append($tr_fgnumber);
             	}
             	///////////////////
             	
             	///////////////////////////////////
             	if(content[i].yaodian!=""&&content[i].yaodian!=null)
             	{
	             	var $tr_yd = $('<tr></tr>');
	             	var $th_yd_temp = $("<th>要点</th>");
	             	var $td_yd_temp = $("<td>"+content[i].yaodian+"</td>");
	             	
	             	$tr_yd.append($th_yd_temp);
	             	$tr_yd.append($td_yd_temp);
	             	$table_temp.append($tr_yd);
             	}
             	///////////////////
             	
///////////////////////////////////
             	if(content[i].al!=""&&content[i].al!=null)
             	{
	             	/*var $tr_al = $('<tr></tr>');
	             	var $th_al_temp = $("<th>案例</th>");
	             	var $td_al_temp = $("<td><a href='#'>"+content[i].al+"</a></td>");
	             	
	             	$tr_al.append($th_al_temp);
	             	$tr_al.append($td_al_temp);
	             	$table_temp.append($tr_al);*/
             		var $tr_al = $('<tr></tr>');
	             	var $th_al_temp = $("<th>案例</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].al.split(';');
	             	for(var j=0;j<$al.length;j++)
	             	{
	             		var  $tdi_fa = $("<a style='cursor:pointer' class='viewAL' data-toggle='modal' href='#viewAnliModal'>"+$al[j]+"</a></br>");
	             		$td_al_temp.append($tdi_fa);
	             	}
	             	
	             	$tr_al.append($th_al_temp);
	             	$tr_al.append($td_al_temp);
	             	$table_temp.append($tr_al);
             	}
             	///////////////////
             	
            	///////////////
             	if(content[i].gslx!=""&&content[i].gslx!=null)
             	{
	             	var $tr_fgs = $('<tr></tr>');
	             	var $th_fgs = $("<th>公司类型</th>");
	             	var $td_fgs = $("<td>"+content[i].gslx+"</td>");
	             	
	             	$tr_fgs.append($th_fgs);
	             	$tr_fgs.append($td_fgs);
	             	$table_temp.append($tr_fgs);
             	}
             	////////////////
             	if(content[i].keyword!=""&&content[i].keyword!=null)
             	{
	             	var $tr_keyword = $('<tr></tr>');
	             	var $th_keyword_temp = $("<th>关键词</th>");
	             	var $td_keyword_temp = $("<td>"+content[i].keyword+"</td>");
	             	
	             	$tr_keyword.append($th_keyword_temp);
	             	$tr_keyword.append($td_keyword_temp);
	             	$table_temp.append($tr_keyword);
             	}
             	////////////////////////////
             	if(content[i].note!=""&&content[i].note!=null)
             	{
	             	var $tr_note = $('<tr></tr>');
	             	var $th_note_temp = $("<th>备注</th>");
	             	var $td_note_temp = $("<td>"+content[i].note+"</td>");
	             	
	             	$tr_note.append($th_note_temp);
	             	$tr_note.append($td_note_temp);
	             	$table_temp.append($tr_note);
             	}
             	
             	//////////////////////
             	
             	////////////////////////////各种税开始/////////////////////////////////////

             	if(content[i].tdzz_chd1!=""&&content[i].tdzz_chd1!=null||
             			content[i].tdzz_tj1!=""&&content[i].tdzz_tj1!=null||
             			content[i].tdzz_chd2!=""&&content[i].tdzz_chd2!=null||
             			content[i].tdzz_tj2!=""&&content[i].tdzz_tj2!=null||
             			content[i].tdzz_chd3!=""&&content[i].tdzz_chd3!=null||
             			content[i].tdzz_tj3!=""&&content[i].tdzz_tj3!=null||
             			content[i].tdzz_al!=""&&content[i].tdzz_al!=null||
             			content[i].tdzz_wq!=""&&content[i].tdzz_wq!=null||
             			content[i].tdzz_fx!=""&&content[i].tdzz_fx!=null||
             			content[i].tdzz_fg!=""&&content[i].tdzz_fg!=null)
             	{
             	var $s1h = $('<tr></tr>');
             	var $s1d = $('<th colspan="2" class="afterTitle">土地增值税</th>');
             	$s1h.append($s1d);
             	$table_temp.append($s1h);
             	}
             			/////////////////////
             	if(content[i].tdzz_chd1!=""&&content[i].tdzz_chd1!=null)
             	{
             	var $tr_yychd1 = $('<tr></tr>');
             	var $th_yychd1 = $("<th>筹划点1</th>");
             	var $td_yychd1 = $("<td>"+content[i].tdzz_chd1+"</td>");
             	
             	
             	$tr_yychd1.append($th_yychd1);
             	$tr_yychd1.append($td_yychd1);
             	$table_temp.append($tr_yychd1);
             	}
             	////////////////
             	if(content[i].tdzz_tj1!=""&&content[i].tdzz_tj1!=null)
             	{
             	var $tr_yytj1 = $('<tr></tr>');
             	var $th_yytj1 = $("<th>条件1</th>");
             	var $td_yytj1 = $("<td>"+content[i].tdzz_tj1+"</td>");
             	
             	$tr_yytj1.append($th_yytj1);
             	$tr_yytj1.append($td_yytj1);
             	$table_temp.append($tr_yytj1);
             	}
             			//////////////////////
             	if(content[i].tdzz_chd2!=""&&content[i].tdzz_chd2!=null)
             	{
             	var $tr_yychd2 = $('<tr></tr>');
             	var $th_yychd2 = $("<th>筹划点2</th>");
             	var $td_yychd2 = $("<td>"+content[i].tdzz_chd2+"</td>");
             	
             	$tr_yychd2.append($th_yychd2);
             	$tr_yychd2.append($td_yychd2);
             	$table_temp.append($tr_yychd2);
             	}
             		///////////////////////
             	if(content[i].tdzz_tj2!=""&&content[i].tdzz_tj2!=null)
             	{
             	var $tr_yytj2 = $('<tr></tr>');
             	var $th_yytj2 = $("<th>条件2</th>");
             	var $td_yytj2 = $("<td>"+content[i].tdzz_tj2+"</td>");
             	
             	$tr_yytj2.append($th_yytj2);
             	$tr_yytj2.append($td_yytj2);
             	$table_temp.append($tr_yytj2);
             	}
             			///////////////////
             	if(content[i].tdzz_chd3!=""&&content[i].tdzz_chd3!=null)
             	{
             	var $tr_yychd3 = $('<tr></tr>');
             	var $th_yychd3 = $("<th>筹划点3</th>");
             	var $td_yychd3 = $("<td>"+content[i].tdzz_chd3+"</td>");
             	
             	$tr_yychd3.append($th_yychd3);
             	$tr_yychd3.append($td_yychd3);
             	$table_temp.append($tr_yychd3);
             	}
             			///////////////////
             	
             		
             		///////////////////
             	if(content[i].tdzz_tj3!=""&&content[i].tdzz_tj3!=null)
             	{
             	var $tr_yytj3 = $('<tr></tr>');
             	var $th_yytj3 = $("<th>条件3</th>");
             	var $td_yytj3 = $("<td>"+content[i].tdzz_tj3+"</td>");
             	
             	$tr_yytj3.append($th_yytj3);
             	$tr_yytj3.append($td_yytj3);
             	$table_temp.append($tr_yytj3);
             	}
             		/////////////////
             	if(content[i].tdzz_al!=""&&content[i].tdzz_al!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>案例</th>");
	             	var $td_yyal = $("<td>"+content[i].tdzz_al+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_al = $('<tr></tr>');
	             	var $th_al_temp = $("<th>案例</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].tdzz_al.split(';');
	             	for(var j=0;j<$al.length;j++)
	             	{
	             		var  $tdi_fa = $("<a style='cursor:pointer' class='viewAL' data-toggle='modal' href='#viewAnliModal'>"+$al[j]+"</a></br>");
	             		$td_al_temp.append($tdi_fa);
	             	}
	             	
	             	$tr_al.append($th_al_temp);
	             	$tr_al.append($td_al_temp);
	             	$table_temp.append($tr_al);
             	}
             		///////////////////
             	if(content[i].tdzz_wq!=""&&content[i].tdzz_wq!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>误区</th>");
	             	var $td_yyal = $("<td>"+content[i].tdzz_wq+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             		///////////////////
             	if(content[i].tdzz_fx!=""&&content[i].tdzz_fx!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>风险应对方案</th>");
	             	var $td_yyal = $("<td>"+content[i].tdzz_fx+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             		///////////////////
             	if(content[i].tdzz_fg!=""&&content[i].tdzz_fg!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_yyal = $("<td>"+content[i].tdzz_fg+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].tdzz_fg.split(';');
	             	for(var j=0;j<$al.length-1;j++)
	             	{
	             		if($(document).width()<=991)//手机、平板
	            		{
	             			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             		else//电脑
	             		{
	            			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"&nbsp;&nbsp;&nbsp;&nbsp;" +
	            					"<a href='../../DownloadFileServlet?filename="+servletpath+$al[j]+"'>查看全文</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             	}
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_al_temp);
	             	$table_temp.append($tr_yyal);
             	}
             	/////////////////////土地增值税结束/////////3///////////////
             	if(content[i].qy_chd1!=""&&content[i].qy_chd1!=null||
             			content[i].qy_tj1!=""&&content[i].qy_tj1!=null||
             			content[i].qy_chd2!=""&&content[i].qy_chd2!=null||
             			content[i].qy_tj2!=""&&content[i].qy_tj2!=null||
             			content[i].qy_chd3!=""&&content[i].qy_chd3!=null||
             			content[i].qy_tj3!=""&&content[i].qy_tj3!=null||
             			content[i].qy_al!=""&&content[i].qy_al!=null||
             			content[i].qy_wq!=""&&content[i].qy_wq!=null||
             			content[i].qy_fx!=""&&content[i].qy_fx!=null||
             			content[i].qy_fg!=""&&content[i].qy_fg!=null)
             	{
	             	var $s1h = $('<tr></tr>');
	             	var $s1d = $('<th colspan="2" class="afterTitle">企业所得税</th>');
	             	$s1h.append($s1d);
	             	$table_temp.append($s1h);
             	}
             			/////////////////////
             	if(content[i].qy_chd1!=""&&content[i].qy_chd1!=null)
             	{
	             	var $tr_yychd1 = $('<tr></tr>');
	             	var $th_yychd1 = $("<th>筹划点1</th>");
	             	var $td_yychd1 = $("<td>"+content[i].qy_chd1+"</td>");
	             	
	             	$tr_yychd1.append($th_yychd1);
	             	$tr_yychd1.append($td_yychd1);
	             	$table_temp.append($tr_yychd1);
             	}
             	
             	if(content[i].qy_tj1!=""&&content[i].qy_tj1!=null)
             	{
	             	var $tr_yytj1 = $('<tr></tr>');
	             	var $th_yytj1 = $("<th>条件1</th>");
	             	var $td_yytj1 = $("<td>"+content[i].qy_tj1+"</td>");
	             	
	             	$tr_yytj1.append($th_yytj1);
	             	$tr_yytj1.append($td_yytj1);
	             	$table_temp.append($tr_yytj1);
             	}
             			//////////////////////
             	if(content[i].qy_chd2!=""&&content[i].qy_chd2!=null)
             	{
	             	var $tr_yychd2 = $('<tr></tr>');
	             	var $th_yychd2 = $("<th>筹划点2</th>");
	             	var $td_yychd2 = $("<td>"+content[i].qy_chd2+"</td>");
	             	
	             	$tr_yychd2.append($th_yychd2);
	             	$tr_yychd2.append($td_yychd2);
	             	$table_temp.append($tr_yychd2);
             	}
             	
             		///////////////////////
             	if(content[i].qy_tj2!=""&&content[i].qy_tj2!=null)
             	{
	             	var $tr_yytj2 = $('<tr></tr>');
	             	var $th_yytj2 = $("<th>条件2</th>");
	             	var $td_yytj2 = $("<td>"+content[i].qy_tj2+"</td>");
	             	
	             	$tr_yytj2.append($th_yytj2);
	             	$tr_yytj2.append($td_yytj2);
	             	$table_temp.append($tr_yytj2);
             	}
             			///////////////////
             	if(content[i].qy_chd3!=""&&content[i].qy_chd3!=null)
             	{
             		var $tr_yychd3 = $('<tr></tr>');
                 	var $th_yychd3 = $("<th>筹划点3</th>");
                 	var $td_yychd3 = $("<td>"+content[i].qy_chd3+"</td>");
                 	
                 	$tr_yychd3.append($th_yychd3);
                 	$tr_yychd3.append($td_yychd3);
                 	$table_temp.append($tr_yychd3);
             	}
             	
             			///////////////////
             	
             		
             		///////////////////
             	if(content[i].qy_tj3!=""&&content[i].qy_tj3!=null)
             	{
	             	var $tr_yytj3 = $('<tr></tr>');
	             	var $th_yytj3 = $("<th>条件3</th>");
	             	var $td_yytj3 = $("<td>"+content[i].qy_tj3+"</td>");
	             	
	             	$tr_yytj3.append($th_yytj3);
	             	$tr_yytj3.append($td_yytj3);
	             	$table_temp.append($tr_yytj3);
             	}
             		/////////////////
             	if(content[i].qy_al!=""&&content[i].qy_al!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>案例</th>");
	             	var $td_yyal = $("<td>"+content[i].qy_al+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_al = $('<tr></tr>');
	             	var $th_al_temp = $("<th>案例</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].qy_al.split(';');
	             	for(var j=0;j<$al.length;j++)
	             	{
	             		var  $tdi_fa = $("<a style='cursor:pointer' class='viewAL' data-toggle='modal' href='#viewAnliModal'>"+$al[j]+"</a></br>");
	             		$td_al_temp.append($tdi_fa);
	             	}
	             	
	             	$tr_al.append($th_al_temp);
	             	$tr_al.append($td_al_temp);
	             	$table_temp.append($tr_al);
             	}
             		///////////////////
             	if(content[i].qy_wq!=""&&content[i].qy_wq!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>误区</th>");
	             	var $td_yyal = $("<td>"+content[i].qy_wq+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             	
             		///////////////////
             	if(content[i].qy_fx!=""&&content[i].qy_fx!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>风险应对方案</th>");
	             	var $td_yyal = $("<td>"+content[i].qy_fx+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             		///////////////////
             	if(content[i].qy_fg!=""&&content[i].qy_fg!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_yyal = $("<td>"+content[i].qy_fg+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].qy_fg.split(';');
	             	for(var j=0;j<$al.length-1;j++)
	             	{
	             		if($(document).width()<=991)//手机、平板
	            		{
	             			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             		else//电脑
	             		{
	            			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"&nbsp;&nbsp;&nbsp;&nbsp;" +
	            					"<a href='../../DownloadFileServlet?filename="+servletpath+$al[j]+"'>查看全文</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             	}
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_al_temp);
	             	$table_temp.append($tr_yyal);
             	}
             	////////////////////企业所得税结束/////////////4//////
             	if(content[i].yy_chd1!=""&&content[i].yy_chd1!=null||
             			content[i].yy_tj1!=""&&content[i].yy_tj1!=null||
             			content[i].yy_chd2!=""&&content[i].yy_chd2!=null||
             			content[i].yy_tj2!=""&&content[i].yy_tj2!=null||
             			content[i].yy_chd3!=""&&content[i].yy_chd3!=null||
             			content[i].yy_tj3!=""&&content[i].yy_tj3!=null||
             			content[i].yy_al!=""&&content[i].yy_al!=null||
             			content[i].yy_wq!=""&&content[i].yy_wq!=null||
             			content[i].yy_fx!=""&&content[i].yy_fx!=null||
             			content[i].yy_fg!=""&&content[i].yy_fg!=null)
             	{
	             	var $s1h = $('<tr></tr>');
	             	var $s1d = $('<th colspan="2" class="afterTitle">营业税</th>');
	             	$s1h.append($s1d);
	             	$table_temp.append($s1h);
             	}
             			/////////////////////
             	if(content[i].yy_chd1!=""&&content[i].yy_chd1!=null)
             	{
	             	var $tr_yychd1 = $('<tr></tr>');
	             	var $th_yychd1 = $("<th>筹划点1</th>");
	             	var $td_yychd1 = $("<td>"+content[i].yy_chd1+"</td>");
	             	
	             	$tr_yychd1.append($th_yychd1);
	             	$tr_yychd1.append($td_yychd1);
	             	$table_temp.append($tr_yychd1);
             	}
             	
             	if(content[i].yy_tj1!=""&&content[i].yy_tj1!=null)
             	{
	             	var $tr_yytj1 = $('<tr></tr>');
	             	var $th_yytj1 = $("<th>条件1</th>");
	             	var $td_yytj1 = $("<td>"+content[i].yy_tj1+"</td>");
	             	
	             	$tr_yytj1.append($th_yytj1);
	             	$tr_yytj1.append($td_yytj1);
	             	$table_temp.append($tr_yytj1);
             	}
             			//////////////////////
             	if(content[i].yy_chd2!=""&&content[i].yy_chd2!=null)
             	{
	             	var $tr_yychd2 = $('<tr></tr>');
	             	var $th_yychd2 = $("<th>筹划点2</th>");
	             	var $td_yychd2 = $("<td>"+content[i].yy_chd2+"</td>");
	             	
	             	$tr_yychd2.append($th_yychd2);
	             	$tr_yychd2.append($td_yychd2);
	             	$table_temp.append($tr_yychd2);
             	}
             		///////////////////////
             	if(content[i].yy_tj2!=""&&content[i].yy_tj2!=null)
             	{
	             	var $tr_yytj2 = $('<tr></tr>');
	             	var $th_yytj2 = $("<th>条件2</th>");
	             	var $td_yytj2 = $("<td>"+content[i].yy_tj2+"</td>");
	             	
	             	$tr_yytj2.append($th_yytj2);
	             	$tr_yytj2.append($td_yytj2);
	             	$table_temp.append($tr_yytj2);
             	}
             			///////////////////
             	if(content[i].yy_chd3!=""&&content[i].yy_chd3!=null)
             	{
	             	var $tr_yychd3 = $('<tr></tr>');
	             	var $th_yychd3 = $("<th>筹划点3</th>");
	             	var $td_yychd3 = $("<td>"+content[i].yy_chd3+"</td>");
	             	
	             	$tr_yychd3.append($th_yychd3);
	             	$tr_yychd3.append($td_yychd3);
	             	$table_temp.append($tr_yychd3);
             	}
             			///////////////////
             	
             		
             		///////////////////
             	if(content[i].yy_tj3!=""&&content[i].yy_tj3!=null)
             	{
	             	var $tr_yytj3 = $('<tr></tr>');
	             	var $th_yytj3 = $("<th>条件3</th>");
	             	var $td_yytj3 = $("<td>"+content[i].yy_tj3+"</td>");
	             	
	             	$tr_yytj3.append($th_yytj3);
	             	$tr_yytj3.append($td_yytj3);
	             	$table_temp.append($tr_yytj3);
             	}
             		/////////////////
             	if(content[i].yy_al!=""&&content[i].yy_al!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>案例</th>");
	             	var $td_yyal = $("<td>"+content[i].yy_al+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_al = $('<tr></tr>');
	             	var $th_al_temp = $("<th>案例</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].yy_al.split(';');
	             	for(var j=0;j<$al.length;j++)
	             	{
	             		var  $tdi_fa = $("<a style='cursor:pointer' class='viewAL' data-toggle='modal' href='#viewAnliModal'>"+$al[j]+"</a></br>");
	             		$td_al_temp.append($tdi_fa);
	             	}
	             	
	             	$tr_al.append($th_al_temp);
	             	$tr_al.append($td_al_temp);
	             	$table_temp.append($tr_al);
             	}
             		///////////////////
             	if(content[i].yy_wq!=""&&content[i].yy_wq!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>误区</th>");
	             	var $td_yyal = $("<td>"+content[i].yy_wq+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             	
             		///////////////////
             	if(content[i].yy_fx!=""&&content[i].yy_fx!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>风险应对方案</th>");
	             	var $td_yyal = $("<td>"+content[i].yy_fx+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             		///////////////////
             	if(content[i].yy_fg!=""&&content[i].yy_fg!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_yyal = $("<td>"+content[i].yy_fg+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].yy_fg.split(';');
	             	for(var j=0;j<$al.length-1;j++)
	             	{
	             		if($(document).width()<=991)//手机、平板
	            		{
	             			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             		else//电脑
	             		{
	            			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"&nbsp;&nbsp;&nbsp;&nbsp;" +
	            					"<a href='../../DownloadFileServlet?filename="+servletpath+$al[j]+"'>查看全文</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             	}
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_al_temp);
	             	$table_temp.append($tr_yyal);
             	}
             	//////////////////////营业税结束//////////5//////////////////////
             	
             	
             	if(content[i].zz_chd1!=""&&content[i].zz_chd1!=null||
             			content[i].zz_tj1!=""&&content[i].zz_tj1!=null||
             			content[i].zz_chd2!=""&&content[i].zz_chd2!=null||
             			content[i].zz_tj2!=""&&content[i].zz_tj2!=null||
             			content[i].zz_chd3!=""&&content[i].zz_chd3!=null||
             			content[i].zz_tj3!=""&&content[i].zz_tj3!=null||
             			content[i].zz_al!=""&&content[i].zz_al!=null||
             			content[i].zz_wq!=""&&content[i].zz_wq!=null||
             			content[i].zz_fx!=""&&content[i].zz_fx!=null||
             			content[i].zz_fg!=""&&content[i].zz_fg!=null)
             	{
             	var $s1h = $('<tr></tr>');
             	var $s1d = $('<th colspan="2" class="afterTitle">增值税</th>');
             	$s1h.append($s1d);
             	$table_temp.append($s1h);
             	}
             			/////////////////////
             	if(content[i].zz_chd1!=""&&content[i].zz_chd1!=null)
             	{
	             	var $tr_yychd1 = $('<tr></tr>');
	             	var $th_yychd1 = $("<th>筹划点1</th>");
	             	var $td_yychd1 = $("<td>"+content[i].zz_chd1+"</td>");
	             	
	             	$tr_yychd1.append($th_yychd1);
	             	$tr_yychd1.append($td_yychd1);
	             	$table_temp.append($tr_yychd1);
             	}
             	///////////////////
             	
             	if(content[i].zz_tj1!=""&&content[i].zz_tj1!=null)
             	{
	             	var $tr_yytj1 = $('<tr></tr>');
	             	var $th_yytj1 = $("<th>条件1</th>");
	             	var $td_yytj1 = $("<td>"+content[i].zz_tj1+"</td>");
	             	
	             	$tr_yytj1.append($th_yytj1);
	             	$tr_yytj1.append($td_yytj1);
	             	$table_temp.append($tr_yytj1);
             	}
             			//////////////////////
             	if(content[i].zz_chd2!=""&&content[i].zz_chd2!=null)
             	{
	             	var $tr_yychd2 = $('<tr></tr>');
	             	var $th_yychd2 = $("<th>筹划点2</th>");
	             	var $td_yychd2 = $("<td>"+content[i].zz_chd2+"</td>");
	             	
	             	$tr_yychd2.append($th_yychd2);
	             	$tr_yychd2.append($td_yychd2);
	             	$table_temp.append($tr_yychd2);
             	}
             	
             		///////////////////////
             	if(content[i].zz_tj2!=""&&content[i].zz_tj2!=null)
             	{
             	var $tr_yytj2 = $('<tr></tr>');
             	var $th_yytj2 = $("<th>条件2</th>");
             	var $td_yytj2 = $("<td>"+content[i].zz_tj2+"</td>");
             	
             	$tr_yytj2.append($th_yytj2);
             	$tr_yytj2.append($td_yytj2);
             	$table_temp.append($tr_yytj2);
             	}
             			///////////////////
             	if(content[i].zz_chd3!=""&&content[i].zz_chd3!=null)
             	{
	             	var $tr_yychd3 = $('<tr></tr>');
	             	var $th_yychd3 = $("<th>筹划点3</th>");
	             	var $td_yychd3 = $("<td>"+content[i].zz_chd3+"</td>");
	             	
	             	$tr_yychd3.append($th_yychd3);
	             	$tr_yychd3.append($td_yychd3);
	             	$table_temp.append($tr_yychd3);
             	}
             			///////////////////
             	
             		
             		///////////////////
             	if(content[i].zz_tj3!=""&&content[i].zz_tj3!=null)
             	{
	             	var $tr_yytj3 = $('<tr></tr>');
	             	var $th_yytj3 = $("<th>条件3</th>");
	             	var $td_yytj3 = $("<td>"+content[i].zz_tj3+"</td>");
	             	
	             	$tr_yytj3.append($th_yytj3);
	             	$tr_yytj3.append($td_yytj3);
	             	$table_temp.append($tr_yytj3);
             	}
             		/////////////////
             	if(content[i].zz_al!=""&&content[i].zz_al!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>案例</th>");
	             	var $td_yyal = $("<td>"+content[i].zz_al+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_al = $('<tr></tr>');
	             	var $th_al_temp = $("<th>案例</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].zz_al.split(';');
	             	for(var j=0;j<$al.length;j++)
	             	{
	             		var  $tdi_fa = $("<a style='cursor:pointer' class='viewAL' data-toggle='modal' href='#viewAnliModal'>"+$al[j]+"</a></br>");
	             		$td_al_temp.append($tdi_fa);
	             	}
	             	
	             	$tr_al.append($th_al_temp);
	             	$tr_al.append($td_al_temp);
	             	$table_temp.append($tr_al);
             	}
             		///////////////////
             	if(content[i].zz_wq!=""&&content[i].zz_wq!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>误区</th>");
	             	var $td_yyal = $("<td>"+content[i].zz_wq+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             		///////////////////
             	if(content[i].zz_fx!=""&&content[i].zz_fx!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>风险应对方案</th>");
	             	var $td_yyal = $("<td>"+content[i].zz_fx+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             		///////////////////
             	if(content[i].zz_fg!=""&&content[i].zz_fg!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_yyal = $("<td>"+content[i].zz_fg+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].zz_fg.split(';');
	             	for(var j=0;j<$al.length-1;j++)
	             	{
	             		if($(document).width()<=991)//手机、平板
	            		{
	             			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             		else//电脑
	             		{
	            			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"&nbsp;&nbsp;&nbsp;&nbsp;" +
	            					"<a href='../../DownloadFileServlet?filename="+servletpath+$al[j]+"'>查看全文</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             	}
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_al_temp);
	             	$table_temp.append($tr_yyal);
             	}
             	/////////////////////增值税结束//////////////////////////
             	
      //////6//////
             	if(content[i].grsd_chd1!=""&&content[i].grsd_chd1!=null||
             			content[i].grsd_tj1!=""&&content[i].grsd_tj1!=null||
             			content[i].grsd_chd2!=""&&content[i].grsd_chd2!=null||
             			content[i].grsd_tj2!=""&&content[i].grsd_tj2!=null||
             			content[i].grsd_chd3!=""&&content[i].grsd_chd3!=null||
             			content[i].grsd_tj3!=""&&content[i].grsd_tj3!=null||
             			content[i].grsd_al!=""&&content[i].grsd_al!=null||
             			content[i].grsd_wq!=""&&content[i].grsd_wq!=null||
             			content[i].grsd_fx!=""&&content[i].grsd_fx!=null||
             			content[i].grsd_fg!=""&&content[i].grsd_fg!=null)
             	{
	             	var $s1h = $('<tr></tr>');
	             	var $s1d = $('<th colspan="2" class="afterTitle">个人所得税</th>');
	             	$s1h.append($s1d);
	             	$table_temp.append($s1h);
             	}
             			/////////////////////
             	if(content[i].grsd_chd1!=""&&content[i].grsd_chd1!=null)
             	{
	             	var $tr_yychd1 = $('<tr></tr>');
	             	var $th_yychd1 = $("<th>筹划点1</th>");
	             	var $td_yychd1 = $("<td>"+content[i].grsd_chd1+"</td>");
	             	
	             	$tr_yychd1.append($th_yychd1);
	             	$tr_yychd1.append($td_yychd1);
	             	$table_temp.append($tr_yychd1);
             	}
             	//////////////////////////
             	
             	if(content[i].grsd_tj1!=""&&content[i].grsd_tj1!=null)
             	{
	             	var $tr_yytj1 = $('<tr></tr>');
	             	var $th_yytj1 = $("<th>条件1</th>");
	             	var $td_yytj1 = $("<td>"+content[i].grsd_tj1+"</td>");
	             	
	             	$tr_yytj1.append($th_yytj1);
	             	$tr_yytj1.append($td_yytj1);
	             	$table_temp.append($tr_yytj1);
             	}
             			//////////////////////
             	if(content[i].grsd_chd2!=""&&content[i].grsd_chd2!=null)
             	{
	             	var $tr_yychd2 = $('<tr></tr>');
	             	var $th_yychd2 = $("<th>筹划点2</th>");
	             	var $td_yychd2 = $("<td>"+content[i].grsd_chd2+"</td>");
	             	
	             	$tr_yychd2.append($th_yychd2);
	             	$tr_yychd2.append($td_yychd2);
	             	$table_temp.append($tr_yychd2);
             	}
             		///////////////////////
             	if(content[i].grsd_tj2!=""&&content[i].grsd_tj2!=null)
             	{
	             	var $tr_yytj2 = $('<tr></tr>');
	             	var $th_yytj2 = $("<th>条件2</th>");
	             	var $td_yytj2 = $("<td>"+content[i].grsd_tj2+"</td>");
	             	
	             	$tr_yytj2.append($th_yytj2);
	             	$tr_yytj2.append($td_yytj2);
	             	$table_temp.append($tr_yytj2);
             	}
             			///////////////////
             	if(content[i].grsd_chd3!=""&&content[i].grsd_chd3!=null)
             	{
	             	var $tr_yychd3 = $('<tr></tr>');
	             	var $th_yychd3 = $("<th>筹划点3</th>");
	             	var $td_yychd3 = $("<td>"+content[i].grsd_chd3+"</td>");
	             	
	             	$tr_yychd3.append($th_yychd3);
	             	$tr_yychd3.append($td_yychd3);
	             	$table_temp.append($tr_yychd3);
             	}
             			///////////////////
             	
             		
             		///////////////////
             	if(content[i].grsd_tj3!=""&&content[i].grsd_tj3!=null)
             	{
	             	var $tr_yytj3 = $('<tr></tr>');
	             	var $th_yytj3 = $("<th>条件3</th>");
	             	var $td_yytj3 = $("<td>"+content[i].grsd_tj3+"</td>");
	             	
	             	$tr_yytj3.append($th_yytj3);
	             	$tr_yytj3.append($td_yytj3);
	             	$table_temp.append($tr_yytj3);
             	}
             		/////////////////
             	if(content[i].grsd_al!=""&&content[i].grsd_al!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>案例</th>");
	             	var $td_yyal = $("<td>"+content[i].grsd_al+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_al = $('<tr></tr>');
	             	var $th_al_temp = $("<th>案例</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].grsd_al.split(';');
	             	for(var j=0;j<$al.length;j++)
	             	{
	             		var  $tdi_fa = $("<a style='cursor:pointer' class='viewAL' data-toggle='modal' href='#viewAnliModal'>"+$al[j]+"</a></br>");
	             		$td_al_temp.append($tdi_fa);
	             	}
	             	
	             	$tr_al.append($th_al_temp);
	             	$tr_al.append($td_al_temp);
	             	$table_temp.append($tr_al);
             	}
             		///////////////////
             	if(content[i].grsd_wq!=""&&content[i].grsd_wq!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>误区</th>");
	             	var $td_yyal = $("<td>"+content[i].grsd_wq+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             		///////////////////
             	if(content[i].grsd_fx!=""&&content[i].grsd_fx!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>风险应对方案</th>");
	             	var $td_yyal = $("<td>"+content[i].grsd_fx+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             		///////////////////
             	if(content[i].grsd_fg!=""&&content[i].grsd_fg!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_yyal = $("<td>"+content[i].grsd_fg+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].grsd_fg.split(';');
	             	for(var j=0;j<$al.length-1;j++)
	             	{
	             		if($(document).width()<=991)//手机、平板
	            		{
	             			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             		else//电脑
	             		{
	            			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"&nbsp;&nbsp;&nbsp;&nbsp;" +
	            					"<a href='../../DownloadFileServlet?filename="+servletpath+$al[j]+"'>查看全文</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             	}
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_al_temp);
	             	$table_temp.append($tr_yyal);
             	}
             	//////////////////////个人所得税结束///////////////////////
             	
             	/////7///////
             	if(content[i].fc_chd1!=""&&content[i].fc_chd1!=null||
             			content[i].fc_tj1!=""&&content[i].fc_tj1!=null||
             			content[i].fc_chd2!=""&&content[i].fc_chd2!=null||
             			content[i].fc_tj2!=""&&content[i].fc_tj2!=null||
             			content[i].fc_chd3!=""&&content[i].fc_chd3!=null||
             			content[i].fc_tj3!=""&&content[i].fc_tj3!=null||
             			content[i].fc_al!=""&&content[i].fc_al!=null||
             			content[i].fc_wq!=""&&content[i].fc_wq!=null||
             			content[i].fc_fx!=""&&content[i].fc_fx!=null||
             			content[i].fc_fg!=""&&content[i].fc_fg!=null)
             	{
	             	var $s1h = $('<tr></tr>');
	             	var $s1d = $('<th colspan="2" class="afterTitle">房产税</th>');
	             	$s1h.append($s1d);
	             	$table_temp.append($s1h);
             	}
             			/////////////////////
             	if(content[i].fc_chd1!=""&&content[i].fc_chd1!=null)
             	{
	             	var $tr_yychd1 = $('<tr></tr>');
	             	var $th_yychd1 = $("<th>筹划点1</th>");
	             	var $td_yychd1 = $("<td>"+content[i].fc_chd1+"</td>");
	             	
	             	$tr_yychd1.append($th_yychd1);
	             	$tr_yychd1.append($td_yychd1);
	             	$table_temp.append($tr_yychd1);
             	}
             	//////////////
             	if(content[i].fc_tj1!=""&&content[i].fc_tj1!=null)
             	{
	             	var $tr_yytj1 = $('<tr></tr>');
	             	var $th_yytj1 = $("<th>条件1</th>");
	             	var $td_yytj1 = $("<td>"+content[i].fc_tj1+"</td>");
	             	
	             	$tr_yytj1.append($th_yytj1);
	             	$tr_yytj1.append($td_yytj1);
	             	$table_temp.append($tr_yytj1);
             	}
             			//////////////////////
             	if(content[i].fc_chd2!=""&&content[i].fc_chd2!=null)
             	{
	             	var $tr_yychd2 = $('<tr></tr>');
	             	var $th_yychd2 = $("<th>筹划点2</th>");
	             	var $td_yychd2 = $("<td>"+content[i].fc_chd2+"</td>");
	             	
	             	$tr_yychd2.append($th_yychd2);
	             	$tr_yychd2.append($td_yychd2);
	             	$table_temp.append($tr_yychd2);
             	}
             		///////////////////////
             	if(content[i].fc_tj2!=""&&content[i].fc_tj2!=null)
             	{
	             	var $tr_yytj2 = $('<tr></tr>');
	             	var $th_yytj2 = $("<th>条件2</th>");
	             	var $td_yytj2 = $("<td>"+content[i].fc_tj2+"</td>");
	             	
	             	$tr_yytj2.append($th_yytj2);
	             	$tr_yytj2.append($td_yytj2);
	             	$table_temp.append($tr_yytj2);
             	}
             			///////////////////
             	if(content[i].fc_chd3!=""&&content[i].fc_chd3!=null)
             	{
	             	var $tr_yychd3 = $('<tr></tr>');
	             	var $th_yychd3 = $("<th>筹划点3</th>");
	             	var $td_yychd3 = $("<td>"+content[i].fc_chd3+"</td>");
	             	
	             	$tr_yychd3.append($th_yychd3);
	             	$tr_yychd3.append($td_yychd3);
	             	$table_temp.append($tr_yychd3);
             	}
             			///////////////////
             	
             		
             		///////////////////
             	if(content[i].fc_tj3!=""&&content[i].fc_tj3!=null)
             	{
	             	var $tr_yytj3 = $('<tr></tr>');
	             	var $th_yytj3 = $("<th>条件3</th>");
	             	var $td_yytj3 = $("<td>"+content[i].fc_tj3+"</td>");
	             	
	             	$tr_yytj3.append($th_yytj3);
	             	$tr_yytj3.append($td_yytj3);
	             	$table_temp.append($tr_yytj3);
             	}
             		/////////////////
             	if(content[i].fc_al!=""&&content[i].fc_al!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>案例</th>");
	             	var $td_yyal = $("<td>"+content[i].fc_al+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_al = $('<tr></tr>');
	             	var $th_al_temp = $("<th>案例</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].fc_al.split(';');
	             	for(var j=0;j<$al.length;j++)
	             	{
	             		var  $tdi_fa = $("<a style='cursor:pointer' class='viewAL' data-toggle='modal' href='#viewAnliModal'>"+$al[j]+"</a></br>");
	             		$td_al_temp.append($tdi_fa);
	             	}
	             	
	             	$tr_al.append($th_al_temp);
	             	$tr_al.append($td_al_temp);
	             	$table_temp.append($tr_al);
             	}
             		///////////////////
             	if(content[i].fc_wq!=""&&content[i].fc_wq!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>误区</th>");
	             	var $td_yyal = $("<td>"+content[i].fc_wq+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             	
             		///////////////////
             	if(content[i].fc_fx!=""&&content[i].fc_fx!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>风险应对方案</th>");
	             	var $td_yyal = $("<td>"+content[i].fc_fx+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             		///////////////////
             	if(content[i].fc_fg!=""&&content[i].fc_fg!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_yyal = $("<td>"+content[i].fc_fg+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].fc_fg.split(';');
	             	for(var j=0;j<$al.length-1;j++)
	             	{
	             		if($(document).width()<=991)//手机、平板
	            		{
	             			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             		else//电脑
	             		{
	            			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"&nbsp;&nbsp;&nbsp;&nbsp;" +
	            					"<a href='../../DownloadFileServlet?filename="+servletpath+$al[j]+"'>查看全文</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             	}
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_al_temp);
	             	$table_temp.append($tr_yyal);
             	}
             	////////////////////////房产税结束/////////////////////////
             	
///////////1/////////
             	
             	if(content[i].q_chd1!=""&&content[i].q_chd1!=null||
             			content[i].q_tj1!=""&&content[i].q_tj1!=null||
             			content[i].q_chd2!=""&&content[i].q_chd2!=null||
             			content[i].q_tj2!=""&&content[i].q_tj2!=null||
             			content[i].q_chd3!=""&&content[i].q_chd3!=null||
             			content[i].q_tj3!=""&&content[i].q_tj3!=null||
             			content[i].q_al!=""&&content[i].q_al!=null||
             			content[i].q_wq!=""&&content[i].q_wq!=null||
             			content[i].q_fx!=""&&content[i].q_fx!=null||
             			content[i].q_fg!=""&&content[i].q_fg!=null)
             	{
             	var $s1h = $('<tr></tr>');
             	var $s1d = $('<th colspan="2" class="afterTitle">契税</th>');
             	$s1h.append($s1d);
             	$table_temp.append($s1h);
             	}
             			/////////////////////
             	if(content[i].q_chd1!=""&&content[i].q_chd1!=null)
             	{
	             	var $tr_yychd1 = $('<tr></tr>');
	             	var $th_yychd1 = $("<th>筹划点1</th>");
	             	var $td_yychd1 = $("<td>"+content[i].q_chd1+"</td>");
	             	
	             	$tr_yychd1.append($th_yychd1);
	             	$tr_yychd1.append($td_yychd1);
	             	$table_temp.append($tr_yychd1);
             	}
             	/////////////////////////////
             	
             	if(content[i].q_tj1!=""&&content[i].q_tj1!=null)
             	{
	             	var $tr_yytj1 = $('<tr></tr>');
	             	var $th_yytj1 = $("<th>条件1</th>");
	             	var $td_yytj1 = $("<td>"+content[i].q_tj1+"</td>");
	             	
	             	$tr_yytj1.append($th_yytj1);
	             	$tr_yytj1.append($td_yytj1);
	             	$table_temp.append($tr_yytj1);
             	}
             			//////////////////////
             	if(content[i].q_chd2!=""&&content[i].q_chd2!=null)
             	{
	             	var $tr_yychd2 = $('<tr></tr>');
	             	var $th_yychd2 = $("<th>筹划点2</th>");
	             	var $td_yychd2 = $("<td>"+content[i].q_chd2+"</td>");
	             	
	             	$tr_yychd2.append($th_yychd2);
	             	$tr_yychd2.append($td_yychd2);
	             	$table_temp.append($tr_yychd2);
             	}
             		///////////////////////
             	if(content[i].q_tj2!=""&&content[i].q_tj2!=null)
             	{
	             	var $tr_yytj2 = $('<tr></tr>');
	             	var $th_yytj2 = $("<th>条件2</th>");
	             	var $td_yytj2 = $("<td>"+content[i].q_tj2+"</td>");
	             	
	             	$tr_yytj2.append($th_yytj2);
	             	$tr_yytj2.append($td_yytj2);
	             	$table_temp.append($tr_yytj2);
             	}
             			///////////////////
             	if(content[i].q_chd3!=""&&content[i].q_chd3!=null)
             	{
	             	var $tr_yychd3 = $('<tr></tr>');
	             	var $th_yychd3 = $("<th>筹划点3</th>");
	             	var $td_yychd3 = $("<td>"+content[i].q_chd3+"</td>");
	             	
	             	$tr_yychd3.append($th_yychd3);
	             	$tr_yychd3.append($td_yychd3);
	             	$table_temp.append($tr_yychd3);
             	}
             			///////////////////
             	
             		
             		///////////////////
             	if(content[i].q_tj3!=""&&content[i].q_tj3!=null)
             	{
	             	var $tr_yytj3 = $('<tr></tr>');
	             	var $th_yytj3 = $("<th>条件3</th>");
	             	var $td_yytj3 = $("<td>"+content[i].q_tj3+"</td>");
	             	
	             	$tr_yytj3.append($th_yytj3);
	             	$tr_yytj3.append($td_yytj3);
	             	$table_temp.append($tr_yytj3);
             	}
             		/////////////////
             	if(content[i].q_al!=""&&content[i].q_al!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>案例</th>");
	             	var $td_yyal = $("<td>"+content[i].q_al+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_al = $('<tr></tr>');
	             	var $th_al_temp = $("<th>案例</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].q_al.split(';');
	             	for(var j=0;j<$al.length;j++)
	             	{
	             		var  $tdi_fa = $("<a style='cursor:pointer' class='viewAL' data-toggle='modal' href='#viewAnliModal'>"+$al[j]+"</a></br>");
	             		$td_al_temp.append($tdi_fa);
	             	}
	             	
	             	
	             	$tr_al.append($th_al_temp);
	             	$tr_al.append($td_al_temp);
	             	$table_temp.append($tr_al);
             	}
             		///////////////////
             	if(content[i].q_wq!=""&&content[i].q_wq!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>误区</th>");
	             	var $td_yyal = $("<td>"+content[i].q_wq+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             		///////////////////
             	if(content[i].q_fx!=""&&content[i].q_fx!=null)
             	{
             	var $tr_yyal = $('<tr></tr>');
             	var $th_yyal = $("<th>风险应对方案</th>");
             	var $td_yyal = $("<td>"+content[i].q_fx+"</td>");
             	
             	$tr_yyal.append($th_yyal);
             	$tr_yyal.append($td_yyal);
             	$table_temp.append($tr_yyal);
             	}
             		///////////////////
             	if(content[i].q_fg!=""&&content[i].q_fg!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_yyal = $("<td>"+content[i].q_fg+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].q_fg.split(';');
	             	for(var j=0;j<$al.length-1;j++)
	             	{
	             		if($(document).width()<=991)//手机、平板
	            		{
	             			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             		else//电脑
	             		{
	            			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"&nbsp;&nbsp;&nbsp;&nbsp;" +
	            					"<a href='../../DownloadFileServlet?filename="+servletpath+$al[j]+"'>查看全文</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             	}
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_al_temp);
	             	$table_temp.append($tr_yyal);
             	}
             	/////////////////////////契税结束////////////2//////////////
             	
             	
             	////////8////
             	if(content[i].tdsy_chd1!=""&&content[i].tdsy_chd1!=null||
             			content[i].tdsy_tj1!=""&&content[i].tdsy_tj1!=null||
             			content[i].tdsy_chd2!=""&&content[i].tdsy_chd2!=null||
             			content[i].tdsy_tj2!=""&&content[i].tdsy_tj2!=null||
             			content[i].tdsy_chd3!=""&&content[i].tdsy_chd3!=null||
             			content[i].tdsy_tj3!=""&&content[i].tdsy_tj3!=null||
             			content[i].tdsy_al!=""&&content[i].tdsy_al!=null||
             			content[i].tdsy_wq!=""&&content[i].tdsy_wq!=null||
             			content[i].tdsy_fx!=""&&content[i].tdsy_fx!=null||
             			content[i].tdsy_fg!=""&&content[i].tdsy_fg!=null)
             	{
	             	var $s1h = $('<tr></tr>');
	             	var $s1d = $('<th colspan="2" class="afterTitle">土地使用税</th>');
	             	$s1h.append($s1d);
	             	$table_temp.append($s1h);
             	}
             			/////////////////////
             	if(content[i].tdsy_chd1!=""&&content[i].tdsy_chd1!=null)
             	{
	             	var $tr_yychd1 = $('<tr></tr>');
	             	var $th_yychd1 = $("<th>筹划点1</th>");
	             	var $td_yychd1 = $("<td>"+content[i].tdsy_chd1+"</td>");
	             	
	             	$tr_yychd1.append($th_yychd1);
	             	$tr_yychd1.append($td_yychd1);
	             	$table_temp.append($tr_yychd1);
             	}
             	//////////////////
             	if(content[i].tdsy_tj1!=""&&content[i].tdsy_tj1!=null)
             	{
	             	var $tr_yytj1 = $('<tr></tr>');
	             	var $th_yytj1 = $("<th>条件1</th>");
	             	var $td_yytj1 = $("<td>"+content[i].tdsy_tj1+"</td>");
	             	
	             	$tr_yytj1.append($th_yytj1);
	             	$tr_yytj1.append($td_yytj1);
	             	$table_temp.append($tr_yytj1);
             	}
             			//////////////////////
             	if(content[i].tdsy_chd2!=""&&content[i].tdsy_chd2!=null)
             	{
	             	var $tr_yychd2 = $('<tr></tr>');
	             	var $th_yychd2 = $("<th>筹划点2</th>");
	             	var $td_yychd2 = $("<td>"+content[i].tdsy_chd2+"</td>");
	             	
	             	$tr_yychd2.append($th_yychd2);
	             	$tr_yychd2.append($td_yychd2);
	             	$table_temp.append($tr_yychd2);
             	}
             	
             		///////////////////////
             	if(content[i].tdsy_tj2!=""&&content[i].tdsy_tj2!=null)
             	{
	             	var $tr_yytj2 = $('<tr></tr>');
	             	var $th_yytj2 = $("<th>条件2</th>");
	             	var $td_yytj2 = $("<td>"+content[i].tdsy_tj2+"</td>");
	             	
	             	$tr_yytj2.append($th_yytj2);
	             	$tr_yytj2.append($td_yytj2);
	             	$table_temp.append($tr_yytj2);
             	}
             			///////////////////
             	if(content[i].tdsy_chd3!=""&&content[i].tdsy_chd3!=null)
             	{
	             	var $tr_yychd3 = $('<tr></tr>');
	             	var $th_yychd3 = $("<th>筹划点3</th>");
	             	var $td_yychd3 = $("<td>"+content[i].tdsy_chd3+"</td>");
	             	
	             	$tr_yychd3.append($th_yychd3);
	             	$tr_yychd3.append($td_yychd3);
	             	$table_temp.append($tr_yychd3);
             	}
             			///////////////////
             	
             		
             		///////////////////
             	if(content[i].tdsy_tj3!=""&&content[i].tdsy_tj3!=null)
             	{
	             	var $tr_yytj3 = $('<tr></tr>');
	             	var $th_yytj3 = $("<th>条件3</th>");
	             	var $td_yytj3 = $("<td>"+content[i].tdsy_tj3+"</td>");
	             	
	             	$tr_yytj3.append($th_yytj3);
	             	$tr_yytj3.append($td_yytj3);
	             	$table_temp.append($tr_yytj3);
             	}
             		/////////////////
             	if(content[i].tdsy_al!=""&&content[i].tdsy_al!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>案例</th>");
	             	var $td_yyal = $("<td>"+content[i].tdsy_al+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_al = $('<tr></tr>');
	             	var $th_al_temp = $("<th>案例</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].tdsy_al.split(';');
	             	for(var j=0;j<$al.length;j++)
	             	{
	             		var  $tdi_fa = $("<a style='cursor:pointer' class='viewAL' data-toggle='modal' href='#viewAnliModal'>"+$al[j]+"</a></br>");
	             		$td_al_temp.append($tdi_fa);
	             	}
	             	
	             	$tr_al.append($th_al_temp);
	             	$tr_al.append($td_al_temp);
	             	$table_temp.append($tr_al);
             	}
             		///////////////////
             	if(content[i].tdsy_wq!=""&&content[i].tdsy_wq!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>误区</th>");
	             	var $td_yyal = $("<td>"+content[i].tdsy_wq+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             		///////////////////
             	if(content[i].tdsy_fx!=""&&content[i].tdsy_fx!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>风险应对方案</th>");
	             	var $td_yyal = $("<td>"+content[i].tdsy_fx+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             		///////////////////
             	if(content[i].tdsy_fg!=""&&content[i].tdsy_fg!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_yyal = $("<td>"+content[i].tdsy_fg+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].tdsy_fg.split(';');
	             	for(var j=0;j<$al.length-1;j++)
	             	{
	             		if($(document).width()<=991)//手机、平板
	            		{
	             			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             		else//电脑
	             		{
	            			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"&nbsp;&nbsp;&nbsp;&nbsp;" +
	            					"<a href='../../DownloadFileServlet?filename="+servletpath+$al[j]+"'>查看全文</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             	}
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_al_temp);
	             	$table_temp.append($tr_yyal);
             	}
             	///////////////////////土地使用税/////////////////////////////////

             	///////9/////
             	if(content[i].yh_chd1!=""&&content[i].yh_chd1!=null||
             			content[i].yh_tj1!=""&&content[i].yh_tj1!=null||
             			content[i].yh_chd2!=""&&content[i].yh_chd2!=null||
             			content[i].yh_tj2!=""&&content[i].yh_tj2!=null||
             			content[i].yh_chd3!=""&&content[i].yh_chd3!=null||
             			content[i].yh_tj3!=""&&content[i].yh_tj3!=null||
             			content[i].yh_al!=""&&content[i].yh_al!=null||
             			content[i].yh_wq!=""&&content[i].yh_wq!=null||
             			content[i].yh_fx!=""&&content[i].yh_fx!=null||
             			content[i].yh_fg!=""&&content[i].yh_fg!=null)
             	{
	             	var $s1h = $('<tr></tr>');
	             	var $s1d = $('<th colspan="2" class="afterTitle">印花税</th>');
	             	$s1h.append($s1d);
	             	$table_temp.append($s1h);
             	}
             			/////////////////////
             	if(content[i].yh_chd1!=""&&content[i].yh_chd1!=null)
             	{
	             	var $tr_yychd1 = $('<tr></tr>');
	             	var $th_yychd1 = $("<th>筹划点1</th>");
	             	var $td_yychd1 = $("<td>"+content[i].yh_chd1+"</td>");
	             	
	             	$tr_yychd1.append($th_yychd1);
	             	$tr_yychd1.append($td_yychd1);
	             	$table_temp.append($tr_yychd1);
             	}
             	/////////////////////////
             	if(content[i].yh_tj1!=""&&content[i].yh_tj1!=null)
             	{
	             	var $tr_yytj1 = $('<tr></tr>');
	             	var $th_yytj1 = $("<th>条件1</th>");
	             	var $td_yytj1 = $("<td>"+content[i].yh_tj1+"</td>");
	             	
	             	$tr_yytj1.append($th_yytj1);
	             	$tr_yytj1.append($td_yytj1);
	             	$table_temp.append($tr_yytj1);
             	}
             			//////////////////////
             	if(content[i].yh_chd2!=""&&content[i].yh_chd2!=null)
             	{
	             	var $tr_yychd2 = $('<tr></tr>');
	             	var $th_yychd2 = $("<th>筹划点2</th>");
	             	var $td_yychd2 = $("<td>"+content[i].yh_chd2+"</td>");
	             	
	             	$tr_yychd2.append($th_yychd2);
	             	$tr_yychd2.append($td_yychd2);
	             	$table_temp.append($tr_yychd2);
             	}
             		///////////////////////
             	if(content[i].yh_tj2!=""&&content[i].yh_tj2!=null)
             	{
	             	var $tr_yytj2 = $('<tr></tr>');
	             	var $th_yytj2 = $("<th>条件2</th>");
	             	var $td_yytj2 = $("<td>"+content[i].yh_tj2+"</td>");
	             	
	             	$tr_yytj2.append($th_yytj2);
	             	$tr_yytj2.append($td_yytj2);
	             	$table_temp.append($tr_yytj2);
             	}
             			///////////////////
             	if(content[i].yh_chd3!=""&&content[i].yh_chd3!=null)
             	{
	             	var $tr_yychd3 = $('<tr></tr>');
	             	var $th_yychd3 = $("<th>筹划点3</th>");
	             	var $td_yychd3 = $("<td>"+content[i].yh_chd3+"</td>");
	             	
	             	$tr_yychd3.append($th_yychd3);
	             	$tr_yychd3.append($td_yychd3);
	             	$table_temp.append($tr_yychd3);
             	}
             			///////////////////
             	
             		
             		///////////////////
             	if(content[i].yh_tj3!=""&&content[i].yh_tj3!=null)
             	{
	             	var $tr_yytj3 = $('<tr></tr>');
	             	var $th_yytj3 = $("<th>条件3</th>");
	             	var $td_yytj3 = $("<td>"+content[i].yh_tj3+"</td>");
	             	
	             	$tr_yytj3.append($th_yytj3);
	             	$tr_yytj3.append($td_yytj3);
	             	$table_temp.append($tr_yytj3);
             	}
             		/////////////////
             	if(content[i].yh_al!=""&&content[i].yh_al!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>案例</th>");
	             	var $td_yyal = $("<td>"+content[i].yh_al+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_al = $('<tr></tr>');
	             	var $th_al_temp = $("<th>案例</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].yh_al.split(';');
	             	for(var j=0;j<$al.length;j++)
	             	{
	             		var  $tdi_fa = $("<a style='cursor:pointer' class='viewAL' data-toggle='modal' href='#viewAnliModal'>"+$al[j]+"</a></br>");
	             		$td_al_temp.append($tdi_fa);
	             	}
	             	
	             	$tr_al.append($th_al_temp);
	             	$tr_al.append($td_al_temp);
	             	$table_temp.append($tr_al);
             	}
             		///////////////////
             	if(content[i].yh_wq!=""&&content[i].yh_wq!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>误区</th>");
	             	var $td_yyal = $("<td>"+content[i].yh_wq+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             		///////////////////
             	if(content[i].yh_fx!=""&&content[i].yh_fx!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>风险应对方案</th>");
	             	var $td_yyal = $("<td>"+content[i].yh_fx+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             		///////////////////
             	if(content[i].yh_fg!=""&&content[i].yh_fg!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_yyal = $("<td>"+content[i].yh_fg+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].yh_fg.split(';');
	             	for(var j=0;j<$al.length-1;j++)
	             	{
	             		if($(document).width()<=991)//手机、平板
	            		{
	             			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             		else//电脑
	             		{
	            			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"&nbsp;&nbsp;&nbsp;&nbsp;" +
	            					"<a href='../../DownloadFileServlet?filename="+servletpath+$al[j]+"'>查看全文</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             	}
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_al_temp);
	             	$table_temp.append($tr_yyal);
             	}
             	////////////////////印花税结束/////////////////////////////
             	/////////////////////////////各种税结束///////////////////////////////////
             
             	//////////////////删除按钮///////////////////
             	if(((usertype=="admin")&&(content[i].companyName==companyName)&&(content[i].gonghao==zh))||((usertype=="superadmin")&&(content[i].companyName==companyName)))
         		{
	             	var $tr_del = $('<tr></tr>');
	             	//注意：这里的delButton仅作为过滤选择器的过滤条件，不可以用该值来操作该按钮
	             	var $td_del_temp = $("<td colspan='2' class='text-center delButton'>" +
	             			"<a " +
	             			" class='btn btn-warning editModalButtonJs col-xs-5 col-sm-5 col-md-5 col-lg-5' " +
	             			"href='../../FindJcsAndTaxByIdServlet?id="+content[i].domainKey+"'>" +
	             				"<span class='glyphicon glyphicon-edit'></span>&nbsp;&nbsp;修改数据" +
	             			"</a>"+
	             			"<a data-toggle='modal' data-target='#confirmModalxxjcs"+i+"'" +
	             			" class='btn btn-danger delModalButtonJs col-xs-5 col-xs-offset-2 col-sm-5 col-sm-offset-2 col-md-5 col-md-offset-2 col-lg-5 col-lg-offset-2' rel='../../DeleteJcsServlet?id="+content[i].domainKey+"'>" +
	             				"<span class='glyphicon glyphicon-trash'></span>&nbsp;&nbsp;删除数据" +
	             			"</a></td>");
	             	
	             	$tr_del.append($td_del_temp);
	             	$table_temp.append($tr_del);
         		}
             	/////////////////////////////////////////////
             	
             	$(".allJcs_table_body").append($table_temp);
             	
             	////////////////////////////////
             	//////////////////动态生成模态框开始////////////////////////
             	var $modal = $("<div id='confirmModalxxjcs"+i+"' data-backdrop='static' class='modal fade' id='delModal' tabindex='-1' role='dialog' aria-labelledby='delModalLabel' aria-hidden='true'></div>");
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
                             	if(json.isDeleteJcsSuccess)
                         		{
                             		alert("删除成功！！！");
                             		$('.modal-backdrop').remove();
                             		loadJcs(0,1,true, gjc, biaoti, yaodian, gslx,zh,companyName,usertype,servletpath,alsousuo);
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
                    totalPages: getPageNumber(json.sum,1),
                    bootstrapMajorVersion:3,
                    onPageClicked: function(e,originalEvent,type,page){
                    	loadJcs(1*(page-1),1,false, gjc, biaoti, yaodian, gslx,zh,companyName,usertype,servletpath,alsousuo);
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
            	//显示更多操作
            	checkstring();

            }
        });
}
//////////////////////////////////////////////////////

function loadJcsByJilian(start, limit, init, yijicd, erji,zh,companyName,usertype,servletpath) {
    
	$(".allJcs_table_body").empty();
    $(".allJcs_table_body").html("<p style='text-align: center;width:100%;'><img src='../../imgs/load.jpg'/></p>");
    
    $.ajax({
            url: "../../ListJcsByJilianServlet",
            data: {
            	start: start,
                limit: limit,
                yijicd: yijicd,
                erji: erji,
            	companyName:companyName,
            	usertype:usertype
            },
            type: "post",
            dataType : "json",
            success: function( json ) {
            	
              $(".allJcs_table_body").empty();
              var number = json.list.length;
              var content = json.list;

                for (var i = 0; i < number; i++) {
                	
                	
                ///////////////////////////////
             	var $table_temp = $("<table class='table table-bordered table-hover table-striped htTable tble"+i+"'></table>");
             	var $tr_num = $('<tr></tr>');
             	var $th_num_temp = $("<th>序号</th>");
             	var $td_num_temp = $("<td>"+(i+1)+"</td>");
             	
             	$tr_num.append($th_num_temp);
             	$tr_num.append($td_num_temp);
             	$table_temp.append($tr_num);
             	
             	if(content[i].firstnode!=""&&content[i].firstnode!=null)
             	{
	             	var $tr_f1 = $('<tr></tr>');
	             	var $th_f1 = $("<th>一级节点</th>");
	             	var $td_f1 = $("<td>"+content[i].firstnode+"</td>");
	             	
	             	$tr_f1.append($th_f1);
	             	$tr_f1.append($td_f1);
	             	$table_temp.append($tr_f1);
             	}
             	
             	if(content[i].secondnode!=""&&content[i].secondnode!=null)
             	{
	             	var $tr_f2 = $('<tr></tr>');
	             	var $th_f2 = $("<th>二级节点</th>");
	             	var $td_f2 = $("<td>"+content[i].secondnode+"</td>");
	             	
	             	$tr_f2.append($th_f2);
	             	$tr_f2.append($td_f2);
	             	$table_temp.append($tr_f2);
             	}
             	///////////////////////////////////
             	if(content[i].title!=""&&content[i].title!=null)
             	{
	             	var $tr_fgnumber = $('<tr></tr>');
	             	var $th_fgnumber_temp = $("<th>标题</th>");
	             	var $td_fgnumber_temp = $("<td>"+content[i].title+"</td>");
	             	
	             	$tr_fgnumber.append($th_fgnumber_temp);
	             	$tr_fgnumber.append($td_fgnumber_temp);
	             	$table_temp.append($tr_fgnumber);
             	}
             	///////////////////
             	
             	///////////////////////////////////
             	if(content[i].yaodian!=""&&content[i].yaodian!=null)
             	{
	             	var $tr_yd = $('<tr></tr>');
	             	var $th_yd_temp = $("<th>要点</th>");
	             	var $td_yd_temp = $("<td>"+content[i].yaodian+"</td>");
	             	
	             	$tr_yd.append($th_yd_temp);
	             	$tr_yd.append($td_yd_temp);
	             	$table_temp.append($tr_yd);
             	}
             	///////////////////
             	
///////////////////////////////////
             	if(content[i].al!=""&&content[i].al!=null)
             	{
	             	/*var $tr_al = $('<tr></tr>');
	             	var $th_al_temp = $("<th>案例</th>");
	             	var $td_al_temp = $("<td><a href='#'>"+content[i].al+"</a></td>");
	             	
	             	$tr_al.append($th_al_temp);
	             	$tr_al.append($td_al_temp);
	             	$table_temp.append($tr_al);*/
             		var $tr_al = $('<tr></tr>');
	             	var $th_al_temp = $("<th>案例</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].al.split(';');
	             	for(var j=0;j<$al.length;j++)
	             	{
	             		var  $tdi_fa = $("<a style='cursor:pointer' class='viewAL' data-toggle='modal' href='#viewAnliModal'>"+$al[j]+"</a></br>");
	             		$td_al_temp.append($tdi_fa);
	             	}
	             	
	             	
	             	$tr_al.append($th_al_temp);
	             	$tr_al.append($td_al_temp);
	             	$table_temp.append($tr_al);
             	}
             	///////////////////
             	
            	///////////////
             	if(content[i].gslx!=""&&content[i].gslx!=null)
             	{
	             	var $tr_fgs = $('<tr></tr>');
	             	var $th_fgs = $("<th>公司类型</th>");
	             	var $td_fgs = $("<td>"+content[i].gslx+"</td>");
	             	
	             	$tr_fgs.append($th_fgs);
	             	$tr_fgs.append($td_fgs);
	             	$table_temp.append($tr_fgs);
             	}
             	////////////////
             	if(content[i].keyword!=""&&content[i].keyword!=null)
             	{
	             	var $tr_keyword = $('<tr></tr>');
	             	var $th_keyword_temp = $("<th>关键词</th>");
	             	var $td_keyword_temp = $("<td>"+content[i].keyword+"</td>");
	             	
	             	$tr_keyword.append($th_keyword_temp);
	             	$tr_keyword.append($td_keyword_temp);
	             	$table_temp.append($tr_keyword);
             	}
             	////////////////////////////
             	if(content[i].note!=""&&content[i].note!=null)
             	{
	             	var $tr_note = $('<tr></tr>');
	             	var $th_note_temp = $("<th>备注</th>");
	             	var $td_note_temp = $("<td>"+content[i].note+"</td>");
	             	
	             	$tr_note.append($th_note_temp);
	             	$tr_note.append($td_note_temp);
	             	$table_temp.append($tr_note);
             	}
             	
             	//////////////////////
             	
             	////////////////////////////各种税开始/////////////////////////////////////
             	
             	if(content[i].tdzz_chd1!=""&&content[i].tdzz_chd1!=null||
             			content[i].tdzz_tj1!=""&&content[i].tdzz_tj1!=null||
             			content[i].tdzz_chd2!=""&&content[i].tdzz_chd2!=null||
             			content[i].tdzz_tj2!=""&&content[i].tdzz_tj2!=null||
             			content[i].tdzz_chd3!=""&&content[i].tdzz_chd3!=null||
             			content[i].tdzz_tj3!=""&&content[i].tdzz_tj3!=null||
             			content[i].tdzz_al!=""&&content[i].tdzz_al!=null||
             			content[i].tdzz_wq!=""&&content[i].tdzz_wq!=null||
             			content[i].tdzz_fx!=""&&content[i].tdzz_fx!=null||
             			content[i].tdzz_fg!=""&&content[i].tdzz_fg!=null)
             	{
             	var $s1h = $('<tr></tr>');
             	var $s1d = $('<th colspan="2" class="afterTitle">土地增值税</th>');
             	$s1h.append($s1d);
             	$table_temp.append($s1h);
             	}
             			/////////////////////
             	if(content[i].tdzz_chd1!=""&&content[i].tdzz_chd1!=null)
             	{
             	var $tr_yychd1 = $('<tr></tr>');
             	var $th_yychd1 = $("<th>筹划点1</th>");
             	var $td_yychd1 = $("<td>"+content[i].tdzz_chd1+"</td>");
             	
             	
             	$tr_yychd1.append($th_yychd1);
             	$tr_yychd1.append($td_yychd1);
             	$table_temp.append($tr_yychd1);
             	}
             	////////////////
             	if(content[i].tdzz_tj1!=""&&content[i].tdzz_tj1!=null)
             	{
             	var $tr_yytj1 = $('<tr></tr>');
             	var $th_yytj1 = $("<th>条件1</th>");
             	var $td_yytj1 = $("<td>"+content[i].tdzz_tj1+"</td>");
             	
             	$tr_yytj1.append($th_yytj1);
             	$tr_yytj1.append($td_yytj1);
             	$table_temp.append($tr_yytj1);
             	}
             			//////////////////////
             	if(content[i].tdzz_chd2!=""&&content[i].tdzz_chd2!=null)
             	{
             	var $tr_yychd2 = $('<tr></tr>');
             	var $th_yychd2 = $("<th>筹划点2</th>");
             	var $td_yychd2 = $("<td>"+content[i].tdzz_chd2+"</td>");
             	
             	$tr_yychd2.append($th_yychd2);
             	$tr_yychd2.append($td_yychd2);
             	$table_temp.append($tr_yychd2);
             	}
             		///////////////////////
             	if(content[i].tdzz_tj2!=""&&content[i].tdzz_tj2!=null)
             	{
             	var $tr_yytj2 = $('<tr></tr>');
             	var $th_yytj2 = $("<th>条件2</th>");
             	var $td_yytj2 = $("<td>"+content[i].tdzz_tj2+"</td>");
             	
             	$tr_yytj2.append($th_yytj2);
             	$tr_yytj2.append($td_yytj2);
             	$table_temp.append($tr_yytj2);
             	}
             			///////////////////
             	if(content[i].tdzz_chd3!=""&&content[i].tdzz_chd3!=null)
             	{
             	var $tr_yychd3 = $('<tr></tr>');
             	var $th_yychd3 = $("<th>筹划点3</th>");
             	var $td_yychd3 = $("<td>"+content[i].tdzz_chd3+"</td>");
             	
             	$tr_yychd3.append($th_yychd3);
             	$tr_yychd3.append($td_yychd3);
             	$table_temp.append($tr_yychd3);
             	}
             			///////////////////
             	
             		
             		///////////////////
             	if(content[i].tdzz_tj3!=""&&content[i].tdzz_tj3!=null)
             	{
             	var $tr_yytj3 = $('<tr></tr>');
             	var $th_yytj3 = $("<th>条件3</th>");
             	var $td_yytj3 = $("<td>"+content[i].tdzz_tj3+"</td>");
             	
             	$tr_yytj3.append($th_yytj3);
             	$tr_yytj3.append($td_yytj3);
             	$table_temp.append($tr_yytj3);
             	}
             		/////////////////
             	if(content[i].tdzz_al!=""&&content[i].tdzz_al!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>案例</th>");
	             	var $td_yyal = $("<td>"+content[i].tdzz_al+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_al = $('<tr></tr>');
	             	var $th_al_temp = $("<th>案例</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].tdzz_al.split(';');
	             	for(var j=0;j<$al.length;j++)
	             	{
	             		var  $tdi_fa = $("<a style='cursor:pointer' class='viewAL' data-toggle='modal' href='#viewAnliModal'>"+$al[j]+"</a></br>");
	             		$td_al_temp.append($tdi_fa);
	             	}
	             	
	             	
	             	$tr_al.append($th_al_temp);
	             	$tr_al.append($td_al_temp);
	             	$table_temp.append($tr_al);
             	}
             		///////////////////
             	if(content[i].tdzz_wq!=""&&content[i].tdzz_wq!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>误区</th>");
	             	var $td_yyal = $("<td>"+content[i].tdzz_wq+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             		///////////////////
             	if(content[i].tdzz_fx!=""&&content[i].tdzz_fx!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>风险应对方案</th>");
	             	var $td_yyal = $("<td>"+content[i].tdzz_fx+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             		///////////////////
             	if(content[i].tdzz_fg!=""&&content[i].tdzz_fg!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_yyal = $("<td>"+content[i].tdzz_fg+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].tdzz_fg.split(';');
	             	for(var j=0;j<$al.length-1;j++)
	             	{
	             		if($(document).width()<=991)//手机、平板
	            		{
	             			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             		else//电脑
	             		{
	            			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"&nbsp;&nbsp;&nbsp;&nbsp;" +
	            					"<a href='../../DownloadFileServlet?filename="+servletpath+$al[j]+"'>查看全文</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             	}
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_al_temp);
	             	$table_temp.append($tr_yyal);
             	}
             	/////////////////////土地增值税结束////////////3////////////
             	if(content[i].qy_chd1!=""&&content[i].qy_chd1!=null||
             			content[i].qy_tj1!=""&&content[i].qy_tj1!=null||
             			content[i].qy_chd2!=""&&content[i].qy_chd2!=null||
             			content[i].qy_tj2!=""&&content[i].qy_tj2!=null||
             			content[i].qy_chd3!=""&&content[i].qy_chd3!=null||
             			content[i].qy_tj3!=""&&content[i].qy_tj3!=null||
             			content[i].qy_al!=""&&content[i].qy_al!=null||
             			content[i].qy_wq!=""&&content[i].qy_wq!=null||
             			content[i].qy_fx!=""&&content[i].qy_fx!=null||
             			content[i].qy_fg!=""&&content[i].qy_fg!=null)
             	{
	             	var $s1h = $('<tr></tr>');
	             	var $s1d = $('<th colspan="2" class="afterTitle">企业所得税</th>');
	             	$s1h.append($s1d);
	             	$table_temp.append($s1h);
             	}
             			/////////////////////
             	if(content[i].qy_chd1!=""&&content[i].qy_chd1!=null)
             	{
	             	var $tr_yychd1 = $('<tr></tr>');
	             	var $th_yychd1 = $("<th>筹划点1</th>");
	             	var $td_yychd1 = $("<td>"+content[i].qy_chd1+"</td>");
	             	
	             	$tr_yychd1.append($th_yychd1);
	             	$tr_yychd1.append($td_yychd1);
	             	$table_temp.append($tr_yychd1);
             	}
             	
             	if(content[i].qy_tj1!=""&&content[i].qy_tj1!=null)
             	{
	             	var $tr_yytj1 = $('<tr></tr>');
	             	var $th_yytj1 = $("<th>条件1</th>");
	             	var $td_yytj1 = $("<td>"+content[i].qy_tj1+"</td>");
	             	
	             	$tr_yytj1.append($th_yytj1);
	             	$tr_yytj1.append($td_yytj1);
	             	$table_temp.append($tr_yytj1);
             	}
             			//////////////////////
             	if(content[i].qy_chd2!=""&&content[i].qy_chd2!=null)
             	{
	             	var $tr_yychd2 = $('<tr></tr>');
	             	var $th_yychd2 = $("<th>筹划点2</th>");
	             	var $td_yychd2 = $("<td>"+content[i].qy_chd2+"</td>");
	             	
	             	$tr_yychd2.append($th_yychd2);
	             	$tr_yychd2.append($td_yychd2);
	             	$table_temp.append($tr_yychd2);
             	}
             	
             		///////////////////////
             	if(content[i].qy_tj2!=""&&content[i].qy_tj2!=null)
             	{
	             	var $tr_yytj2 = $('<tr></tr>');
	             	var $th_yytj2 = $("<th>条件2</th>");
	             	var $td_yytj2 = $("<td>"+content[i].qy_tj2+"</td>");
	             	
	             	$tr_yytj2.append($th_yytj2);
	             	$tr_yytj2.append($td_yytj2);
	             	$table_temp.append($tr_yytj2);
             	}
             			///////////////////
             	if(content[i].qy_chd3!=""&&content[i].qy_chd3!=null)
             	{
             		var $tr_yychd3 = $('<tr></tr>');
                 	var $th_yychd3 = $("<th>筹划点3</th>");
                 	var $td_yychd3 = $("<td>"+content[i].qy_chd3+"</td>");
                 	
                 	$tr_yychd3.append($th_yychd3);
                 	$tr_yychd3.append($td_yychd3);
                 	$table_temp.append($tr_yychd3);
             	}
             	
             			///////////////////
             	
             		
             		///////////////////
             	if(content[i].qy_tj3!=""&&content[i].qy_tj3!=null)
             	{
	             	var $tr_yytj3 = $('<tr></tr>');
	             	var $th_yytj3 = $("<th>条件3</th>");
	             	var $td_yytj3 = $("<td>"+content[i].qy_tj3+"</td>");
	             	
	             	$tr_yytj3.append($th_yytj3);
	             	$tr_yytj3.append($td_yytj3);
	             	$table_temp.append($tr_yytj3);
             	}
             		/////////////////
             	if(content[i].qy_al!=""&&content[i].qy_al!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>案例</th>");
	             	var $td_yyal = $("<td>"+content[i].qy_al+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_al = $('<tr></tr>');
	             	var $th_al_temp = $("<th>案例</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].qy_al.split(';');
	             	for(var j=0;j<$al.length;j++)
	             	{
	             		var  $tdi_fa = $("<a style='cursor:pointer' class='viewAL' data-toggle='modal' href='#viewAnliModal'>"+$al[j]+"</a></br>");
	             		$td_al_temp.append($tdi_fa);
	             	}
	             	
	             	$tr_al.append($th_al_temp);
	             	$tr_al.append($td_al_temp);
	             	$table_temp.append($tr_al);
             	}
             		///////////////////
             	if(content[i].qy_wq!=""&&content[i].qy_wq!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>误区</th>");
	             	var $td_yyal = $("<td>"+content[i].qy_wq+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             	
             		///////////////////
             	if(content[i].qy_fx!=""&&content[i].qy_fx!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>风险应对方案</th>");
	             	var $td_yyal = $("<td>"+content[i].qy_fx+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             		///////////////////
             	if(content[i].qy_fg!=""&&content[i].qy_fg!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_yyal = $("<td>"+content[i].qy_fg+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].qy_fg.split(';');
	             	for(var j=0;j<$al.length-1;j++)
	             	{
	             		if($(document).width()<=991)//手机、平板
	            		{
	             			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             		else//电脑
	             		{
	            			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"&nbsp;&nbsp;&nbsp;&nbsp;" +
	            					"<a href='../../DownloadFileServlet?filename="+servletpath+$al[j]+"'>查看全文</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             	}
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_al_temp);
	             	$table_temp.append($tr_yyal);
             	}
             	////////////////////企业所得税结束/////////////4//////
             	if(content[i].yy_chd1!=""&&content[i].yy_chd1!=null||
             			content[i].yy_tj1!=""&&content[i].yy_tj1!=null||
             			content[i].yy_chd2!=""&&content[i].yy_chd2!=null||
             			content[i].yy_tj2!=""&&content[i].yy_tj2!=null||
             			content[i].yy_chd3!=""&&content[i].yy_chd3!=null||
             			content[i].yy_tj3!=""&&content[i].yy_tj3!=null||
             			content[i].yy_al!=""&&content[i].yy_al!=null||
             			content[i].yy_wq!=""&&content[i].yy_wq!=null||
             			content[i].yy_fx!=""&&content[i].yy_fx!=null||
             			content[i].yy_fg!=""&&content[i].yy_fg!=null)
             	{
	             	var $s1h = $('<tr></tr>');
	             	var $s1d = $('<th colspan="2" class="afterTitle">营业税</th>');
	             	$s1h.append($s1d);
	             	$table_temp.append($s1h);
             	}
             			/////////////////////
             	if(content[i].yy_chd1!=""&&content[i].yy_chd1!=null)
             	{
	             	var $tr_yychd1 = $('<tr></tr>');
	             	var $th_yychd1 = $("<th>筹划点1</th>");
	             	var $td_yychd1 = $("<td>"+content[i].yy_chd1+"</td>");
	             	
	             	$tr_yychd1.append($th_yychd1);
	             	$tr_yychd1.append($td_yychd1);
	             	$table_temp.append($tr_yychd1);
             	}
             	
             	if(content[i].yy_tj1!=""&&content[i].yy_tj1!=null)
             	{
	             	var $tr_yytj1 = $('<tr></tr>');
	             	var $th_yytj1 = $("<th>条件1</th>");
	             	var $td_yytj1 = $("<td>"+content[i].yy_tj1+"</td>");
	             	
	             	$tr_yytj1.append($th_yytj1);
	             	$tr_yytj1.append($td_yytj1);
	             	$table_temp.append($tr_yytj1);
             	}
             			//////////////////////
             	if(content[i].yy_chd2!=""&&content[i].yy_chd2!=null)
             	{
	             	var $tr_yychd2 = $('<tr></tr>');
	             	var $th_yychd2 = $("<th>筹划点2</th>");
	             	var $td_yychd2 = $("<td>"+content[i].yy_chd2+"</td>");
	             	
	             	$tr_yychd2.append($th_yychd2);
	             	$tr_yychd2.append($td_yychd2);
	             	$table_temp.append($tr_yychd2);
             	}
             		///////////////////////
             	if(content[i].yy_tj2!=""&&content[i].yy_tj2!=null)
             	{
	             	var $tr_yytj2 = $('<tr></tr>');
	             	var $th_yytj2 = $("<th>条件2</th>");
	             	var $td_yytj2 = $("<td>"+content[i].yy_tj2+"</td>");
	             	
	             	$tr_yytj2.append($th_yytj2);
	             	$tr_yytj2.append($td_yytj2);
	             	$table_temp.append($tr_yytj2);
             	}
             			///////////////////
             	if(content[i].yy_chd3!=""&&content[i].yy_chd3!=null)
             	{
	             	var $tr_yychd3 = $('<tr></tr>');
	             	var $th_yychd3 = $("<th>筹划点3</th>");
	             	var $td_yychd3 = $("<td>"+content[i].yy_chd3+"</td>");
	             	
	             	$tr_yychd3.append($th_yychd3);
	             	$tr_yychd3.append($td_yychd3);
	             	$table_temp.append($tr_yychd3);
             	}
             			///////////////////
             	
             		
             		///////////////////
             	if(content[i].yy_tj3!=""&&content[i].yy_tj3!=null)
             	{
	             	var $tr_yytj3 = $('<tr></tr>');
	             	var $th_yytj3 = $("<th>条件3</th>");
	             	var $td_yytj3 = $("<td>"+content[i].yy_tj3+"</td>");
	             	
	             	$tr_yytj3.append($th_yytj3);
	             	$tr_yytj3.append($td_yytj3);
	             	$table_temp.append($tr_yytj3);
             	}
             		/////////////////
             	if(content[i].yy_al!=""&&content[i].yy_al!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>案例</th>");
	             	var $td_yyal = $("<td>"+content[i].yy_al+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_al = $('<tr></tr>');
	             	var $th_al_temp = $("<th>案例</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].yy_al.split(';');
	             	for(var j=0;j<$al.length;j++)
	             	{
	             		var  $tdi_fa = $("<a style='cursor:pointer' class='viewAL' data-toggle='modal' href='#viewAnliModal'>"+$al[j]+"</a></br>");
	             		$td_al_temp.append($tdi_fa);
	             	}
	             	
	             	$tr_al.append($th_al_temp);
	             	$tr_al.append($td_al_temp);
	             	$table_temp.append($tr_al);
             	}
             		///////////////////
             	if(content[i].yy_wq!=""&&content[i].yy_wq!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>误区</th>");
	             	var $td_yyal = $("<td>"+content[i].yy_wq+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             	
             		///////////////////
             	if(content[i].yy_fx!=""&&content[i].yy_fx!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>风险应对方案</th>");
	             	var $td_yyal = $("<td>"+content[i].yy_fx+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             		///////////////////
             	if(content[i].yy_fg!=""&&content[i].yy_fg!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_yyal = $("<td>"+content[i].yy_fg+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].yy_fg.split(';');
	             	for(var j=0;j<$al.length-1;j++)
	             	{
	             		if($(document).width()<=991)//手机、平板
	            		{
	             			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             		else//电脑
	             		{
	            			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"&nbsp;&nbsp;&nbsp;&nbsp;" +
	            					"<a href='../../DownloadFileServlet?filename="+servletpath+$al[j]+"'>查看全文</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             	}
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_al_temp);
	             	$table_temp.append($tr_yyal);
             	}
             	//////////////////////营业税结束///////////////5/////////////////
             	
             	
             	if(content[i].zz_chd1!=""&&content[i].zz_chd1!=null||
             			content[i].zz_tj1!=""&&content[i].zz_tj1!=null||
             			content[i].zz_chd2!=""&&content[i].zz_chd2!=null||
             			content[i].zz_tj2!=""&&content[i].zz_tj2!=null||
             			content[i].zz_chd3!=""&&content[i].zz_chd3!=null||
             			content[i].zz_tj3!=""&&content[i].zz_tj3!=null||
             			content[i].zz_al!=""&&content[i].zz_al!=null||
             			content[i].zz_wq!=""&&content[i].zz_wq!=null||
             			content[i].zz_fx!=""&&content[i].zz_fx!=null||
             			content[i].zz_fg!=""&&content[i].zz_fg!=null)
             	{
             	var $s1h = $('<tr></tr>');
             	var $s1d = $('<th colspan="2" class="afterTitle">增值税</th>');
             	$s1h.append($s1d);
             	$table_temp.append($s1h);
             	}
             			/////////////////////
             	if(content[i].zz_chd1!=""&&content[i].zz_chd1!=null)
             	{
	             	var $tr_yychd1 = $('<tr></tr>');
	             	var $th_yychd1 = $("<th>筹划点1</th>");
	             	var $td_yychd1 = $("<td>"+content[i].zz_chd1+"</td>");
	             	
	             	$tr_yychd1.append($th_yychd1);
	             	$tr_yychd1.append($td_yychd1);
	             	$table_temp.append($tr_yychd1);
             	}
             	///////////////////
             	
             	if(content[i].zz_tj1!=""&&content[i].zz_tj1!=null)
             	{
	             	var $tr_yytj1 = $('<tr></tr>');
	             	var $th_yytj1 = $("<th>条件1</th>");
	             	var $td_yytj1 = $("<td>"+content[i].zz_tj1+"</td>");
	             	
	             	$tr_yytj1.append($th_yytj1);
	             	$tr_yytj1.append($td_yytj1);
	             	$table_temp.append($tr_yytj1);
             	}
             			//////////////////////
             	if(content[i].zz_chd2!=""&&content[i].zz_chd2!=null)
             	{
	             	var $tr_yychd2 = $('<tr></tr>');
	             	var $th_yychd2 = $("<th>筹划点2</th>");
	             	var $td_yychd2 = $("<td>"+content[i].zz_chd2+"</td>");
	             	
	             	$tr_yychd2.append($th_yychd2);
	             	$tr_yychd2.append($td_yychd2);
	             	$table_temp.append($tr_yychd2);
             	}
             	
             		///////////////////////
             	if(content[i].zz_tj2!=""&&content[i].zz_tj2!=null)
             	{
             	var $tr_yytj2 = $('<tr></tr>');
             	var $th_yytj2 = $("<th>条件2</th>");
             	var $td_yytj2 = $("<td>"+content[i].zz_tj2+"</td>");
             	
             	$tr_yytj2.append($th_yytj2);
             	$tr_yytj2.append($td_yytj2);
             	$table_temp.append($tr_yytj2);
             	}
             			///////////////////
             	if(content[i].zz_chd3!=""&&content[i].zz_chd3!=null)
             	{
	             	var $tr_yychd3 = $('<tr></tr>');
	             	var $th_yychd3 = $("<th>筹划点3</th>");
	             	var $td_yychd3 = $("<td>"+content[i].zz_chd3+"</td>");
	             	
	             	$tr_yychd3.append($th_yychd3);
	             	$tr_yychd3.append($td_yychd3);
	             	$table_temp.append($tr_yychd3);
             	}
             			///////////////////
             	
             		
             		///////////////////
             	if(content[i].zz_tj3!=""&&content[i].zz_tj3!=null)
             	{
	             	var $tr_yytj3 = $('<tr></tr>');
	             	var $th_yytj3 = $("<th>条件3</th>");
	             	var $td_yytj3 = $("<td>"+content[i].zz_tj3+"</td>");
	             	
	             	$tr_yytj3.append($th_yytj3);
	             	$tr_yytj3.append($td_yytj3);
	             	$table_temp.append($tr_yytj3);
             	}
             		/////////////////
             	if(content[i].zz_al!=""&&content[i].zz_al!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>案例</th>");
	             	var $td_yyal = $("<td>"+content[i].zz_al+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_al = $('<tr></tr>');
	             	var $th_al_temp = $("<th>案例</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].zz_al.split(';');
	             	for(var j=0;j<$al.length;j++)
	             	{
	             		var  $tdi_fa = $("<a style='cursor:pointer' class='viewAL' data-toggle='modal' href='#viewAnliModal'>"+$al[j]+"</a></br>");
	             		$td_al_temp.append($tdi_fa);
	             	}
	             	
	             	$tr_al.append($th_al_temp);
	             	$tr_al.append($td_al_temp);
	             	$table_temp.append($tr_al);
             	}
             		///////////////////
             	if(content[i].zz_wq!=""&&content[i].zz_wq!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>误区</th>");
	             	var $td_yyal = $("<td>"+content[i].zz_wq+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             		///////////////////
             	if(content[i].zz_fx!=""&&content[i].zz_fx!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>风险应对方案</th>");
	             	var $td_yyal = $("<td>"+content[i].zz_fx+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             		///////////////////
             	if(content[i].zz_fg!=""&&content[i].zz_fg!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_yyal = $("<td>"+content[i].zz_fg+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].zz_fg.split(';');
	             	for(var j=0;j<$al.length-1;j++)
	             	{
	             		if($(document).width()<=991)//手机、平板
	            		{
	             			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             		else//电脑
	             		{
	            			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"&nbsp;&nbsp;&nbsp;&nbsp;" +
	            					"<a href='../../DownloadFileServlet?filename="+servletpath+$al[j]+"'>查看全文</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             	}
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_al_temp);
	             	$table_temp.append($tr_yyal);
             	}
             	/////////////////////增值税结束//////////////////////////
             	
      //////6//////
             	if(content[i].grsd_chd1!=""&&content[i].grsd_chd1!=null||
             			content[i].grsd_tj1!=""&&content[i].grsd_tj1!=null||
             			content[i].grsd_chd2!=""&&content[i].grsd_chd2!=null||
             			content[i].grsd_tj2!=""&&content[i].grsd_tj2!=null||
             			content[i].grsd_chd3!=""&&content[i].grsd_chd3!=null||
             			content[i].grsd_tj3!=""&&content[i].grsd_tj3!=null||
             			content[i].grsd_al!=""&&content[i].grsd_al!=null||
             			content[i].grsd_wq!=""&&content[i].grsd_wq!=null||
             			content[i].grsd_fx!=""&&content[i].grsd_fx!=null||
             			content[i].grsd_fg!=""&&content[i].grsd_fg!=null)
             	{
	             	var $s1h = $('<tr></tr>');
	             	var $s1d = $('<th colspan="2" class="afterTitle">个人所得税</th>');
	             	$s1h.append($s1d);
	             	$table_temp.append($s1h);
             	}
             			/////////////////////
             	if(content[i].grsd_chd1!=""&&content[i].grsd_chd1!=null)
             	{
	             	var $tr_yychd1 = $('<tr></tr>');
	             	var $th_yychd1 = $("<th>筹划点1</th>");
	             	var $td_yychd1 = $("<td>"+content[i].grsd_chd1+"</td>");
	             	
	             	$tr_yychd1.append($th_yychd1);
	             	$tr_yychd1.append($td_yychd1);
	             	$table_temp.append($tr_yychd1);
             	}
             	//////////////////////////
             	
             	if(content[i].grsd_tj1!=""&&content[i].grsd_tj1!=null)
             	{
	             	var $tr_yytj1 = $('<tr></tr>');
	             	var $th_yytj1 = $("<th>条件1</th>");
	             	var $td_yytj1 = $("<td>"+content[i].grsd_tj1+"</td>");
	             	
	             	$tr_yytj1.append($th_yytj1);
	             	$tr_yytj1.append($td_yytj1);
	             	$table_temp.append($tr_yytj1);
             	}
             			//////////////////////
             	if(content[i].grsd_chd2!=""&&content[i].grsd_chd2!=null)
             	{
	             	var $tr_yychd2 = $('<tr></tr>');
	             	var $th_yychd2 = $("<th>筹划点2</th>");
	             	var $td_yychd2 = $("<td>"+content[i].grsd_chd2+"</td>");
	             	
	             	$tr_yychd2.append($th_yychd2);
	             	$tr_yychd2.append($td_yychd2);
	             	$table_temp.append($tr_yychd2);
             	}
             		///////////////////////
             	if(content[i].grsd_tj2!=""&&content[i].grsd_tj2!=null)
             	{
	             	var $tr_yytj2 = $('<tr></tr>');
	             	var $th_yytj2 = $("<th>条件2</th>");
	             	var $td_yytj2 = $("<td>"+content[i].grsd_tj2+"</td>");
	             	
	             	$tr_yytj2.append($th_yytj2);
	             	$tr_yytj2.append($td_yytj2);
	             	$table_temp.append($tr_yytj2);
             	}
             			///////////////////
             	if(content[i].grsd_chd3!=""&&content[i].grsd_chd3!=null)
             	{
	             	var $tr_yychd3 = $('<tr></tr>');
	             	var $th_yychd3 = $("<th>筹划点3</th>");
	             	var $td_yychd3 = $("<td>"+content[i].grsd_chd3+"</td>");
	             	
	             	$tr_yychd3.append($th_yychd3);
	             	$tr_yychd3.append($td_yychd3);
	             	$table_temp.append($tr_yychd3);
             	}
             			///////////////////
             	
             		
             		///////////////////
             	if(content[i].grsd_tj3!=""&&content[i].grsd_tj3!=null)
             	{
	             	var $tr_yytj3 = $('<tr></tr>');
	             	var $th_yytj3 = $("<th>条件3</th>");
	             	var $td_yytj3 = $("<td>"+content[i].grsd_tj3+"</td>");
	             	
	             	$tr_yytj3.append($th_yytj3);
	             	$tr_yytj3.append($td_yytj3);
	             	$table_temp.append($tr_yytj3);
             	}
             		/////////////////
             	if(content[i].grsd_al!=""&&content[i].grsd_al!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>案例</th>");
	             	var $td_yyal = $("<td>"+content[i].grsd_al+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_al = $('<tr></tr>');
	             	var $th_al_temp = $("<th>案例</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].grsd_al.split(';');
	             	for(var j=0;j<$al.length;j++)
	             	{
	             		var  $tdi_fa = $("<a style='cursor:pointer' class='viewAL' data-toggle='modal' href='#viewAnliModal'>"+$al[j]+"</a></br>");
	             		$td_al_temp.append($tdi_fa);
	             	}
	             	
	             	$tr_al.append($th_al_temp);
	             	$tr_al.append($td_al_temp);
	             	$table_temp.append($tr_al);
             	}
             		///////////////////
             	if(content[i].grsd_wq!=""&&content[i].grsd_wq!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>误区</th>");
	             	var $td_yyal = $("<td>"+content[i].grsd_wq+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             		///////////////////
             	if(content[i].grsd_fx!=""&&content[i].grsd_fx!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>风险应对方案</th>");
	             	var $td_yyal = $("<td>"+content[i].grsd_fx+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             		///////////////////
             	if(content[i].grsd_fg!=""&&content[i].grsd_fg!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_yyal = $("<td>"+content[i].grsd_fg+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].grsd_fg.split(';');
	             	for(var j=0;j<$al.length-1;j++)
	             	{
	             		if($(document).width()<=991)//手机、平板
	            		{
	             			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             		else//电脑
	             		{
	            			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"&nbsp;&nbsp;&nbsp;&nbsp;" +
	            					"<a href='../../DownloadFileServlet?filename="+servletpath+$al[j]+"'>查看全文</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             	}
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_al_temp);
	             	$table_temp.append($tr_yyal);
             	}
             	//////////////////////个人所得税结束///////////////////////
             	
             	////////////
             	if(content[i].fc_chd1!=""&&content[i].fc_chd1!=null||
             			content[i].fc_tj1!=""&&content[i].fc_tj1!=null||
             			content[i].fc_chd2!=""&&content[i].fc_chd2!=null||
             			content[i].fc_tj2!=""&&content[i].fc_tj2!=null||
             			content[i].fc_chd3!=""&&content[i].fc_chd3!=null||
             			content[i].fc_tj3!=""&&content[i].fc_tj3!=null||
             			content[i].fc_al!=""&&content[i].fc_al!=null||
             			content[i].fc_wq!=""&&content[i].fc_wq!=null||
             			content[i].fc_fx!=""&&content[i].fc_fx!=null||
             			content[i].fc_fg!=""&&content[i].fc_fg!=null)
             	{
	             	var $s1h = $('<tr></tr>');
	             	var $s1d = $('<th colspan="2" class="afterTitle">房产税</th>');
	             	$s1h.append($s1d);
	             	$table_temp.append($s1h);
             	}
             			/////////////////////
             	if(content[i].fc_chd1!=""&&content[i].fc_chd1!=null)
             	{
	             	var $tr_yychd1 = $('<tr></tr>');
	             	var $th_yychd1 = $("<th>筹划点1</th>");
	             	var $td_yychd1 = $("<td>"+content[i].fc_chd1+"</td>");
	             	
	             	$tr_yychd1.append($th_yychd1);
	             	$tr_yychd1.append($td_yychd1);
	             	$table_temp.append($tr_yychd1);
             	}
             	//////////////
             	if(content[i].fc_tj1!=""&&content[i].fc_tj1!=null)
             	{
	             	var $tr_yytj1 = $('<tr></tr>');
	             	var $th_yytj1 = $("<th>条件1</th>");
	             	var $td_yytj1 = $("<td>"+content[i].fc_tj1+"</td>");
	             	
	             	$tr_yytj1.append($th_yytj1);
	             	$tr_yytj1.append($td_yytj1);
	             	$table_temp.append($tr_yytj1);
             	}
             			//////////////////////
             	if(content[i].fc_chd2!=""&&content[i].fc_chd2!=null)
             	{
	             	var $tr_yychd2 = $('<tr></tr>');
	             	var $th_yychd2 = $("<th>筹划点2</th>");
	             	var $td_yychd2 = $("<td>"+content[i].fc_chd2+"</td>");
	             	
	             	$tr_yychd2.append($th_yychd2);
	             	$tr_yychd2.append($td_yychd2);
	             	$table_temp.append($tr_yychd2);
             	}
             		///////////////////////
             	if(content[i].fc_tj2!=""&&content[i].fc_tj2!=null)
             	{
	             	var $tr_yytj2 = $('<tr></tr>');
	             	var $th_yytj2 = $("<th>条件2</th>");
	             	var $td_yytj2 = $("<td>"+content[i].fc_tj2+"</td>");
	             	
	             	$tr_yytj2.append($th_yytj2);
	             	$tr_yytj2.append($td_yytj2);
	             	$table_temp.append($tr_yytj2);
             	}
             			///////////////////
             	if(content[i].fc_chd3!=""&&content[i].fc_chd3!=null)
             	{
	             	var $tr_yychd3 = $('<tr></tr>');
	             	var $th_yychd3 = $("<th>筹划点3</th>");
	             	var $td_yychd3 = $("<td>"+content[i].fc_chd3+"</td>");
	             	
	             	$tr_yychd3.append($th_yychd3);
	             	$tr_yychd3.append($td_yychd3);
	             	$table_temp.append($tr_yychd3);
             	}
             			///////////////////
             	
             		
             		///////////////////
             	if(content[i].fc_tj3!=""&&content[i].fc_tj3!=null)
             	{
	             	var $tr_yytj3 = $('<tr></tr>');
	             	var $th_yytj3 = $("<th>条件3</th>");
	             	var $td_yytj3 = $("<td>"+content[i].fc_tj3+"</td>");
	             	
	             	$tr_yytj3.append($th_yytj3);
	             	$tr_yytj3.append($td_yytj3);
	             	$table_temp.append($tr_yytj3);
             	}
             		/////////////////
             	if(content[i].fc_al!=""&&content[i].fc_al!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>案例</th>");
	             	var $td_yyal = $("<td>"+content[i].fc_al+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_al = $('<tr></tr>');
	             	var $th_al_temp = $("<th>案例</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].fc_al.split(';');
	             	for(var j=0;j<$al.length;j++)
	             	{
	             		var  $tdi_fa = $("<a style='cursor:pointer' class='viewAL' data-toggle='modal' href='#viewAnliModal'>"+$al[j]+"</a></br>");
	             		$td_al_temp.append($tdi_fa);
	             	}
	             	
	             	$tr_al.append($th_al_temp);
	             	$tr_al.append($td_al_temp);
	             	$table_temp.append($tr_al);
             	}
             		///////////////////
             	if(content[i].fc_wq!=""&&content[i].fc_wq!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>误区</th>");
	             	var $td_yyal = $("<td>"+content[i].fc_wq+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             	
             		///////////////////
             	if(content[i].fc_fx!=""&&content[i].fc_fx!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>风险应对方案</th>");
	             	var $td_yyal = $("<td>"+content[i].fc_fx+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             		///////////////////
             	if(content[i].fc_fg!=""&&content[i].fc_fg!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_yyal = $("<td>"+content[i].fc_fg+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].fc_fg.split(';');
	             	for(var j=0;j<$al.length-1;j++)
	             	{
	             		if($(document).width()<=991)//手机、平板
	            		{
	             			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             		else//电脑
	             		{
	            			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"&nbsp;&nbsp;&nbsp;&nbsp;" +
	            					"<a href='../../DownloadFileServlet?filename="+servletpath+$al[j]+"'>查看全文</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             	}
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_al_temp);
	             	$table_temp.append($tr_yyal);
             	}
             	////////////////////////房产税结束/////////////////////////
             	
//////////////1//////
             	
             	if(content[i].q_chd1!=""&&content[i].q_chd1!=null||
             			content[i].q_tj1!=""&&content[i].q_tj1!=null||
             			content[i].q_chd2!=""&&content[i].q_chd2!=null||
             			content[i].q_tj2!=""&&content[i].q_tj2!=null||
             			content[i].q_chd3!=""&&content[i].q_chd3!=null||
             			content[i].q_tj3!=""&&content[i].q_tj3!=null||
             			content[i].q_al!=""&&content[i].q_al!=null||
             			content[i].q_wq!=""&&content[i].q_wq!=null||
             			content[i].q_fx!=""&&content[i].q_fx!=null||
             			content[i].q_fg!=""&&content[i].q_fg!=null)
             	{
             	var $s1h = $('<tr></tr>');
             	var $s1d = $('<th colspan="2" class="afterTitle">契税</th>');
             	$s1h.append($s1d);
             	$table_temp.append($s1h);
             	}
             			/////////////////////
             	if(content[i].q_chd1!=""&&content[i].q_chd1!=null)
             	{
	             	var $tr_yychd1 = $('<tr></tr>');
	             	var $th_yychd1 = $("<th>筹划点1</th>");
	             	var $td_yychd1 = $("<td>"+content[i].q_chd1+"</td>");
	             	
	             	$tr_yychd1.append($th_yychd1);
	             	$tr_yychd1.append($td_yychd1);
	             	$table_temp.append($tr_yychd1);
             	}
             	/////////////////////////////
             	
             	if(content[i].q_tj1!=""&&content[i].q_tj1!=null)
             	{
	             	var $tr_yytj1 = $('<tr></tr>');
	             	var $th_yytj1 = $("<th>条件1</th>");
	             	var $td_yytj1 = $("<td>"+content[i].q_tj1+"</td>");
	             	
	             	$tr_yytj1.append($th_yytj1);
	             	$tr_yytj1.append($td_yytj1);
	             	$table_temp.append($tr_yytj1);
             	}
             			//////////////////////
             	if(content[i].q_chd2!=""&&content[i].q_chd2!=null)
             	{
	             	var $tr_yychd2 = $('<tr></tr>');
	             	var $th_yychd2 = $("<th>筹划点2</th>");
	             	var $td_yychd2 = $("<td>"+content[i].q_chd2+"</td>");
	             	
	             	$tr_yychd2.append($th_yychd2);
	             	$tr_yychd2.append($td_yychd2);
	             	$table_temp.append($tr_yychd2);
             	}
             		///////////////////////
             	if(content[i].q_tj2!=""&&content[i].q_tj2!=null)
             	{
	             	var $tr_yytj2 = $('<tr></tr>');
	             	var $th_yytj2 = $("<th>条件2</th>");
	             	var $td_yytj2 = $("<td>"+content[i].q_tj2+"</td>");
	             	
	             	$tr_yytj2.append($th_yytj2);
	             	$tr_yytj2.append($td_yytj2);
	             	$table_temp.append($tr_yytj2);
             	}
             			///////////////////
             	if(content[i].q_chd3!=""&&content[i].q_chd3!=null)
             	{
	             	var $tr_yychd3 = $('<tr></tr>');
	             	var $th_yychd3 = $("<th>筹划点3</th>");
	             	var $td_yychd3 = $("<td>"+content[i].q_chd3+"</td>");
	             	
	             	$tr_yychd3.append($th_yychd3);
	             	$tr_yychd3.append($td_yychd3);
	             	$table_temp.append($tr_yychd3);
             	}
             			///////////////////
             	
             		
             		///////////////////
             	if(content[i].q_tj3!=""&&content[i].q_tj3!=null)
             	{
	             	var $tr_yytj3 = $('<tr></tr>');
	             	var $th_yytj3 = $("<th>条件3</th>");
	             	var $td_yytj3 = $("<td>"+content[i].q_tj3+"</td>");
	             	
	             	$tr_yytj3.append($th_yytj3);
	             	$tr_yytj3.append($td_yytj3);
	             	$table_temp.append($tr_yytj3);
             	}
             		/////////////////
             	if(content[i].q_al!=""&&content[i].q_al!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>案例</th>");
	             	var $td_yyal = $("<td>"+content[i].q_al+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_al = $('<tr></tr>');
	             	var $th_al_temp = $("<th>案例</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].q_al.split(';');
	             	for(var j=0;j<$al.length;j++)
	             	{
	             		var  $tdi_fa = $("<a style='cursor:pointer' class='viewAL' data-toggle='modal' href='#viewAnliModal'>"+$al[j]+"</a></br>");
	             		$td_al_temp.append($tdi_fa);
	             	}
	             	
	             	$tr_al.append($th_al_temp);
	             	$tr_al.append($td_al_temp);
	             	$table_temp.append($tr_al);
             	}
             		///////////////////
             	if(content[i].q_wq!=""&&content[i].q_wq!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>误区</th>");
	             	var $td_yyal = $("<td>"+content[i].q_wq+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             		///////////////////
             	if(content[i].q_fx!=""&&content[i].q_fx!=null)
             	{
             	var $tr_yyal = $('<tr></tr>');
             	var $th_yyal = $("<th>风险应对方案</th>");
             	var $td_yyal = $("<td>"+content[i].q_fx+"</td>");
             	
             	$tr_yyal.append($th_yyal);
             	$tr_yyal.append($td_yyal);
             	$table_temp.append($tr_yyal);
             	}
             		///////////////////
             	if(content[i].q_fg!=""&&content[i].q_fg!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_yyal = $("<td>"+content[i].q_fg+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].q_fg.split(';');
	             	for(var j=0;j<$al.length-1;j++)
	             	{
	             		if($(document).width()<=991)//手机、平板
	            		{
	             			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             		else//电脑
	             		{
	            			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"&nbsp;&nbsp;&nbsp;&nbsp;" +
	            					"<a href='../../DownloadFileServlet?filename="+servletpath+$al[j]+"'>查看全文</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             	}
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_al_temp);
	             	$table_temp.append($tr_yyal);
             	}
             	/////////////////////////契税结束//////////2////////////////
             	
             	
             	////////////
             	if(content[i].tdsy_chd1!=""&&content[i].tdsy_chd1!=null||
             			content[i].tdsy_tj1!=""&&content[i].tdsy_tj1!=null||
             			content[i].tdsy_chd2!=""&&content[i].tdsy_chd2!=null||
             			content[i].tdsy_tj2!=""&&content[i].tdsy_tj2!=null||
             			content[i].tdsy_chd3!=""&&content[i].tdsy_chd3!=null||
             			content[i].tdsy_tj3!=""&&content[i].tdsy_tj3!=null||
             			content[i].tdsy_al!=""&&content[i].tdsy_al!=null||
             			content[i].tdsy_wq!=""&&content[i].tdsy_wq!=null||
             			content[i].tdsy_fx!=""&&content[i].tdsy_fx!=null||
             			content[i].tdsy_fg!=""&&content[i].tdsy_fg!=null)
             	{
	             	var $s1h = $('<tr></tr>');
	             	var $s1d = $('<th colspan="2" class="afterTitle">土地使用税</th>');
	             	$s1h.append($s1d);
	             	$table_temp.append($s1h);
             	}
             			/////////////////////
             	if(content[i].tdsy_chd1!=""&&content[i].tdsy_chd1!=null)
             	{
	             	var $tr_yychd1 = $('<tr></tr>');
	             	var $th_yychd1 = $("<th>筹划点1</th>");
	             	var $td_yychd1 = $("<td>"+content[i].tdsy_chd1+"</td>");
	             	
	             	$tr_yychd1.append($th_yychd1);
	             	$tr_yychd1.append($td_yychd1);
	             	$table_temp.append($tr_yychd1);
             	}
             	//////////////////
             	if(content[i].tdsy_tj1!=""&&content[i].tdsy_tj1!=null)
             	{
	             	var $tr_yytj1 = $('<tr></tr>');
	             	var $th_yytj1 = $("<th>条件1</th>");
	             	var $td_yytj1 = $("<td>"+content[i].tdsy_tj1+"</td>");
	             	
	             	$tr_yytj1.append($th_yytj1);
	             	$tr_yytj1.append($td_yytj1);
	             	$table_temp.append($tr_yytj1);
             	}
             			//////////////////////
             	if(content[i].tdsy_chd2!=""&&content[i].tdsy_chd2!=null)
             	{
	             	var $tr_yychd2 = $('<tr></tr>');
	             	var $th_yychd2 = $("<th>筹划点2</th>");
	             	var $td_yychd2 = $("<td>"+content[i].tdsy_chd2+"</td>");
	             	
	             	$tr_yychd2.append($th_yychd2);
	             	$tr_yychd2.append($td_yychd2);
	             	$table_temp.append($tr_yychd2);
             	}
             	
             		///////////////////////
             	if(content[i].tdsy_tj2!=""&&content[i].tdsy_tj2!=null)
             	{
	             	var $tr_yytj2 = $('<tr></tr>');
	             	var $th_yytj2 = $("<th>条件2</th>");
	             	var $td_yytj2 = $("<td>"+content[i].tdsy_tj2+"</td>");
	             	
	             	$tr_yytj2.append($th_yytj2);
	             	$tr_yytj2.append($td_yytj2);
	             	$table_temp.append($tr_yytj2);
             	}
             			///////////////////
             	if(content[i].tdsy_chd3!=""&&content[i].tdsy_chd3!=null)
             	{
	             	var $tr_yychd3 = $('<tr></tr>');
	             	var $th_yychd3 = $("<th>筹划点3</th>");
	             	var $td_yychd3 = $("<td>"+content[i].tdsy_chd3+"</td>");
	             	
	             	$tr_yychd3.append($th_yychd3);
	             	$tr_yychd3.append($td_yychd3);
	             	$table_temp.append($tr_yychd3);
             	}
             			///////////////////
             	
             		
             		///////////////////
             	if(content[i].tdsy_tj3!=""&&content[i].tdsy_tj3!=null)
             	{
	             	var $tr_yytj3 = $('<tr></tr>');
	             	var $th_yytj3 = $("<th>条件3</th>");
	             	var $td_yytj3 = $("<td>"+content[i].tdsy_tj3+"</td>");
	             	
	             	$tr_yytj3.append($th_yytj3);
	             	$tr_yytj3.append($td_yytj3);
	             	$table_temp.append($tr_yytj3);
             	}
             		/////////////////
             	if(content[i].tdsy_al!=""&&content[i].tdsy_al!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>案例</th>");
	             	var $td_yyal = $("<td>"+content[i].tdsy_al+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_al = $('<tr></tr>');
	             	var $th_al_temp = $("<th>案例</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].tdsy_al.split(';');
	             	for(var j=0;j<$al.length;j++)
	             	{
	             		var  $tdi_fa = $("<a style='cursor:pointer' class='viewAL' data-toggle='modal' href='#viewAnliModal'>"+$al[j]+"</a></br>");
	             		$td_al_temp.append($tdi_fa);
	             	}
	             	
	             	$tr_al.append($th_al_temp);
	             	$tr_al.append($td_al_temp);
	             	$table_temp.append($tr_al);
             	}
             		///////////////////
             	if(content[i].tdsy_wq!=""&&content[i].tdsy_wq!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>误区</th>");
	             	var $td_yyal = $("<td>"+content[i].tdsy_wq+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             		///////////////////
             	if(content[i].tdsy_fx!=""&&content[i].tdsy_fx!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>风险应对方案</th>");
	             	var $td_yyal = $("<td>"+content[i].tdsy_fx+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             		///////////////////
             	if(content[i].tdsy_fg!=""&&content[i].tdsy_fg!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_yyal = $("<td>"+content[i].tdsy_fg+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].tdsy_fg.split(';');
	             	for(var j=0;j<$al.length-1;j++)
	             	{
	             		if($(document).width()<=991)//手机、平板
	            		{
	             			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             		else//电脑
	             		{
	            			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"&nbsp;&nbsp;&nbsp;&nbsp;" +
	            					"<a href='../../DownloadFileServlet?filename="+servletpath+$al[j]+"'>查看全文</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             	}
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_al_temp);
	             	$table_temp.append($tr_yyal);
             	}
             	///////////////////////土地使用税/////////////////////////////////

             	///////9/////
             	if(content[i].yh_chd1!=""&&content[i].yh_chd1!=null||
             			content[i].yh_tj1!=""&&content[i].yh_tj1!=null||
             			content[i].yh_chd2!=""&&content[i].yh_chd2!=null||
             			content[i].yh_tj2!=""&&content[i].yh_tj2!=null||
             			content[i].yh_chd3!=""&&content[i].yh_chd3!=null||
             			content[i].yh_tj3!=""&&content[i].yh_tj3!=null||
             			content[i].yh_al!=""&&content[i].yh_al!=null||
             			content[i].yh_wq!=""&&content[i].yh_wq!=null||
             			content[i].yh_fx!=""&&content[i].yh_fx!=null||
             			content[i].yh_fg!=""&&content[i].yh_fg!=null)
             	{
	             	var $s1h = $('<tr></tr>');
	             	var $s1d = $('<th colspan="2" class="afterTitle">印花税</th>');
	             	$s1h.append($s1d);
	             	$table_temp.append($s1h);
             	}
             			/////////////////////
             	if(content[i].yh_chd1!=""&&content[i].yh_chd1!=null)
             	{
	             	var $tr_yychd1 = $('<tr></tr>');
	             	var $th_yychd1 = $("<th>筹划点1</th>");
	             	var $td_yychd1 = $("<td>"+content[i].yh_chd1+"</td>");
	             	
	             	$tr_yychd1.append($th_yychd1);
	             	$tr_yychd1.append($td_yychd1);
	             	$table_temp.append($tr_yychd1);
             	}
             	/////////////////////////
             	if(content[i].yh_tj1!=""&&content[i].yh_tj1!=null)
             	{
	             	var $tr_yytj1 = $('<tr></tr>');
	             	var $th_yytj1 = $("<th>条件1</th>");
	             	var $td_yytj1 = $("<td>"+content[i].yh_tj1+"</td>");
	             	
	             	$tr_yytj1.append($th_yytj1);
	             	$tr_yytj1.append($td_yytj1);
	             	$table_temp.append($tr_yytj1);
             	}
             			//////////////////////
             	if(content[i].yh_chd2!=""&&content[i].yh_chd2!=null)
             	{
	             	var $tr_yychd2 = $('<tr></tr>');
	             	var $th_yychd2 = $("<th>筹划点2</th>");
	             	var $td_yychd2 = $("<td>"+content[i].yh_chd2+"</td>");
	             	
	             	$tr_yychd2.append($th_yychd2);
	             	$tr_yychd2.append($td_yychd2);
	             	$table_temp.append($tr_yychd2);
             	}
             		///////////////////////
             	if(content[i].yh_tj2!=""&&content[i].yh_tj2!=null)
             	{
	             	var $tr_yytj2 = $('<tr></tr>');
	             	var $th_yytj2 = $("<th>条件2</th>");
	             	var $td_yytj2 = $("<td>"+content[i].yh_tj2+"</td>");
	             	
	             	$tr_yytj2.append($th_yytj2);
	             	$tr_yytj2.append($td_yytj2);
	             	$table_temp.append($tr_yytj2);
             	}
             			///////////////////
             	if(content[i].yh_chd3!=""&&content[i].yh_chd3!=null)
             	{
	             	var $tr_yychd3 = $('<tr></tr>');
	             	var $th_yychd3 = $("<th>筹划点3</th>");
	             	var $td_yychd3 = $("<td>"+content[i].yh_chd3+"</td>");
	             	
	             	$tr_yychd3.append($th_yychd3);
	             	$tr_yychd3.append($td_yychd3);
	             	$table_temp.append($tr_yychd3);
             	}
             			///////////////////
             	
             		
             		///////////////////
             	if(content[i].yh_tj3!=""&&content[i].yh_tj3!=null)
             	{
	             	var $tr_yytj3 = $('<tr></tr>');
	             	var $th_yytj3 = $("<th>条件3</th>");
	             	var $td_yytj3 = $("<td>"+content[i].yh_tj3+"</td>");
	             	
	             	$tr_yytj3.append($th_yytj3);
	             	$tr_yytj3.append($td_yytj3);
	             	$table_temp.append($tr_yytj3);
             	}
             		/////////////////
             	if(content[i].yh_al!=""&&content[i].yh_al!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>案例</th>");
	             	var $td_yyal = $("<td>"+content[i].yh_al+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_al = $('<tr></tr>');
	             	var $th_al_temp = $("<th>案例</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].yh_al.split(';');
	             	for(var j=0;j<$al.length;j++)
	             	{
	             		var  $tdi_fa = $("<a style='cursor:pointer' class='viewAL' data-toggle='modal' href='#viewAnliModal'>"+$al[j]+"</a></br>");
	             		$td_al_temp.append($tdi_fa);
	             	}
	             	
	             	
	             	$tr_al.append($th_al_temp);
	             	$tr_al.append($td_al_temp);
	             	$table_temp.append($tr_al);
             	}
             		///////////////////
             	if(content[i].yh_wq!=""&&content[i].yh_wq!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>误区</th>");
	             	var $td_yyal = $("<td>"+content[i].yh_wq+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             		///////////////////
             	if(content[i].yh_fx!=""&&content[i].yh_fx!=null)
             	{
	             	var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>风险应对方案</th>");
	             	var $td_yyal = $("<td>"+content[i].yh_fx+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);
             	}
             		///////////////////
             	if(content[i].yh_fg!=""&&content[i].yh_fg!=null)
             	{
	             	/*var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_yyal = $("<td>"+content[i].yh_fg+"</td>");
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_yyal);
	             	$table_temp.append($tr_yyal);*/
             		var $tr_yyal = $('<tr></tr>');
	             	var $th_yyal = $("<th>法规</th>");
	             	var $td_al_temp = $('<td></td>');
	             	
	             	var $al = content[i].yh_fg.split(';');
	             	for(var j=0;j<$al.length-1;j++)
	             	{
	             		if($(document).width()<=991)//手机、平板
	            		{
	             			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             		else//电脑
	             		{
	            			var  $tdi_fa = $("<a data-target='#fgtwModal' data-toggle='modal' class='viewFgtw' style='cursor:pointer'>"+$al[j].substring(0,$al[j].lastIndexOf("."))+"</a>" +
	            					"&nbsp;&nbsp;&nbsp;&nbsp;" +
	            					"<a href='../../DownloadFileServlet?filename="+servletpath+$al[j]+"'>查看全文</a>" +
	            					"</br>");
	            			$td_al_temp.append($tdi_fa);
	            		}
	             	}
	             	
	             	$tr_yyal.append($th_yyal);
	             	$tr_yyal.append($td_al_temp);
	             	$table_temp.append($tr_yyal);
             	}
             	////////////////////印花税结束/////////////////////////////
             	/////////////////////////////各种税结束///////////////////////////////////
             
             	//////////////////删除按钮///////////////////
             	if(((usertype=="admin")&&(content[i].companyName==companyName)&&(content[i].gonghao==zh))||((usertype=="superadmin")&&(content[i].companyName==companyName)))
         		{
	             	var $tr_del = $('<tr></tr>');
	             	//注意：这里的delButton仅作为过滤选择器的过滤条件，不可以用该值来操作该按钮
	             	var $td_del_temp = $("<td colspan='2' class='text-center delButton'>" +
	             			"<a " +
	             			" class='btn btn-warning editModalButtonJs col-xs-5 col-sm-5 col-md-5 col-lg-5' " +
	             			"href='../../FindJcsAndTaxByIdServlet?id="+content[i].domainKey+"'>" +
	             				"<span class='glyphicon glyphicon-edit'></span>&nbsp;&nbsp;修改数据" +
	             			"</a>"+
	             			"<a data-toggle='modal' data-target='#confirmModalxxjcsjl"+i+"'" +
	             			" class='btn btn-danger delModalButtonJs col-xs-5 col-xs-offset-2 col-sm-5 col-sm-offset-2 col-md-5 col-md-offset-2 col-lg-5 col-lg-offset-2' rel='../../DeleteJcsServlet?id="+content[i].domainKey+"'>" +
	             				"<span class='glyphicon glyphicon-trash'></span>&nbsp;&nbsp;删除数据" +
	             			"</a></td>");
	             	
	             	$tr_del.append($td_del_temp);
	             	$table_temp.append($tr_del);
         		}
             	/////////////////////////////////////////////
             	
             	$(".allJcs_table_body").append($table_temp);
             	
             	////////////////////////////////
             	//////////////////动态生成模态框开始////////////////////////
             	var $modal = $("<div id='confirmModalxxjcsjl"+i+"' data-backdrop='static' class='modal fade' id='delModal' tabindex='-1' role='dialog' aria-labelledby='delModalLabel' aria-hidden='true'></div>");
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
                             	if(json.isDeleteJcsSuccess)
                         		{
                             		alert("删除成功！！！");
                             		$('.modal-backdrop').remove();
                             		loadJcsByJilian(0,1,true, yijicd, erji,zh,companyName,usertype,servletpath);
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
                    totalPages: getPageNumber(json.sum,1),
                    bootstrapMajorVersion:3,
                    onPageClicked: function(e,originalEvent,type,page){
                    	loadJcsByJilian(1*(page-1),1,false, yijicd, erji,zh,companyName,usertype,servletpath);
                    	
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

//查看法规条文开始
function viewFgtwContent(){
	$("#viewFgtwModalBody").empty();
    $("#viewFgtwModalBody").html("<p style='text-align: center;width:100%;'><img src='../../imgs/load.jpg'/></p>");
    
    //var firstAvalue = $(this).prev().text();//当前节点的上一个兄弟节点
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

//显示更多功能
function checkstring(){
	var tdnumber=$('td').size();
	$('td').each(function(){
//		alert($(this).text());
		
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
