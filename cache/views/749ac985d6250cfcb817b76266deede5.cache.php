<?php $return = $this->_listdata("catid=$catid order=updatetime page=$page pagesize=5"); extract($return); $count=count($return); if (is_array($return)) { foreach ($return as $key=>$t) { ?>
<section>
    <a href="<?php echo url('content/show', array('id'=>$t['id'])); ?>">
        <img width="122" height="74" src="<?php echo thumb($t['thumb']); ?>" />
        <detail>
            <ul>
                <li class="brand"><?php echo $t['title']; ?></li>
                <li class="title indent"><?php echo strcut($t['description'],44); ?></li>
            	<li class="price"><strong><?php echo date('Y-m-d', $t['updatetime']); ?></strong><span>阅读<?php echo $t['hits']; ?></span></li>
            </ul>
        </detail>
    </a>
</section>
<?php } } ?>