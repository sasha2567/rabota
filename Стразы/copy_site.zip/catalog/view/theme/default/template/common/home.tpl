<?php echo $header; ?>
<div class="container">

  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?><?php echo $content_bottom; ?></div>

    <?php echo $column_right; ?></div>

</div>
<script>$('body').addClass('home-body');</script>
<style> body {background: url('/www/ceostore.ru/catalog/view/theme/default/template/common/bg-light-4857.png') no-repeat;} </style>


<?php echo $footer; ?>
