<%-- <%@ page import="com.h.common.SrcTypeEnum"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login 002</title>
<meta name="robots" content="none">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" CONTENT="no-cache">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!-- <link href="resources/jquery-ui-1.12.1.custom/jquery-ui.min.css" rel="stylesheet"> -->
<link href="resources/bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet" />
<link href="resources/css/css.css" rel="stylesheet" />
<!-- <link href='http://static.emapgo.cn/webjs-sdk/css/emapgo-1.0.0.css' rel='stylesheet' /> -->
<link href="resources/js/leaflet/leaflet.css" rel="stylesheet" />
<link rel="stylesheet" href="http://code.ionicframework.com/ionicons/1.5.2/css/ionicons.min.css">
<link href="resources/leaflet.awesome-markers-2.0/leaflet.awesome-markers.css" rel="stylesheet">

<script src="resources/jquery/jquery-3.2.1.min.js"></script>
<!-- <script src="resources/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script> -->
<!-- <script src="resources/js/webeditor.js"></script> -->
<!-- <script src="resources/js/common.js"></script> -->
<!-- <script src="resources/bootstrap-3.3.7/js/bootstrap.min.js"></script> -->
<!-- <script src='http://static.emapgo.cn/webjs-sdk/js/emapgo-1.0.0.js'></script> -->
<script src="resources/js/leaflet/leaflet.js"></script>
<script src="resources/js/leaflet.ChineseTmsProviders.js"></script>
<!-- <script src="resources/js/proj4-compressed.js"></script> -->
<script src="resources/js/proj4leaflet.js"></script>
<!-- <script src="resources/js/tileLayer.baidu.js" ></script > -->
<script src="resources/leaflet.awesome-markers-2.0/leaflet.awesome-markers.min.js"></script>
<!-- <script src="https://unpkg.com/leaflet.vectorgrid@latest/dist/Leaflet.VectorGrid.js"></script> -->
   
<script type ="text/javascript">

var $emgmap = null, $baidumap = null, $gaodemap = null, $tengxunmap = null;
	var $emgmarker = null, $baidumarker = null, $gaodemarker = null, $tengxunmarker = null;

	var lat = 31.363674;
	var lon = 119.849238;
	var zoom = 17;


	$(document).ready(function() {

		drawTengXunMap( lat,lon,zoom);
		
	});
	
// 	地图上的水滴图标
	var matchMarker = L.AwesomeMarkers.icon({
    	icon: 'tag',
    	markerColor: 'blue',
    	iconColor:'white'
  	});

function drawTengXunMap(lat, lng, zoom) {
		try{
			if ($tengxunmap) {
				$tengxunmap.setView([lat, lng]);
			} else {
				$tengxunmap = L.map('tengxunmap', {
					zoomControl : false,
					center:  [lat, lng],
					zoom: zoom,
					layers : [L.tileLayer.chinaProvider('TengXun.Normal.Map', {
						subdomains: '0123',
						tms:true
					})]
				});
			}
			
			if ($tengxunmarker) {
				$tengxunmarker.setLatLng([lat, lng]);
			} else {
				$tengxunmarker = L.marker([lat, lng], {icon: matchMarker}).addTo($tengxunmap);
			}
		} catch(e) {
			
		}
	}

</script>

</head>
<body>

<div id="headdiv"></div>
	
		<div class="containerdiv">
			<div class="row-fluid fullHeight">
				<div class="col-md-2 fullHeight">
					<div style="position: absolute; top: 3%; left: 0; right: 0; height: 200px;">
						<table id="tbKeyword" class="table table-bordered table-condensed">
							<thead>
						   	 左侧1  
						  	</thead>
							<tbody>
							左侧11
							</tbody>
						</table>
					</div>
					<div style="position: absolute; top: 205px; left: 0; right: 0; bottom: 60px;">
						<table id="tbEdit" class="table table-bordered table-condensed">
						左侧2
						</table>
					</div>
					<div style="position: absolute; left: 0; right: 0; bottom: 12px; height: 38px; text-align: center;">
						左侧3
					</div>
				</div>
				<div class="col-md-10 fullHeight">
					<div style="position: absolute; top: 0; left: 0; right: 0; height: 100%;">
				    	<div class="mappanel" style="position: absolute; top: 0; left: 0%; width: 100%; height: 100%;">
				    		<div class="panel panel-default">
							    <div class="panel-heading"><strong>腾讯地图</strong></div>
							    <div class="panel-body">
							    	<div id="tengxunmap" style="height: 100%; z-index: 10;">加载中...</div>
							    </div>
							</div>
				    	</div>
					</div>
					
					</div>
				</div>
			</div>
		</div>

</body>
</html>