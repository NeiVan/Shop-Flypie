<?php echo $header; 
$theme_options = $registry->get('theme_options');
$config = $registry->get('config'); 
include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_top01.tpl'); ?>

<div class="container">
    <div id="tab-description" class="tab-content" style="display: block;border: none">
        <div class="row">
            <div class="col-md-12 col-xs-12">
                <!--<p style="font-size: 10.5pt;"><?php echo $content; ?></p>-->
                <p>If your product needs repair, please download<span class="application-form" style="text-decoration:underline;color: rgb(0, 176, 240);cursor:pointer;">Flypie Technology Repair Application Form.</span>After you fill all related details ,please send email to <span style="color: #222">support@flypie.net</span>.</p>
                <br/>
                <p style="font-size: 13pt;color: #222;">Repair Service process</p>
                <ul style="list-style: none;padding: 0">
                    <li>1. Submit repair request: Submit<span class="application-form"  style="text-decoration:underline;color: rgb(0, 176, 240);cursor:pointer;">Flypie Technology Repair Application Form</span>to Flypie Product Service Center Email.</li>
                    <li>2. Send your product: After you submit<span class="application-form"  style="text-decoration:underline;color: rgb(0, 176, 240);cursor:pointer;">Flypie Technology Repair Application Form</span>and sending the product to be repaired to us.</li>
                    <li>3. Assessment and Repair：After receiving your product, we will evaluate your product and send you a repair quotation.Product repair will take place after you complete the payment .</li>
                    <li>4. Send product to you：The Flypie Product Service Center will send the repaired or replacement product to your address after the repair  finished.</li>
                    <li><span style="color: red">*</span>Note: If the assessment shows that Flypie is responsible for the product's issue under warranty, your product will be repaired or replaced for free.</li>
                </ul>
                <br/>
                <p style="font-size: 13pt;color: #222;">Repair time</p>
                <p><span style="display: inline-block;width: 20px;height: 20px;vertical-align:bottom;"><img src="https://www.flypie.net/image/cache/catalog/time-100x100.png"></span>Monday to Saturday&nbsp;&nbsp;9:30-19:00</p>
                <p>After Flypie service center receive your product, it depends on the malfunction of the product and takes approximate 3-5 business days to repair your product..</p>
                <p><span style="color: red">*</span>Note: Priority will be given based on submission time.</p>
                <br/>
                <p style="font-size: 13pt;color: #222;">What components are including in repair service?</p>
                <p>Only the aircraft,gimbal camera are including in repair service.</p>
                <p><span style="color: red">*</span>Note: The battery, propeller, charger, SD card, package, etc. do not request to on shipment.</p>
                <br/>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 col-xs-12">
                <p style="font-size: 13pt;color: #222;">Download</p>
                <div class="col-xs-6" style="padding: 0">
                    <div style="color:#44a8f2" class="name"><?php echo $name; ?></div>
                    <div class="date"><?php echo '2018-02-13'; ?></div>
                </div>
                <div class="col-xs-6">
                        <div class="col-xs-4"><a style="padding: 0px 8px;border: 1px solid #707473;background: #f7f8f9;color: #a6acaa;text-transform: uppercase;" class="btn-download" href="Flypie-applicationform-us.docx" download="<?php echo $name; ?>">doc</a></div>
                </div>
            </div>
        </div>
    </div>

</div>
<script>
    $(function () {
       $("#tab-description .application-form").on("click",function () {
           if($(window).scrollTop()!=1000) {
               $(window).scrollTop(1000);
           }
       });
    });
</script>
  
<?php include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_bottom.tpl'); ?>
<?php echo $footer; ?>