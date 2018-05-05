<?php echo $header; 
$theme_options = $registry->get('theme_options');
$config = $registry->get('config'); 
include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_top03.tpl'); ?>

<script src="//maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&key=AIzaSyAWA8TbLvoVlKqoV4vG4IUmCsiyEY4_fxU&language=en-US" async="" defer="defer" type="text/javascript"></script>

<div id="tab-description" class="tab-content" style="display: block;border: none">
    <h2 style="text-align: center;font-size: 2.375rem;
    margin: 0 0 25px;">Perfection comes from concentration</h2>
    <p style="word-break: break-all">Headquartered in Shenzhen，Flypie Technology Co., Ltd is a global high-tech enterprise that focus on research and manufacture high-end consumer camera drones.We efforts to produce easy operation,portable,premium performance drones. In this complex drones marketing environment, we insist that we should offer high performance drones  and give best customer service to achieve  perfect customer experience have caused our customers are from all over the world.</p>
    <p style="word-break: break-all">In the new high intelligent area, we that was born in 2016 insists on innovative, our products have gained many related patent,quality management system certification,environmental management system certification.
        We are a team full of passion and courage to challenge. We have been persistently striving for breakthrough innovation and challenging the future without limits.
        With our young mindset and innovative spirit of exploration, we hope to inject the genes of aerial photography into our customers and make the aerial photography of drones popular. We will be proud of this! We are willing to take our customers, our employees, ours Partners grow together to create a better future!</p>
    <div class="about-flypie-wrap">
        <p class="about-flypie-title">Flypie Technology's growth process</p>
        <div class="about-flypie-evolution_list">

            <div class="about-flypie-evolution_step">
                <div class="time">March 2018 Accepted Flypie Release of VR6 Pro Edition</div>
                <p class="info">To be determined.</p>
            </div>
            <div class="about-flypie-evolution_step">
                <div class="time">VR6 Standard Edition released on May 22, 2017.</div>
                <p class="info">In May of the same year, the Taobao "flypie drone" was scheduled to start. VR6 Standard Edition supports 200 million pixel panoramas, 2.5K video recording, etc.</p>
            </div>
            <div class="about-flypie-evolution_step">
                <div class="time">March 2016 Flypie Technology was established</div>
                <p class="info">Shenzhen Feipai Technology Co., Ltd. was established and got angel financing from a listed company Cheetah Mobile.</p>
            </div>
        </div>
    </div>
</div>
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

<div id="map-canvas" class="mobile-disabled" style="width: 100%;height: 500px;margin-bottom: 10px;"></div>
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

  
<?php include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_bottom.tpl'); ?>
<?php echo $footer; ?>