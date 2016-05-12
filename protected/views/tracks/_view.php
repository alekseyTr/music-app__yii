<?php
/* @var $this TracksController */
/* @var $data Tracks */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_track')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id_track), array('view', 'id'=>$data->id_track)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('track')); ?>:</b>
	<?php echo CHtml::encode($data->track); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('length')); ?>:</b>
	<?php echo CHtml::encode($data->length); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('album_id')); ?>:</b>
	<?php echo CHtml::encode($data->album_id); ?>
	<br />


</div>