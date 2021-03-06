<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
	<!-- 编码 -->
	<meta charset="UTF-8" />
	
	<!-- ie -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge;chrome=1"/>
	
	<!-- for mobile -->
	<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	
	<!-- for search-->
	<meta name="keywords" content="uikoo9.com"/>
	<meta name="description" content="uikoo9.com"/>
	<meta name="author" contect="qiaowenbin"/>
	<meta name="robots" contect="all"/>
	
	<!-- title -->
	<title>uikoo9.com</title>
	
	<!-- favicon.ico -->
	<link href="<%=path%>/webapp/favicon.ico"" type="image/x-icon" rel="bookmark"/> 
	<link href="${base}/favicon.ico" type="image/x-icon" rel="icon"/> 
	<link href="${base}/favicon.ico" type="image/x-icon" rel="shortcut icon"/> 
	
	<!-- fill -->
	<style type="text/css">
		html,body{height: 100%;}
		#wrap{min-height: 100%;height: auto !important;height: 100%;margin: 0 auto -60px;}
		#push,#footer{height: 60px;}
		#footer{background-color: #f5f5f5;text-align:center;}
		@media ( max-width : 767px){#footer {margin-left:-20px;padding-left:20px;}}
	</style>

	<!-- base -->
	<script type="text/javascript">var base = '${base}';</script>
	
	<!-- jquery -->
	<script type="text/javascript" src="http://cdn.staticfile.org/jquery/1.11.1/jquery.min.js"></script>
	
	<!-- bootstrap -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<link rel="stylesheet" href="http://cdn.staticfile.org/twitter-bootstrap/3.2.0/css/bootstrap.min.css">
	<script type="text/javascript" src="http://cdn.staticfile.org/twitter-bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<!--[if lt IE 9]>
	<script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<div id="wrap">
		<nav role="navigation" class="navbar navbar-default">
			<div class="container">
				<div class="navbar-header">
					<button data-target="#bsnav" data-toggle="collapse" class="navbar-toggle" type="button">
						<span class="sr-only">导航条</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a href="http://uikoo9.com/" class="navbar-brand"><strong class="text-primary">uikoo9.com</strong></a>
				</div>
				
				<div class="collapse navbar-collapse" id="bsnav">
					<ul class="nav navbar-nav">
						<li><a href="http://uikoo9.com/">首页</a></li>
						<li><a href="http://uikoo9.com/blog/list">博客</a></li>
						<li class="dropdown">
							<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">作品<span class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li role="presentation"><a role="menuitem" tabindex="-1" target="_blank" href="http://uikoo9.com/dishi">滴石</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1" target="_blank" href="http://uikoo9.com/jfinalQ">jfinalQ</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1" target="_blank" href="http://uikoo9.com/bootstrapQ">bootstrapQ</a></li>
							</ul>
						</li>
						<li><a href="http://uikoo9.com/version">版本更新</a></li>
						<li><a href="http://uikoo9.com/donate" target="_blank">捐助</a></li>
						<li><a href="http://uikoo9.com/me" target="_blank">关于我</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right"></ul>
				</div>
			</div>
		</nav>
	
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<!-- =============================================================================================================== -->
					<!-- =========================================录音部分从这里开始，页面仅仅需要一下部分======================================= -->
					<!-- =============================================================================================================== -->
					<script type="text/javascript" src="<%=path%>/js/swfobject.js"></script>
					<script type="text/javascript" src="<%=path%>/ext-4.2.1.883/recorder.js"></script>
					<script type="text/javascript" src="<%=path%>/js/main.js"></script>
					<link rel="stylesheet" href="<%=path%>/ext-4.2.1.883/style.css"">
					<div class="qcontainer" id="myRecordDiv">
						<div id="recorder-audio" class="control_panel idle">
							<button class="record_button" onclick="FWRecorder.record('audio', 'audio.wav');" title="Record">
								<img src="<%=path%>/ext-4.2.1.883/images/record.png" alt="开始录音">
							</button>
							<button class="stop_recording_button" onclick="FWRecorder.stopRecording('audio');" title="Stop Recording">
								<img src="<%=path%>/ext-4.2.1.883/images/stop.png" alt="停止录音">
							</button>
							<button class="play_button" onclick="FWRecorder.playBack('audio');" title="Play">
								<img src="<%=path%>/ext-4.2.1.883/images/play.png" alt="播放">
							</button>
							<button class="pause_playing_button" onclick="FWRecorder.pausePlayBack('audio');" title="Pause Playing">
								<img src="<%=path%>/ext-4.2.1.883/images/pause.png" alt="暂停">
							</button>
							<button class="stop_playing_button" onclick="FWRecorder.stopPlayBack();" title="Stop Playing">
								<img src="<%=path%>/ext-4.2.1.883/images/stop.png" alt="停止">
							</button>
							<div class="level"></div>
						</div>
					
						<div class="details">
							<button class="show_level" onclick="FWRecorder.observeLevel();">显示声波</button>
							<button class="hide_level" onclick="FWRecorder.stopObservingLevel();" style="display: none;">隐藏声波</button>
							<button class="show_settings" onclick="microphonePermission()">麦克风权限</button>
							<span id="save_button" style="display:inline-block;"> 
								<object data="<%=path%>/ext-4.2.1.883/recorder.swf" name="recorderApp" id="recorderApp" type="application/x-shockwave-flash" height="24" width="24"><param value="upload_image=${base}/WUI/qrecord/images/upload.png" name="flashvars"></object> 
							</span>
							<div id="status">最后的录音事件：ready</div>
							<div>录音时长：<span id="duration"></span></div>
							<div>上传状态：<span id="upload_status"></span></div>
							<input value="" id="qrecordId" type="hidden">
						</div>
					
						<!-- 这个form的action写上传路径 -->
						<form id="uploadForm" name="uploadForm" action="upload">
							<input name="authenticity_token" value="F:\\123" type="text">
							<input name="upload_file[parent_id]" value="12345678" type="text">
							<input name="format" value="json" type="hidden">
						</form>
					</div>
					<!-- =============================================================================================================== -->
					<!-- =========================================录音部分到这里结束========================================================= -->
					<!-- =============================================================================================================== -->
				</div>
			</div>
		</div>

		<div id="push"></div>
	</div>
	
    <div id="footer">
		<div class="container">
			<p class="text-muted" style="margin:20px 0;">
				<a target="_blank" href="http://uikoo9.com/">uikoo9.com</a>&nbsp;&nbsp;&nbsp;
				<a target="_blank" href="http://www.miibeian.gov.cn/">京ICP备14036391号</a>
			</p>
		</div>
	</div>
</body>
</html>