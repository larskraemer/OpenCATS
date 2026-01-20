<!-- NOSPACEFILTER -->
<html>
    <head>
        <?php if (!empty($this->data)): ?>
            <title>
                <?php echo _t('Candidates'); ?> - <?php echo _t('Preview'); ?>
                <?php $this->_($this->data['firstName'] . ' ' . $this->data['lastName']); ?>
            </title>
        <?php else: ?>
            <title><?php echo _t('Candidates'); ?> - <?php echo _t('Preview'); ?> (<?php echo _t('Error'); ?>)</title>
        <?php endif; ?>
    </head>

    <body>
<?php if (!empty($this->data)): ?>

<pre style="font-size: 12px; padding: 5px;">
<?php echo($this->data['text']); ?>
</pre>

<?php else: ?>

<pre style="font-size: 12px; padding: 5px;">
Error: No text exists for this attachment.
</pre>

<?php endif; ?>

    </body>
</html>
