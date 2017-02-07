<?php if ($ips_template == 'confirm') { ?>
    <div class="buttons">
        <div class="pull-right">
            <a href="/index.php?route=payment/ips/register" id="button-confirm" class="btn btn-primary"><?php echo $button_confirm; ?></a>
        </div>
    </div>
<?php } ?>

<?php if (in_array($ips_template, array('try_again', 'invalid_order', 'canceled', 'process', 'status_fault'))) { ?>
    <?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
    <div class="container"><?php echo $content_top; ?>

        <?php if ($ips_template == 'try_again') { ?>
            <p><?php echo $error_register_fault; ?></p>
            <p><span style="padding:2px 4px;border:1px dashed #ccc;background:#efefef;font-family:monotype;color:#333;"><?php echo $error_register_fault_code; ?></span></p>
            <div class="buttons">
                <div class="pull-left">
                    <a href="/index.php?route=payment/ips/register" id="button-confirm" class="btn btn-primary"><?php echo $button_try_again; ?></a>
                </div>
            </div>
        <?php } ?>

        <?php if ($ips_template == 'invalid_order') { ?>
            <p><?php echo $error_invalid_order; ?></p>
        <?php } ?>

        <?php if ($ips_template == 'canceled') { ?>
            <p><?php echo $error_canceled; ?></p>
        <?php } ?>

        <?php if ($ips_template == 'process') { ?>
            <p><?php echo $error_process; ?></p>
            <div class="buttons">
                <div class="pull-left">
                    <a href="<?php echo $button_finish_url; ?>" id="button-confirm" class="btn btn-primary"><?php echo $button_finish; ?></a>
                </div>
            </div>
            <script type="text/javascript">
                setTimeout(
                    function() {
                        window.location.reload();
                    },
                    12 * 1000
                );
            </script>
        <?php } ?>
        <?php if ($ips_template == 'status_fault') { ?>
            <p><?php echo $error_status_fault; ?></p>
        <?php } ?>

        <?php echo $content_bottom; ?>
    </div>
    <?php echo $footer; ?>
<?php } ?>