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
<script src="resources/js/proj4-compressed.js"></script>
<script src="resources/js/proj4leaflet.js"></script>
<!-- <script src="resources/js/tileLayer.baidu.js" ></script > -->
<script src="resources/leaflet.awesome-markers-2.0/leaflet.awesome-markers.min.js"></script>
<!-- <script src="https://unpkg.com/leaflet.vectorgrid@latest/dist/Leaflet.VectorGrid.js"></script> -->
   
<script type ="text/javascript">

var $emgmap = null, $baidumap = null, $gaodemap = null, $tengxunmap = null;
	var $emgmarker = null, $baidumarker = null, $gaodemarker = null, $tengxunmarker = null;

	var normalm = L.tileLayer.chinaProvider('GaoDe.Normal.Map',{
		maxZoom:18,
		minZoom:5});
	
	var imgm	=L.tileLayer.chinaProvider('GaoDe.Satellite.Map',{
		maxZoom:18,
		minZoom:5
	});
	
	var imga = L.tileLayer.chinaProvider('GaoDe.Satellite.Annotion',{
			maxZoom:18,
			minZoom:5
	});

	var normal = L.layerGroup([normalm]),image=L.layerGroup([imgm,imga]);
	
	var baseLayers={
			"地图":normal,
			"影响":image,
	}
	

	
	

	
	var lat = 31.363674;
	var lon = 119.849238;
	var zoom = 17;


	$(document).ready(function() {

		drawTengXunMap( lat,lon,zoom);
		
	});
	
	//点击地图
// 	function onMapClick(e){
// // 		popup.setLatLng(e.latlng).setContext(
// // 				"you clicked the map at" + e.latlng.toString()).openOn(map);
		
// 		alert("1you clicked the map at" + e.latlng.toString() );
// 	}
	
// 	地图上的水滴图标
	var matchMarker = L.AwesomeMarkers.icon({
    	icon: 'apple',
    	markerColor: 'blue',
    	iconColor:'white',
    	iconSize:'35'
  	});

	


function drawTengXunMap(lat, lng, zoom) {
		try{
		
			hmap.setView([lat, lng]);
			hmap.setZoom(zoom);
			
			
// 			if ($tengxunmarker) {
// 				$tengxunmarker.setLatLng([lat, lng]);
// 			} else {
// 				$tengxunmarker = L.marker([lat, lng], {icon: matchMarker}).addTo(hmap);
// 			}
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
<script type='text/javascript'>
	var hmap = L.map("tengxunmap", {
		center : [ 31.59, 120.29 ],
		zoom : 12,
		layers : [ normal ],
		zoomControl : false
	});

	L.control.layers(baseLayers, null).addTo(hmap);
	L.control.zoom({
		zoomInTitle : "放大",
		zoomOutTitle : "缩小"
	}).addTo(hmap);
	

	//绑定点击事件
	hmap.on('click',onMapClick);
	
	
	//弹出事件
	var popup = L.popup();
	
	function onMapClick(e){
		popup.setLatLng(e.latlng).setContent(
				"1you clicked the map at" + e.latlng.toString() ).openOn(hmap);
	}
	
	//点坐标
//	var marker = L.marker([31.59623, 120.28999]).addTo(map);
// 	var marker = L.marker([lat, lng]).addTo(hmap);
// 	//弹窗信息
// 	marker.bindPopup("<b>Hello world!</b><br>I am a popup.").openPopup();
	
	
	
	//经纬度事件弹框
 	var lng = null, lat = null;
 	var position  = function(lng, lat){
 		L.marker([lng, lat]).addTo(hmap).bindPopup("当前经纬度：["+lng+","+lat+"]"+"<br>"
                  +"<button onclick=" + "\"" +"detail("+lng+","+lat+")" +"\""+">地点详情</button>").openPopup();

 	}
	
	//異步查詢指定經緯度信息
	function detail(lng,lat){
		//经纬度查询信息
		L.marker([lng, lat]).addTo(hmap).bindPopup("名称:"+"国际新城"+"<br>"
				 +"<b>地点:"+"无锡"+"</b>"+"<br>"
                 +"<b>联系电话:"+"12306"+"</b>"+"<br>"
                 +"<button onclick=" + "\"" +"position("+lng+","+lat+")" +"\""+">详情</button>").openPopup();
		alert("異步查詢指定經緯度信息");
	}
	
	//$(function() DOM加载完成后执行的回调函数，并且只会执行一次。
	//異步獲取標記點
 	$(function(){
	
	var markerArr = [  
	                    { title: "国际新城", point: "31.62591, 120.2821", address: "无锡", tel: "12306" },  
	                    { title: "红卫村", point: "31.6224, 120.17052", address: "无锡 ", tel: "18500000000" },  
	                    { title: "沪宜高速", point: "31.58468, 120.14683", address: "无锡", tel: "18500000000" },  
	                    { title: "板桥", point: "31.60895, 120.40466", address: "无锡", tel: "18500000000" }  
	                ]
	

	
	for (var i = 0; i < markerArr.length; i++) { 
	    //获取经纬度
	    var lng = markerArr[i].point.split(",")[0];
	    var lat = markerArr[i].point.split(",")[1];
	    //生成新的标记点
        L.marker([lng,lat]).addTo(hmap).bindPopup("<b>名称:"+markerArr[i].title+"</b>"+"<br>"
                                                 +"<b>地点:"+markerArr[i].address+"</b>"+"<br>"
                                                 +"<b>联系电话:"+markerArr[i].tel+"</b>"+"<br>"
                                                 +"<b><button onclick=" + "\"" +"position("+lng+","+lat+")" +"\""+">当前经纬度</button></b>").openPopup();
	    
       } 
     });
	
</script>
</html>