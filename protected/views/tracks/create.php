<?php
/* @var $this TracksController */
/* @var $model Tracks */

$this->breadcrumbs=array(
	'Tracks'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Tracks', 'url'=>array('index')),
	array('label'=>'Manage Tracks', 'url'=>array('admin')),
);
?>
<section class="track__add">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<?php $this->renderPartial('_form', array('model'=>$model)); ?>
			</div>
		</div>
	</div>
</section>