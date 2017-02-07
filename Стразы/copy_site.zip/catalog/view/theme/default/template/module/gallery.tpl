<?php if (!empty($heading_title)) { ?>
  <h3><?php echo $heading_title; ?></h3>
<?php } ?>
<div class="row">
<div id="links<?php echo $module; ?>">
  <?php foreach ($images as $gimage) { ?>
    <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6">
        <div class="image"><a href="<?php echo $gimage['image']; ?>" title="<?php echo $gimage['title']; ?>" data-gallery="#blueimp-gallery-links<?php echo $module; ?>"><img src="<?php echo $gimage['thumb']; ?>" alt="<?php echo $gimage['title']; ?>" title="<?php echo $gimage['title']; ?>" class="img-responsive" style="margin-bottom: 20px;" /></a></div>
    </div>
  <?php } ?>
</div>
<?php if ($module === 0) { ?>
<!-- The Bootstrap Image Gallery lightbox, should be a child element of the document body -->
      <div id="blueimp-gallery" class="blueimp-gallery">
      <!-- The container for the modal slides -->
      <div class="slides"></div>
      <!-- Controls for the borderless lightbox -->
      <h3 class="title"></h3>
      <a class="prev">‹</a>
      <a class="next">›</a>
      <a class="close" style="-webkit-transform: scale(2); -moz-transform: scale(2); -ms-transform: scale(2); -o-transform: scale(2); transform: scale(2);">×</a>
      <a class="play-pause" style="-webkit-transform: scale(2); -moz-transform: scale(2); -ms-transform: scale(2); -o-transform: scale(2); transform: scale(2);"></a>
      <ol class="indicator"></ol>
      <!-- The modal dialog, which will be used to wrap the lightbox content -->
      <div class="modal fade">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" aria-hidden="true">&times;</button>
                <h4 class="modal-title"></h4>
              </div>
              <div class="modal-body next"></div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-default pull-left prev">
                    <i class="glyphicon glyphicon-chevron-left"></i>
                    Previous
                  </button>
                  <button type="button" class="btn btn-primary next">
                    Next
                    <i class="glyphicon glyphicon-chevron-right"></i>
                  </button>
                </div>
              </div>
            </div>
        </div>
      </div>
</div>
<script type="text/javascript"><!--
$('#blueimp-gallery').data('useBootstrapModal', 0);
$('#blueimp-gallery').toggleClass('blueimp-gallery-controls', 0);
--></script>
<?php } ?>