<?php echo $header; 
$theme_options = $registry->get('theme_options');
$config = $registry->get('config'); 
include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_top01.tpl'); ?>

<div id="tab-description" class="tab-content" style="display: block;border: none">
    <p>Flypie承诺如符合以下情况，由产品签收之日（以实际收货日期为准）起15个自然日内可以提出换货或免费维修服务要求。请客户直接联系购买时联系的Flypie官方销售中心/Flypie授权代理商/Flypie官方销售网站办理换货或相关事宜。</p>
    <br/>
    <p  style="font-size: 13pt;color: #222;">1.主要部件的保修期</p>
    <img style="margin-bottom: 20px" src="https://www.flypie.net/image/catalog/service/service-policy.png" alt="">
    <p  style="font-size: 13pt;color: #222;">2.以下情况你可以申请换货免费维修服务</p>
    <p>自收货起15日内，如果产品有性能故障、明显制造缺陷或者未开包装的情况下有运输损坏的.</p>
    <p>性能故障包括以下：</p>
    <ul style="list-style: none;padding: 0">
        <li>a.飞机无法开机，不能正常飞行；</li>
        <li>b.遥控器无法开机，不能正常使用；</li>
        <li>c.电池不能使用，不能充电；</li>
        <li>d.充电器不能工作。</li>
    </ul>
    <br/>
    <p  style="font-size: 13pt;color: #222;">3.以下情况不在换货或者免费维修范围之内</p>
    <ul style="list-style: none;padding: 0">
        <li>a.超过15个自然日产品换货期限后提出的换货要求的（自收货日起计算）；</li>
        <li>b.换货时无法提供合法的购买凭证或单据，或对单据进行伪造、涂改；</li>
        <li>c.退换货品不全，外包装、附件、赠品、说明书不完整、或产品外观存在人为原因导致的污损；</li>
        <li>d.货物经Flypie技术支持部门检测，本身不存在质量问题；</li>
        <li>e.发生非产品本身质量问题导致的产品碰撞、烧毁，以及人为的私自改装、进异物（水、油、沙等）、不正确安装、未按说明书指引使用和操作所造成的商品质量问题</li>
        <li>f.撕毁、涂改标签、机器序列号、防水标记、防伪标记等；</li>
        <li>g.因不可避免因素，如火灾、水灾、雷击、交通事故等不可抗拒力造成损坏的产品；</li>
        <li>h.联系Flypie确认退货服务后，没有在15个自然日内寄出相应物件；</li>
        <li>i.因运输导致货损提出换货但未能提供运输公司出具的货损凭证的。</li>
    </ul>
</div>
  
<?php include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_bottom.tpl'); ?>
<?php echo $footer; ?>