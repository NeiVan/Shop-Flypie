<?php echo $header; ?>
<?php $theme_options = $registry->get('theme_options'); ?>
<?php $config = $registry->get('config'); ?>
<?php $grid_center = 12;
if($column_left != '') $grid_center = $grid_center-3;
if($column_right != '') $grid_center = $grid_center-3;
$modules_old_opencart = new Modules($registry); ?>

<!-- MAIN CONTENT
	================================================== -->
<div class="main-content <?php if($theme_options->get( 'content_layout' ) == 1) { echo 'full-width'; } else { echo 'fixed'; } ?> inner-page" >
  <div class="background">
    <div class="shadow"></div>
    <div class="pattern">
      <div class="container">
        <div class="row">
          <div class="col-md-<?php echo $grid_center; ?>">
            <div style="min-height: 550px" class="row">
              <div style="float: right;width: 100%" class="col-md-<?php echo $grid_content_top; ?> center-column" id="content">
                <!-- 404错误页面 -->
                <div class="err-page">
                  <section>
                    <div class="container text-center">
                      <div class="row err-main">
                        <div class="col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
                          <h1>404</h1>
                          <p><?php echo $text_error_tips ?></p>
                        </div>
                        <div  class="col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
                          <p><?php echo $text_error_return ?><a href="https://www.flypie.net"><?php echo $text_flypie ?></a></p>
                          <p><?php echo $text_information ?><a href="https://www.flypie.net/contact-us.html"><?php echo $text_contact_us ?></a>.</p>
                        </div>
                      </div>
                      <div class="row err-desc"></div>
                    </div>
                  </section>
                </div>
              </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>