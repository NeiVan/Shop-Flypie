<?php echo $header;
$theme_options = $registry->get('theme_options');
$config = $registry->get('config');
include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_top01.tpl'); ?>

<script src="//maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&key=AIzaSyAWA8TbLvoVlKqoV4vG4IUmCsiyEY4_fxU&language=en-US" async="" defer="defer" type="text/javascript"></script>
<div id="tab-description" class="tab-content" style="display: block;padding: 10px 0;border: none">
    <p class="MsoNormal">
        <font face="Arial"><span style="font-size: 18.6667px"><b>Flypie Technology Co. Ltd</b></span></font>
    </p>
    <p class="MsoNormal">
        <font color="#00b0f0" face="Arial"><span style="font-size: 12px"><b>Tel phone:</b></span></font>
        <font face="Arial">
            <span style="color:rgb(0,176,240);font-size: 10.5pt">&nbsp;</span>
            <span style="font-size: 10.5pt;">(+86)400-008-8854</span>
        </font>
    </p>
    <p class="MsoNormal">
        <font color="#00b0f0" face="Arial"><span style="font-size: 12px"><b>Online service and support:</b></span></font>
        <font face="Arial">
            <span style="color:rgb(0,176,240);font-size: 10.5pt">&nbsp;</span>
            <span style="font-size: 10.5pt;text-underline: #000000">support@flypie.net</span>
        </font>
    </p>
    <p class="MsoNormal">
        <font color="#00b0f0" face="Arial"><span style="font-size: 12px"><b>Address:</b></span></font>
        <font face="Arial">
            <span style="color:rgb(0,176,240);font-size: 10.5pt">&nbsp;</span>
            <span style="font-size: 10.5pt;">7th Floor, Huawen Building, Chaguang Road, Xili Street, Nanshan District, Shenzhen, Guangdong, China</span>
        </font>
    </p>
</div>
<div id="map-canvas" class="mobile-disabled" style="width: 100%;height: 500px;margin-bottom: 10px;"></div>
<?php include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_bottom.tpl'); ?>
<?php echo $footer; ?>
<script>
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
            title: 'Flypie Technology Co., Ltd'//坐标点提示
        });
        var infowindow = new google.maps.InfoWindow({
            content: "Flypie Technology Co., Ltd"
        });
        infowindow.open(map,marker);
    }
    window.onload = initialize;
</script>
