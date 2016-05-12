<?php
/* @var $this TracksController */
/* @var $model Tracks */


$this->menu=array(
	array('label'=>'List Tracks', 'url'=>array('index')),
	array('label'=>'Create Tracks', 'url'=>array('create')),
	array('label'=>'Update Tracks', 'url'=>array('update', 'id'=>$model->id_track)),
	array('label'=>'Delete Tracks', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id_track),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Tracks', 'url'=>array('admin')),
);
?>

<h1>View Tracks #<?php echo $model->id_track; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id_track',
		'track',
		'length',
		'album_id',
	),
)); ?>
