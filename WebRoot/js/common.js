function updatePassword(id,newPass) 
{
    $.ajax({
            url: "../../EditPassServlet",
            data: {
            	id:id,
            	newPass:newPass
            },
            type: "post",
            dataType : "json",
            success: function( json ) {
            	if(json.isUpdatePassSuccess)
        		{
            		alert("修改密码成功！！！");
        		}
            	else{
            		alert("修改密码失败！！！");
            	}
            },
            error: function( xhr, status ) {
            	alert("error");
            },
            complete: function( xhr, status ) {

            }
        });
}

function pwd(pwd){
	
	return hex_md5("shangshanruoshui"+hex_md5(pwd)+1);
}