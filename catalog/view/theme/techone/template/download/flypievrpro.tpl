<?php echo $header; 
$theme_options = $registry->get('theme_options');
$config = $registry->get('config'); 
include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_top.tpl'); ?>

<div class="container">
    <div class="row">
        <div class="col-md-6 col-xs-12">
            <div style="width: 100%;word-break:break-all;">
                  <h3 class="section-title"><?php echo $manual; ?></h3>
                  <ul class="download-list">
                      <li class="row">
                          <div class="col-xs-6">
                              <div class="name"><?php echo $name; ?></div>
                              <div class="date"><?php echo $date; ?></div>
                          </div>
                          <div class="col-xs-6">
                              <div class="col-xs-12"><a class="btn-download" href="VR6Pro-introduce.docx" download="<?php echo $name; ?>">pdf</a></div>
                          </div>
                      </li>
                  </ul>
                <h3 class="section-title"><?php echo $apptitle; ?></h3>
                <ul class="download-list">
                      <div class="app-introduce">
                          <p>
                              <span style="color: #c0392b;"><?php echo $ios; ?></span><br/>
                              <?php echo $ios_version; ?><br/>
                              <span style="color: #c0392b;"><?php echo $android; ?></span><br/>
                              <?php echo $android_version; ?>
                              <br/>
                              <br/>
                              <?php echo $addition; ?>
                          </p>
                          <div class="appdownloads row">
                               <div class="col-xs-4">
                                   <p><?php echo $ios_name ?></p>
                                   <img src="<?php echo $ios_image; ?>" class="qr">
                               </div>
                               <div class="col-xs-4">
                                   <p><?php echo $android_name ?></p>
                                   <img src="<?php echo $android_image; ?>" class="qr">
                               </div>
                              <div class="col-xs-4">

                              </div>
                          </div>
                      </div>
                </ul>
            </div>
        </div>
    </div>
</div>
  
<?php include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_bottom.tpl'); ?>
<?php echo $footer; ?>