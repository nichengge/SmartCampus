<#include "/PUBLIC/head.ftl"/>
    <title>个人资料</title>
    <style>
    	.content{background-color: white;color: gray;}
    </style>
 </head>
 
 <body>
  <div class="page">
  <header class="bar bar-nav apptitle">
    <!-- <a class="button button-link button-nav pull-left" href="/demos/card" data-transition='slide-out'>
      <span class="icon icon-left"></span>
      返回
    </a> -->
    <h1 class="title title-color">个人资料</h1>
  </header>
  
  <div class="content">
     <img alt="" src="${base}/resources/images/my/head_background.png" style="width: 100%;">
     <div class="head-img element-horizontal-center">
     	<div class="img" >
     		<img src="${base }/resources/images/my/head-img-default.png"/>
     	</div>
     	<p>未登录</p>
     </div>
     <div class="options">
	     <div class="row options-item line_bottom">
	     	<div class="col-10">
	     		<img alt="" src="${base }/resources/images/my/campus-certification.png">
	     	</div>
	     	<div class="col-80">校方认证</div>
	     	<div class="">
	     		<span class="icon icon-right"></span>
	     	</div>
	     </div>
	     <div class="row options-item line_bottom">
	     	<div class="col-10">
	     		<img alt="" src="${base }/resources/images/my/base-info.png">
	     	</div>
	     	<div class="col-80 ">基本信息</div>
	     	<div class="">
	     		<span class="icon icon-right"></span>
	     	</div>
	     </div>
	     <div class="row options-item line_bottom">
	     	<div class="col-10">
	     		<img alt="" src="${base }/resources/images/my/my-collection.png">
	     	</div>
	     	<div class="col-80 ">我的收藏</div>
	     	<div class="">
	     		<span class="icon icon-right"></span>
	     	</div>
	     </div>
	     <div class="row options-item line_bottom">
	     	<div class="col-10">
	     		<img alt="" src="${base }/resources/images/my/my-download.png">
	     	</div>
	     	<div class="col-80 ">我的下载</div>
	     	<div class="">
	     		<span class="icon icon-right"></span>
	     	</div>
	     </div>
	     <div class="row options-item line_bottom">
	     	<div class="col-10">
	     		<img alt="" src="${base }/resources/images/my/play-record.png">
	     	</div>
	     	<div class="col-80 ">播放记录</div>
	     	<div class="">
	     		<span class="icon icon-right"></span>
	     	</div>
	     </div>
	     <div class="row options-item">
	     	<div class="col-10">
	     		<img alt="" src="${base }/resources/images/my/setting.png">
	     	</div>
	     	<div class="col-80 ">设置</div>
	     	<div class="">
	     		<span class="icon icon-right"></span>
	     	</div>
	     </div>
     </div>
  </div>
  
  <#include "/PUBLIC/nav-bar.ftl"/>
</div>
<#include "/PUBLIC/js-noBoot.ftl"/>
  </body>
</html>