<?php echo $header; 
$theme_options = $registry->get('theme_options');
$config = $registry->get('config'); 
include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_top01.tpl'); ?>
<style>
    .item-box a:hover{
        background-color: #f7f8f9;
    }
    .support-s4{
        width: 100%;
        height: auto;
        margin-bottom: 30px;
        border-top: 1px solid #e5e5e5;
        display: none;
    }
</style>

<div class="container">
    <div class="row">
        <section style="padding:80px 0px 90px 0px;text-align: center" class="support-s1">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3">
                        <div style="text-transform: uppercase;margin-bottom: 30px;font-size: 20px;" class="title">Welcome to Flypie Product Service & Support</div>
                        <div style="color: #979797;margin-bottom: 60px;" class="desc">We are very happy to help you.</div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 item-box">
                        <a style="display: inline-block;width: 155px;height: 155px;margin-left: 18px;margin-right: 18px;margin-bottom: 30px;padding-top: 20px;padding-left: 10px;padding-right: 10px;border: solid 1px #707473;border-radius: 3px;text-align: center;vertical-align: top;" class="item" href="https://www.flypie.net/shopping-faq.html">
                            <img style="width: 60px;height: 60px;border: none" alt src="http://111.230.242.218/images/s1-shopping.png">
                            <h4 style="font-size: 14px;margin-top: 10px;text-transform: uppercase;color: #707473;">purchase guide</h4>
                        </a>
                        <a style="display: inline-block;width: 155px;height: 155px;margin-left: 18px;margin-right: 18px;margin-bottom: 30px;padding-top: 20px;padding-left: 10px;padding-right: 10px;border: solid 1px #707473;border-radius: 3px;text-align: center;vertical-align: top;" class="item" href="https://www.flypie.net/maintenance-service.html">
                            <img style="width: 60px;height: 60px;border: none" alt src="http://111.230.242.218/images/s1-application.png">
                            <h4 style="font-size: 14px;margin-top: 10px;text-transform: uppercase;color: #707473;">Maintenance service</h4>
                        </a>
                        <a style="display: inline-block;width: 155px;height: 155px;margin-left: 18px;margin-right: 18px;margin-bottom: 30px;padding-top: 20px;padding-left: 10px;padding-right: 10px;border: solid 1px #707473;border-radius: 3px;text-align: center;vertical-align: top;" class="item" href="https://www.flypie.net/aftersale-servicepolicy.html">
                            <img style="width: 60px;height: 60px;border: none" alt src="http://111.230.242.218/images/s1-service.png">
                            <h4 style="font-size: 14px;margin-top: 10px;text-transform: uppercase;color: #707473;">After-sales service policy</h4>
                        </a>
                        <a style="display: inline-block;width: 155px;height: 155px;margin-left: 18px;margin-right: 18px;margin-bottom: 30px;padding-top: 20px;padding-left: 10px;padding-right: 10px;border: solid 1px #707473;border-radius: 3px;text-align: center;vertical-align: top;" class="item" href="https://www.flypie.net/download-VR6Pro.html">
                            <img style="width: 60px;height: 60px;border: none" alt src="http://111.230.242.218/images/s1-download.png">
                            <h4 style="font-size: 14px;margin-top: 10px;text-transform: uppercase;color: #707473;">download</h4>
                        </a>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <div class="row">
        <section style="background-color: #f7f8f9;padding-top: 30px;text-align: center" class="support-s2">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <h3 style="margin-bottom: 25px;text-transform: uppercase;font-size: 20px;">contact us</h3>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <div class="row">
        <section style="padding:40px 0px 60px 0px" class="support-s3">
            <div style="display: block;opacity: 1;transition: opacity .15s linear;" class="container">
                <div style="padding-top: 30px;text-align: center;padding-bottom: 60px;" class="row">
                    <div class="col-xs-12">
                        <div style="display: inline-block;padding-left: 60px;padding-right: 60px;box-sizing: border-box;" class="item"  id="support-email">
                            <a href="javascript:void(0);" class="detail-btn">
                                <div style="max-width: 93px;margin: 0 auto;position: relative;" class="icon-box-big">
                                    <img style="opacity:1;border: none;" class="icon-c" src="http://111.230.242.218/images/icon-c.png">
                                    <img style="position: absolute;top: 0;left: 0;z-index: 10;border: none" class="icon-f" src="http://111.230.242.218/images/icon-f.png">
                                </div>
                                <h4>Email</h4>
                            </a>
                        </div>
                        <div style="display: inline-block;padding-left: 60px;padding-right: 60px;box-sizing: border-box;" class="item" id="support-tel">
                            <a href="javascript:void(0);" class="datail-btn">
                                <div style="max-width: 93px;margin: 0 auto;position: relative;" class="icon-box-big">
                                    <img style="opacity:1;border: none;" class="icon-t" src="http://111.230.242.218/images/icon-t.png">
                                    <img style="position: absolute;top: 0;left: 0;z-index: 10;border: none" class="icon-s" src="http://111.230.242.218/images/icon-s.png">
                                </div>
                                <h4>Tel</h4>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <div class="row">
        <section  style="padding:40px 0px 60px 0px" class="support-s4">

        </section>
    </div>
</div>

<script type="text/javascript">
    $(function () {
        var status = 0;
       $(".support-s3 .item a").hover(function () {
           $(this).find("img").eq(1).hide();
       },function () {
           $(this).find("img").eq(1).show();
       }) ;
       //点击邮箱标记出现内容
       $("#support-email").on('click',function () {
           status = 1;
           var html="<p>Email:<span>support@flypie.net</span></p>"+
                     "<p>If you have any questions, please feel free to contact us by email.</p>";
           if($(".support-s4").css("display")=="none" && status==1){
               $(".support-s4").show().html(html);
           }else{
               $(".support-s4").hide();
           }
       });
        //点击电话标记出现内容
        $("#support-tel").on('click',function () {
            status = 1;
            var html="<p>China\n" +
                "\n" +
                "+86 400-008-8854\n" +
                "\n" +
                "Monday to Sunday 9:30-12:00; 14:00-19:00 (Beijing time)</p>"+
                "<p>If you have any questions, please call for advice.</p>";
            if($(".support-s4").css("display")=="none" && status == 1){
                $(".support-s4").show().html(html);
            }else{
                $(".support-s4").hide();
            }
        });
    });
</script>


  
<?php include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_bottom.tpl'); ?>
<?php echo $footer; ?>