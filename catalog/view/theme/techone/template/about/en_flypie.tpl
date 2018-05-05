<?php echo $header; 
$theme_options = $registry->get('theme_options');
$config = $registry->get('config'); 
include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_top03.tpl'); ?>

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
  
<?php include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_bottom.tpl'); ?>
<?php echo $footer; ?>