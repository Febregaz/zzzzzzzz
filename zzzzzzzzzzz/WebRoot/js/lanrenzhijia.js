var str1="all",str2="all";
$(document).ready(function(){
	//条件1	
	get_data();//调用ajax函数获取json数据
	$("#select1 dd").click(function () {
		$(this).addClass("selected").siblings().removeClass("selected");
		$("#key1").val($(this).text());//add
		str1=$(this).text();
		if(str1=="全部")
			str1="all";
		if ($(this).hasClass("select-all")) {
			$("#selectA").remove();
		} else {
			var copyThisA = $(this).clone();
			if ($("#selectA").length > 0) {
				$("#selectA a").html($(this).text());
			} else {
				$(".select-result dl").append(copyThisA.attr("id", "selectA"));
			}
		}
		get_data();//调用ajax函数获取json数据
	});
	
	//条件二
	$("#select2 dd").click(function () {
		$(this).addClass("selected").siblings().removeClass("selected");
		$("#key2").val($(this).text());//add
		str2=$(this).text();
		if(str2=="基础")
			str2="1";
		else if(str2=="案例")
			str2="2";
		else
			str2="all";
		if ($(this).hasClass("select-all")) {
			$("#selectB").remove();
		} else {
			var copyThisB = $(this).clone();
			if ($("#selectB").length > 0) {
				$("#selectB a").html($(this).text());
			} else {
				$(".select-result dl").append(copyThisB.attr("id", "selectB"));
			}
		}
		get_data();
	});
	//条件三
	
	
	$("#selectA").live("click", function () {
		$(this).remove();
		$("#select1 .select-all").addClass("selected").siblings().removeClass("selected");
		$("#key1").val("");
		str1="";
		get_data()
	});
	
	$("#selectB").live("click", function () {
		$(this).remove();
		$("#select2 .select-all").addClass("selected").siblings().removeClass("selected");
		$("#key2").val("");
		str2="";
		get_data()
	});
	
	
	
	
	$(".select dd").live("click", function () {
		if ($(".select-result dd").length > 1) {
			$(".select-no").hide();
		} else {
			$(".select-no").show();
		}
	});
	
});
//异步获取到后端传回的数据
function get_data() {  
	var key1=$("#key1").val();
	var key2=$("#key2").val();
	var obj=key1+'|'+key2+'|';
	
	   
    $.ajax({  
        type: "get",  
        cache: false,  
        data: {fe:str1,zero:str2}, 
        async: true,  
        url: "list.action",  
        success: function(data) {  
        	
        
			console.log(data);
			
			var userStr="";
			  for(var i=0; i<data.course.length; i++)  
			  {  
			       
			       userStr+="<div class='index-card-container course-card-container container '>";
			       userStr+=" <a target='_blank' class='course-card' href='enn?pp=" +data.course[i].cid+"'>";
			       userStr+="<div class='course-card-top cart-color orange'>";
			       userStr+="<i class='imv2-war'></i> <span> "+data.course[i].kdirection+"</span></div>";
			       userStr+="<div class='course-card-content'><h3 class='course-card-name'>"+data.course[i].ktitle+"</h3><p >";
			       userStr+=data.course[i].kmessage+"</p>";
			       userStr+="</div></a> <img src='/static/img/index/new/new.png' class='course-cart-new' /><div class='course-card-bk'><img src='http://www.imooc.com/courseimg/s/cover050_s.jpg' /></div></div>";
			      
			  }  
			if(userStr=="")
				 document.getElementById('jsondiv').innerHTML="暂没有你所需要的课程";
			else
				{
				
				 document.getElementById('jsondiv').innerHTML=userStr;
				}
			
				
        }, error: function(data) { 
        }  
    });  
 
} 

function result(){
	
}
