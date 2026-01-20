<?php /* $Id: Error.tpl 770 2006-09-06 19:04:57Z will $ */ ?>
<?php TemplateUtility::printHeader('<?php _te(\'Fatal Error\'); ?>'); ?>
<?php TemplateUtility::printHeaderBlock(); ?>

<p />
<p class="fatalError">
    <?php _te('A fatal error has occurred.'); ?><br />
    <br />
    <?php echo($this->errorMessage); ?>
</p>

<?php TemplateUtility::printFooter(); ?>
