<?php echo $header; 
$theme_options = $registry->get('theme_options');
$config = $registry->get('config'); 
$s = 1;
include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_top.tpl'); ?>

<div style="min-height: 550px" class="row">
    <div style="padding: 0" class="col-sm-12">
        <div class="col-sm-2">
            <ul class="care-tab">
                <?php if(!empty($sections)):?>
                <?php foreach($sections as $section):?>
                    <li><h2 class="section-title"><a href="javascript:void(0)"><?php echo $section['title']; ?></a></h2></li>
                <?php endforeach; ?>
                <?php endif; ?>
            </ul>
        </div>
        <div class="col-sm-10">
            <div class="faq-area">
                <?php if(!empty($sections)):?>
                <?php $i = 0; ?>
                <?php foreach($sections as $section):?>
                <?php if(!empty($section['items'])):?>
                <div class="faq-section">
                    <?php if(!$section['hidden']):?>

                    <?php $s = 1; ?>
                    <?php endif; ?>

                    <div id="accordion">
                        <?php foreach($section['items'] as $item):?>
                        <?php if(trim($item['question']) == '') continue; ?>
                        <div class="panel panel-faq">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <?php if($settings['collapse']):?>
                                    <a data-toggle="collapse" data-parent="#questions" href="#answer-<?php echo $i; ?>" aria-expanded="false" class="collapsed">
                                        <?php echo  $s . '. ' . $item['question']; ?>
                                    </a>
                                    <?php else:?>
                                    <span><?php echo $s . '. ' . $item['question']; ?></span>
                                    <?php endif; ?>
                                </h4>
                            </div>
                            <div id="answer-<?php echo $i; ?>" <?php if($settings['collapse']):?> class="panel-collapse collapse" aria-expanded="false" <?php endif; ?>>
                            <div class="panel-body">
                                <?php echo $item['answer']; ?>
                            </div>
                        </div>
                    </div>
                    <?php $i++; $s++; ?>
                    <?php endforeach; ?>

                </div>
            </div>
            <?php endif; ?>
            <?php endforeach; ?>
            <?php endif; ?>
        </div>
        </div>
    </div>
</div>


<?php include('catalog/view/theme/' . $config->get('theme_' . $config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_bottom.tpl'); ?>
<?php echo $footer; ?>
<script>
    function init() {
        $(".care-tab li").eq(0).addClass("active");
        $(".faq-section").eq(0).addClass("show");
    }
    $(function () {
        $(".care-tab li").on("click",function(){
            var index =$(this).index();
            $(".care-tab li").eq(index).addClass("active").siblings().removeClass('active');
            $(".faq-section").eq(index).addClass("show").siblings().removeClass('show');
        });
    });
    window.onload = init;
</script>