<?php print_r($banner); ?><div id="slideshow<?php echo $module; ?>" class="owl-carousel" style="opacity: 1;">
  <?php foreach ($banners as $banner) { ?>
  <div class="item">
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
    <?php } ?>
  </div>
  <?php } ?>
</div>

<?php if ($data['slideshow_name']=='slideshow_nanesenie_straz_DO_NOT_CHANGE_THIS_NAME') { //слайдер для страницы НАНЕСЕНИЕ СТРАЗ ?>

<link href="/css/fancybox2.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/js/fancybox2.pack.js"></script>

<script type="text/javascript"><!--
$('#slideshow<?php echo $module; ?>').owlCarousel({
	items: 4,
	autoPlay: 3000,
	singleItem: false,
	navigation: true,
	navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
	pagination: false,
        stopOnHover : true,
        responsive: false
});

$('.owl-item a').fancybox();

--></script>
            
<?php }else{ ?>

<script type="text/javascript"><!--
$('#slideshow<?php echo $module; ?>').owlCarousel({
	items: 6,
	autoPlay: 6000,
	singleItem: true,
	navigation: true,
	navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
	pagination: true
});
--></script>


<?php } ?>

