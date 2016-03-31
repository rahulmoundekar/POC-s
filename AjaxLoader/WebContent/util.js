

function clear_unsaved_services(uname)
{
	$.ajax({
		type:"Post",
		url:"clear_unsaved_service",
		cache:false,
		data:{uname:uname},
		success:
			function(data)
			{
			
			}
	});
}

function clear_unsaved_texts(uname,table_name,field_name)
{
	$.ajax({
		type:"Post",
		url:"clear_unsaved_text",
		cache:false,
		data:{uname:uname,table_name:table_name,field_name:field_name},
		success:
			function(data)
			{
			
			}
	});
}

function authority_check_fun(authentication_check_string)
{
		if(authentication_check_string=="null" )
		{
		   window.location.href="ReLogin.jsp";
		}
		else if(authentication_check_string[0]=='N')
		{
			 window.location.href="authoritydeclined.jsp";
		}
}

function check_webpage_access_authority(user_name,pagename)
{
	
	if(user_name=='null')
	{
		 window.location.href="ReLogin.jsp";
	}	
	else
	{	
		$.ajax({
			
			type:"Post",
			url:"webPage_access_check_servlet",
			data:{User_name:user_name,pagename:pagename},
			cache:false,
			success:
				function(data)
				{
					if(data=="N")
					{
					   window.location.href="authoritydeclined.jsp";
					}
				}
		});
	}
}

function waiting_effect_on()
{
/*	$("#loadingImage").show();
	
	$("body").css("opacity",".40");
	$(".CompStylecal").css("opacity",".40");*/
	$('#waiting_effect_div').reveal({ 
		 animation: 'fade',                   
		animationspeed: 1,                      
		closeonbackgroundclick: false,             
		dismissmodalclass: 'close'   
	});
}

function user_login(name)
{
	$.ajax({ type: "Post", url: "Login_Check",
	data:{name:name},
	cache:false,
	success : function(data){
	
			if(data=="out")
			{
				window.location.href = 'logout.jsp';
			}
		}
	});
}

function check(name)
{
	setInterval(function(){ user_login(name); },3000);
}



function waiting_effect_off()
{
	/*$("body").css("opacity","20");
	$("#loadingImage").hide();
	$(".CompStylecal").css("opacity","20");*/
	$('#waiting_effect_div').trigger('reveal:close');
}

function running_clock(txtBox_id)
{
	var int=self.setInterval(function(){clock(txtBox_id);},1000);
}	

function clock(txtBox_id)
{
	var d=new Date();
	dateFormat.masks.hammerTime = 'yyyy-mm-dd hh:MM:ss TT';
	d=d.format("hammerTime");
	document.getElementById(txtBox_id).value=d;
}


function make_table_elements_Readonly(tab_id)
{
	var tab_container=document.getElementById(tab_id);
	var input_fields=new Array();
	input_fields=tab_container.getElementsByTagName('input');
	for(var i=0;i<input_fields.length;i++)
	{
		var element_id=input_fields[i].id;
		if(element_id.indexOf('delivdate')!=-1 || element_id.indexOf('calendarr')!=-1)
		{
			document.getElementById(element_id).disabled=true;
		}	
		else
		{	
			if(input_fields[i].type!='button')
			{	
				if(input_fields[i].type=='text')
				{
					document.getElementById(element_id).readOnly=true;
				}
			}
		}	
	}	
}

function remove_table_elements_Readonly(tab_id)
{
	var tab_container=document.getElementById(tab_id);
	var input_fields=new Array();
	input_fields=tab_container.getElementsByTagName('input');
	
	for(var i=0;i<input_fields.length;i++)
	{
		var element_id=input_fields[i].id;
		if(element_id.indexOf('delivdate')!=-1 || element_id.indexOf('calendarr')!=-1)
		{
			document.getElementById(element_id).disabled=false;
		}	
		else if(element_id.indexOf('Plant')==-1 && element_id.indexOf('plant')==-1)
		{	
			document.getElementById(element_id).readOnly=false;
		}	
	}	
}

function value_updation_check(id)
{
	if(document.getElementById(id).value!=document.getElementById(id).defaultValue)
	{
		return true;
	}	
	else 
	{	
		return false;
	}
}

function redirect_home()
{
	
	$.ajax({ type: "Post", url: "Check_User",  
		data:{flag:2,name:$("#Uname").val()},
		cache:false,
		success : function(data){
				if(data=="Admin")
				{
					window.location.href="Compliance_Home_Page.jsp";
				}
				else if(data=="User")
				{
					window.location.href="calenderevent.jsp";
				}
				else
				{
					window.location.href="adminhomepage.jsp";
				}	
			}	
	}
	);	
}


function set_profile_color(user_name)
{
	var img_index;
	$.ajax({
		type:"Post",
		url:"get_theme_color",
		cache:false,
		data:{user_name:user_name},
		success:
			function(data)
			{
				img_index=data;
				$('#mainmenu').css('background', 'url(images/midbg'+img_index+'.png) top left repeat-x');
				$('#homemenu').css('background', 'url(images/midbg'+img_index+'.png) top left repeat-x');
				$('#homemenu1').css('background', 'url(images/midbg'+img_index+'.png) top left repeat-x');
				$('#topmenu').css('background', 'url(images/topbg'+img_index+'.png) top left repeat-x');
				$('#bottommenu').css('background', 'url(images/topbg'+img_index+'.png) top left repeat-x');
				$('.btn_submit input').css('background', 'url(images/btn'+img_index+'.png) top left repeat-x');
				$('#right').css('background', 'url(images/midbg'+img_index+'.png) top left repeat-x');
				$('#content').css('background', 'url(images/midbg'+img_index+'.png) top left repeat-x');
				
				$('.serchcontent').css('background', 'url(images/midbg'+img_index+'.png) top left repeat-x');
				$('.searchStyle').css('background', 'url(images/midbg'+img_index+'.png) top left repeat-x');
				$('.searchStyle1').css('background', 'url(images/midbg'+img_index+'.png) top left repeat-x');
				$('.headerStyle').css('background', 'url(images/topbg'+img_index+'.png) top left repeat-x');
				$('#hide_div').css('background', 'url(images/midbg'+img_index+'.png) top left repeat-x');
				
			}
	});
	
	
}


function verify_plant_authority(selected_plant_id)
{
	var selected_plant=$("#"+selected_plant_id).val();
	if(plantList.indexOf(selected_plant)==-1)
	{
		msg_box('You do not have authority to create PR for Plant \''+selected_plant+'\'.','A',function(){
			$("#"+selected_plant_id).focus();
		});
		$("#"+selected_plant_id).val("");
		
		return false;
	}	
	else
	{
		return true;
	}	
}

function clear_table_rows(tab_id)
{
	 var table = document.getElementById(tab_id);
		
		for(var i = table.rows.length - 1; i > 0; i--)
		{
		    table.deleteRow(i);
		}
}

function Category_data()
{
	if($("#Category").val()!="Select Category")
	{
		$.ajax({ 
			type: "Post", 
			url: "Category_Data",
			data:{Category:$("#Category").val(),Categorytype:1},
			cache:false,
			success : 
				function(data)
				{
					if(data!="]")
					{
						remove_selectBox_options('Third_Category','Select Third Level Category');
						remove_selectBox_options('Sub_Category','Select sub Category');
						
						var objArray = JSON.parse(data);
						var options;
						$.each(objArray,function(index, jsonObject) {
							options += '<option>'+ jsonObject.Sub_Category_Name + '</option>';
						});
						$("#Sub_Category").append(options);
					}
		
				}
		});
	}
}

function Sub_Category_data()
{
	if($("#Sub_Category").val()!="Select Sub-Category")
	{
		
		$.ajax({ 
			type: "Post",
			url: "Category_Data",
			data:{Sub_Category:$("#Sub_Category").val(),Categorytype:2},
			cache:false,
			success :
				function(data)
				{
					if(data!="]")
					{
						remove_selectBox_options('Third_Category','Select Third Level Category');
						var objArray = JSON.parse(data);
						var options;
						$.each(objArray,function(index, jsonObject) {
							options += '<option>'+ jsonObject.TL_Category_Name + '</option>';
						});
						$("#Third_Category").append(options);
					}
					
				}
		});
	}

}


function hide_left_panel(panel_id)
{
	$("#"+panel_id).hide();
	$("#right").css("width","95%");
	
	//$('img[src="images/Backward.png"]').attr('src', "images/Forward.png");
}

function show_left_panel(panel_id)
{
	$("#"+panel_id).show();
	$("#right").css("width","74%");
	
	//$('img[src="images/Backward.png"]').attr('src', "images/Forward.png");
}