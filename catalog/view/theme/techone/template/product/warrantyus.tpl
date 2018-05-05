<?php echo $header; 
$theme_options = $registry->get('theme_options');
$config = $registry->get('config'); 
include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_top01.tpl'); ?>

<div id="tab-description" class="tab-content" style="display: block;border: none">
    <p style="word-wrap:break-word;word-break:break-all;">Flypie guarantees that subject to the following conditions, replacement or free repair service can be requested within 15 days of the delivery date(subject to actual date the product was received). Please contact Flypie official sales center or the authorized distributor of Flypie from whom you purchased your product for more details or request a replace product.</p>
    <br/>
    <p  style="font-size: 13pt;color: #222;word-wrap:break-word;word-break:break-all;">1.Warranty period of main parts</p>
    <img style="margin-bottom: 20pxword-wrap:break-word;word-break:break-all;" src="https://www.flypie.net/image/catalog/service/service-policy-us.png" alt="">
    <p  style="font-size: 13pt;color: #222;word-wrap:break-word;word-break:break-all;">2.You can request replacement or free repair service</p>
    <p style="word-wrap:break-word;word-break:break-all;">Within 15 days after you receive, if the product has performance malfunction,performance manufacturing defect or shipment damage before open the package.</p>
    <p style="word-wrap:break-word;word-break:break-all;">Performance malfunctions are including：</p>
    <ul style="list-style: none;padding: 0;word-wrap:break-word;word-break:break-all;">
        <li>a.Aircraft fail to boot or fly.</li>
        <li>b.Controller fail to boot or work.</li>
        <li>c.Battery has malfunction.</li>
        <li>d.Charger can’t charge.</li>
    </ul>
    <br/>
    <p  style="font-size: 13pt;color: #222;word-wrap:break-word;word-break:break-all;">3.Replacement or Free Repair Service will not be provided where</p>
    <ul style="list-style: none;padding: 0;word-wrap:break-word;word-break:break-all;">
        <li>a.The replacement was requested beyond 15 days after you receive the product.</li>
        <li>b.Legal proof-of-purchase or receipts are not provided, or are reasonably believed to have been forged or tampered with,</li>
        <li>c.Product sent in for replacement does not include all original accessories, attachments and packaging, or contains items damaged by user error.</li>
        <li>d.Product is found to have no manufacturing defects or performance malfunction after appropriate tests are conducted by Flypie Technical Support.</li>
        <li>e.Any product fault or damage has been caused by unauthorized use or modification of the product, including exposure to moisture, entry of foreign bodies (water, oil, sand, etc.), or improper installation or operation.</li>
        <li>f.Product labels, serial numbers, waterproof marks, false proof marks etc. show signs of tampering or alteration.</li>
        <li>g.Damage was caused to the product by external factors out of our control, including fire, flood, high winds and lightning strike.</li>
        <li>h.Respective product has not been sent back to Flypie 15 days after replacement confirmation from Flypie.</li>
        <li>i.Product has shipment damage problem but can’t provide shipping company ’s transport proof.</li>
    </ul>
</div>
  
<?php include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_bottom.tpl'); ?>
<?php echo $footer; ?>