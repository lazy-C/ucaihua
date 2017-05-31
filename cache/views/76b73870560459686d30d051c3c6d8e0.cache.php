<?php $return = $this->_listdata("order=updatetime page=$page pagesize=5"); extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
<section class="news">
<a href="<?php echo url('content/show', array('id'=>$t['id'])); ?>">
    <detail>
        <ul>
            <li class="brand"><?php echo $t['title']; ?></li>
            <li class="title indent"><?php echo strcut($t['description'],86); ?></li>
            <li class="price"><strong><?php echo date('Y-m-d H:i:s', $t['updatetime']); ?></strong><span>阅读<?php echo $t['hits']; ?></span></li>
        </ul>
    </detail>
</a>
</section>
<?php } } ?>