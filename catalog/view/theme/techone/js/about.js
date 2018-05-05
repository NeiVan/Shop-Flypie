window.onload = initialize;
function initialize() {
    var myLatlng = new google.maps.LatLng(22.571948700000004,113.94683789999999);//谷歌坐标地址
    var mapOptions = {
        zoom: 14,
        center: myLatlng
    }
    var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

    var marker = new google.maps.Marker({
        position: myLatlng,
        map: map,
        title: '深圳市飞拍科技有限公司'//坐标点提示
    });
    var infowindow = new google.maps.InfoWindow({
        content: "深圳市飞拍科技有限公司"
    });
    infowindow.open(map,marker);
}