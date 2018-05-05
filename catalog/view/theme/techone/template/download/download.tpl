<?php echo $header; 
$theme_options = $registry->get('theme_options');
$config = $registry->get('config'); 
include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_top.tpl'); ?>

<div style="width: 100%;height: 500px;margin-bottom: 10px;background-color: red"></div>
<div id="tab-description" class="tab-content" style="display: block;border: none">
    <p style="font-size: 10.5pt;word-wrap:break-word;word-break:break-all;"><?php echo $content; ?></p>
</div>
  
<?php include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_bottom.tpl'); ?>
<?php echo $footer; ?>