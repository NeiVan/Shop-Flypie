<?php echo $header; 
$theme_options = $registry->get('theme_options');
$config = $registry->get('config'); 
include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_top01.tpl'); ?>

<div class="container">
    <div id="tab-description" class="tab-content" style="display: block;border: none">
        <div class="row">
            <div class="col-md-12 col-xs-12">
                <!--<p style="font-size: 10.5pt;"><?php echo $content; ?></p>-->
                <p>如果您的产品需要维修，请下载<span class="application-form" style="text-decoration:underline;color: rgb(0, 176, 240);cursor:pointer;">飞拍科技维修申请表</span>填好后发送到Flypie产品服务中心邮箱，邮箱地址：support@flypie.net</p>
                <br/>
                <p style="font-size: 13pt;color: #222;">维修流程</p>
                <ul style="list-style: none;padding: 0">
                    <li>1. 提交维修申请：提交<span class="application-form"  style="text-decoration:underline;color: rgb(0, 176, 240);cursor:pointer;">飞拍科技维修申请表</span>到Flypie产品服务中心。</li>
                    <li>2. 寄送产品: 在您提交完<span class="application-form"  style="text-decoration:underline;color: rgb(0, 176, 240);cursor:pointer;">飞拍科技维修申请表</span>后寄送需要维修的产品给我们。</li>
                    <li>3. 评估和进行产品维修：收到您们的产品后，我们将会评估您的产品和给您发送维修报价。在您完成付款后产品维修将进行。</li>
                    <li>4. 寄回产品：维修完成后Flypie产品服务中心将会把已修复或置换的产品寄回至您的手中。</li>
                    <li><span style="color: red">*</span>注：经检测后，如属保修期内非人为的性能故障，Flypie产品服务中心将视情况免费为您维修或置换.</li>
                </ul>
                <br/>
                <p style="font-size: 13pt;color: #222;">维修时间</p>
                <p><span style="display: inline-block;width: 20px;height: 20px;vertical-align:bottom;"><img src="https://www.flypie.net/image/cache/catalog/time-100x100.png"></span>星期一至星期六&nbsp;&nbsp;9:30-19:00</p>
                <p>Flypie产品服务中心收到您的产品之后，根据产品的故障情况，大概3-5天可以维修好您的产品，然后寄回您填写的地址。</p>
                <p><span style="color: red">*</span>注：会根据提交时间优先处理.</p>
                <br/>
                <p style="font-size: 13pt;color: #222;">产品的哪些部件在维修范围之内？</p>
                <p>只有飞行器，云台相机在维修范围之内。</p>
                <p><span style="color: red">*</span>注：电池，螺旋桨，充电器，SD卡，收纳包等不需寄回。</p>
                <br/>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 col-xs-12">
                <p style="font-size: 13pt;color: #222;">下载</p>
                <div class="col-xs-6" style="padding: 0">
                    <div style="color:#44a8f2" class="name"><?php echo $name; ?></div>
                    <div class="date"><?php echo '2018-02-13'; ?></div>
                </div>
                <div class="col-xs-6">
                        <div class="col-xs-4"><a style="padding: 0px 8px;border: 1px solid #707473;background: #f7f8f9;color: #a6acaa;text-transform: uppercase;" class="btn-download" href="Flypie-applicationform.docx" download="<?php echo $name; ?>">doc</a></div>
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