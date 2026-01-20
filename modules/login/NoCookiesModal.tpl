<?php /* $Id: NoCookiesModal.tpl 1927 2007-02-22 06:03:24Z will $ */ ?>
<?php TemplateUtility::printModalHeader('Login'); ?>
        <div style="text-align: center;">
            <p style="background-image: url('images/orange_gradient.jpg'); background-repeat: repeat-x; padding: 4px; margin-top: 0px; margin-bottom: 8px; width: 100%; font: normal normal bold  12px/120% Verdana, Tahoma, sans-serif; color: #F6F6F6;">
                 CATS <?php _te('Warning'); ?>
            </p>
            <br />
            <div style="font: normal normal 12px Arial, Tahoma, sans-serif">
                <?php _te('Cookies are not enabled on your browser.'); ?> <br /><?php _te('CATS requires cookies in order to login.'); ?><br />
                <br />
                <?php _te('Please enable cookies within your web browser, then revisit the CATS page.'); ?><br />
                <br />
            </div>
            <br />
            <br />
            <input type="button" class="button" value="<?php _te('Retry'); ?>" onclick="parentGoToURL(parent.document.location.href);">
        </div>
    </body>
</html>
