<#include "/PUBLIC/head.ftl"/>
<link rel="stylesheet" href="${base}/resources/css/owl.theme.css" type="text/css"></link>
<link rel="stylesheet" href="${base}/resources/css/owl.carousel.css" type="text/css"></link>
<link rel="stylesheet" href="${base}/resources/css/custom.css" type="text/css"></link>
    <title>请假信息</title>
    <style>
    	.make-leave-options{background-color: white;height: 3rem;text-align: right;padding: 0.7rem 5%;position: fixed;top:2.2rem;right:0;width: 100%;}
    	.make-leave-options button{margin-left: 0.5rem;}
    	.make-leave-agree{border: none;background-color: #3399ff;padding: 0.2rem 0.8rem;border-radius:3px;color:white;font-size: 0.8rem;}
    	.make-leave-agree:ACTIVE {background-color: #235d97;}
    	.make-leave-disagree{border: none;background-color:  #cc0000;padding: 0.2rem 0.8rem;border-radius:3px;color:white;font-size: 0.8rem;}
    	.make-leave-disagree:ACTIVE {background-color: #830e0e;}
    	.call{color:#235d97;}
    </style>
 </head>
 
 <body>
 <div class="page-group">
  <div id="page-student-singleLeaveInfo" class="page">
  <header class="bar bar-nav apptitle">
     <a class="button button-link button-nav pull-left back" style="color: white;" data-transition='slide-out'>
      <span class="icon icon-left" style="font-size:0.7rem;text-indent: 0.5rem;"></span>
    </a> 
     <h1 class="title title-color">请假信息</h1>
    <!-- <span class="icon icon-search" id="icon-search-out" onclick="search()" style="float: right;color: white;font-size: 1rem;line-height: 1.5rem"></span>  -->
    <div class="search-input"><span class="icon icon-search"></span><input id="search" onkeyup="updateItem()" placeholder="请输入科室或姓名" type="text"></div>
    <div class="search-text" onclick="cancel()">取消</div>
  </header>
  	
  <div class="content no-bottom">
  	
  		<div class="make-leave-options">
  			<button class="make-leave-agree" id="agree">同意</button>
  			<button class="make-leave-disagree" id="disagree">拒绝</button>
  		</div>
  	<div class="single-leave" style="display: block;margin-top: 0;padding-top: 2rem;">
  	<!-- 基本信息 -->
  		<div class="baseInfo">
  			<div class="leave-record-title">基本信息</div>
  			<ul class="baseInfo-items">
  				<li class="baseInfo-item row border-bottom">
  					<div class="baseInfo-item-left col-50" style="margin-left: 0;width: 30%;">学号</div>
  					<div class="baseInfo-item-right col-50" style="margin-left: 0;width: 70%;">${studentNumber}</div>
  				</li>
  				<li class="baseInfo-item row border-bottom">
  					<div class="baseInfo-item-left col-50" style="margin-left: 0;width: 30%;">姓名</div>
  					<div class="baseInfo-item-right col-50" style="margin-left: 0;width: 70%;">${realName}</div>
  				</li>
  				<li class="baseInfo-item row border-bottom">
  					<div class="baseInfo-item-left col-50" style="margin-left: 0;width: 30%;">性别</div>
  					<div class="baseInfo-item-right col-50" style="margin-left: 0;width: 70%;">${sex}</div>
  				</li>
  				<li class="baseInfo-item row border-bottom">
  					<div class="baseInfo-item-left col-50" style="margin-left: 0;width: 30%;">班级</div>
  					<div class="baseInfo-item-right col-50" style="margin-left: 0;width: 70%;">${className}</div>
  				</li>
  				<li class="baseInfo-item row border-bottom">
  					<div class="baseInfo-item-left col-50" style="margin-left: 0;width: 30%;">专业</div>
  					<div class="baseInfo-item-right col-50" style="margin-left: 0;width: 70%;">${professional}</div>
  				</li>
  				<li class="baseInfo-item row border-bottom">
  					<div class="baseInfo-item-left col-50" style="margin-left: 0;width: 30%;">学院</div>
  					<div class="baseInfo-item-right col-50" style="margin-left: 0;width: 70%;">${collegeName}</div>
  				</li>
  			</ul>
  		</div>
  		<!-- 请假必填 -->
  		<div class="leave-required">
  			<div class="leave-record-title">请假必填</div>
  			<ul class="baseInfo-items">
  				<li class="baseInfo-item row border-bottom">
  					<div class="baseInfo-item-left col-50" style="margin-left: 0;width: 30%;">学生号码</div>
  					<div class="baseInfo-item-right col-50" style="margin-left: 0;width: 70%;">${studentMobile}&nbsp;&nbsp;<a href="tel:${studentMobile}" class="call">呼叫</a></div>
  				</li>
  				<li class="baseInfo-item row border-bottom">
  					<div class="baseInfo-item-left col-50" style="margin-left: 0;width: 30%;">家长号码</div>
  					<div class="baseInfo-item-right col-50" style="margin-left: 0;width: 70%;">${familyMobile}&nbsp;&nbsp;<a href="tel:${studentMobile}" class="call">呼叫</a></div>
  				</li>
  				<li class="baseInfo-item row border-bottom">
  					<div class="baseInfo-item-left col-50" style="margin-left: 0;width: 25%;">开始时间</div>
	  				<div class="baseInfo-item-right col-50 row" style="margin-left: 0;width: 75%;line-height: 2rem;">
	  					<div style="">
	  						${startTime}
							&nbsp;<img alt="" src="${base}/resources/images/EducationalManager/startTime.png" class="col-30" style="width: 0.9rem;position: relative;top:0.1rem;margin-left: 0;">
						</div>
					</div>
  				</li>
  				<li class="baseInfo-item row border-bottom">
  					<div class="baseInfo-item-left col-50" style="margin-left: 0;width: 25%;">结束时间</div>
	  				<div class="baseInfo-item-right col-50 row" style="margin-left: 0;width: 75%;line-height: 2rem;">
	  					<div style="">
	  						${endTime}
							&nbsp;<img alt="" src="${base}/resources/images/EducationalManager/endTime.png" class="col-30" style="width: 0.9rem;position: relative;top:0.1rem;margin-left: 0;">
						</div>
					</div>
  				</li>
  				<li class="baseInfo-item row border-bottom">
  					<div class="baseInfo-item-left col-50" style="margin-left: 0;width: 30%;">辅导员</div>
  					<div class="baseInfo-item-right col-50" style="margin-left: 0;width: 70%;">${classTeacher}</div>
  				</li>
  				<li class="baseInfo-item row border-bottom" style="height: 5rem;">
  					<div class="baseInfo-item-left col-50" style="margin-left: 0;width: 30%;">请假原因</div>
  					<div class="baseInfo-item-right col-50" style="margin-left: 0;width: 70%;"><textarea placeholder="请填写请假原因100字以内" class="textarea">${leaveReason}</textarea></div>
  				</li>
  				<li class="baseInfo-item row border-bottom">
  					<div class="baseInfo-item-left col-50" style="margin-left: 0;width: 40%;">家长是否同意</div>
  					<div class="baseInfo-item-right col-50 row" style="margin-left: 0;width: 60%;">
  						${isFamilyAgree}
  					</div>
  				</li>
  			</ul>
  		</div>
  		
  	</div>
  </div>
</div>

<#include "/PUBLIC/make-leave-model.ftl"/>
<#include "/PUBLIC/js-noBoot.ftl"/>

<script>
var _$=undefined;
//picker
+ function($) {
  'use strict';
  $(document).on("pageInit", "#page-student-singleLeaveInfo", function(e, id, page) {
	  _$=$;
	  var statusCode=undefined;
	  $("#agree").click(function(e){
			 showModel();
			 statusCode=1;
		 }); 
		 $("#disagree").click(function(e){
			 showModel();
			 statusCode=2;
		}); 
		 $("#makeLeave").click(function(e){
			 var approverAdvice=$("#approverAdvice").val();
			//提交
			var timer=undefined;
			$.ajax({
				url:"${base}/educationalManager/onlineLeave/makeLeave",
				type:"post",
				dataType:"json",
				data:{"id":"${id}","statusCode":statusCode,"approverAdvice":approverAdvice},
				beforeSend:function(){
					_$.showPreloader();
					timer=setTimeout(function(){
						_$.hidePreloader();
						_$.alert("网络连接超时", function () {
					      });
						}, 10*1000);
				},
				success:function(data){
					clearTimeout(timer);
					 _$.hidePreloader();
					 if (data.code==0) {
						 $.router.load("${base}/educationalManager/onlineLeave",true);
					 }else{
						 $.alert(data.msg, function () {
					     });
				     }
				},
			});
		}); 
	  });

}(Zepto);


</script>

</div>
</div> 

  </body>
</html>