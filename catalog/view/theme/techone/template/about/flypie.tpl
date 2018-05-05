<?php echo $header; 
$theme_options = $registry->get('theme_options');
$config = $registry->get('config'); 
include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_top02.tpl'); ?>

<div id="tab-description" class="tab-content" style="display: block;border: none">
    <h2 style="text-align: center;font-size: 2.375rem;
    margin: 0 0 25px;">极致来源于专注</h2>
    <p>飞拍科技有限公司,总部位于广东省深圳市，是一家专注研发和生产民用消费级市场的航拍无人机的全球性高新科技企业，致力于生产易操作、易携带、高性价比的无人机产品。在新时代的市场环境下，我们以用户体验为核心，致力于将高性能、高品质的产品以及极致的体验和服务带给客户，在严峻的无人机市场里杀出一条属于自己的路，我们的客户将遍布于全球100多个国家。</p>
    <p>2016年，飞拍科技有限公司诞生了。接着在高新智能技术领域上，我们不断地开拓创新，已经获得了数十项相关专利，同时我们的产品均通过国内外的质量管理体系认证。
     我们公司拥有一支充满激情、勇于挑战的团队，团队的核心成员均来自国内外一流的科技信息公司。我们一直执着追求突破创新，挑战无极限的未来。
     我们以年轻的心态，不断创新的探索精神，希望为我们的客户注入航拍的基因，让无人机航拍实现大众化，我们将以此为荣!我们愿以我们的客户、我们的员工、我们的合作伙伴一起共同成长，共创未来!</p>
    <div class="about-flypie-wrap">
        <p class="about-flypie-title">飞拍科技的成长过程</p>
        <div class="about-flypie-evolution_list">

            <div class="about-flypie-evolution_step">
                <div class="time">2018年3月接受发布VR6 Pro版</div>
                <p class="info">待定</p>
            </div>
            <div class="about-flypie-evolution_step">
                <div class="time">2017年5月22日发布VR6 标准版</div>
                <p class="info">于同年5月开始在淘宝"飞拍无人机"预定.VR6 标准版支持2亿像素全景图、2.5K视频录制等.</p>
            </div>
            <div class="about-flypie-evolution_step">
                <div class="time">2016年3月飞拍科技成立</div>
                <p class="info">深圳市飞拍科技有限公司成立，得到上市公司猎豹移动的天使融资.</p>
            </div>
        </div>
    </div>
</div>
  
<?php include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_bottom.tpl'); ?>
<?php echo $footer; ?>