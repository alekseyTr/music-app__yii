<?php
/* @var $this TracksController */
/* @var $model Tracks */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'tracks-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Все поля обязательные</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<div class="col-xs-12">
			<?php echo $form->textField($model,'track',array('size'=>45,'maxlength'=>45, 'placeholder'=>'Название трека')); ?>
			<?php echo $form->error($model,'track'); ?>
		</div>
	</div>

	<div class="row">
		<div class="col-xs-12 col-lg-6">	
			<input type="text" name="artist" placeholder="Исполнитель">
		</div>

		<div class="col-xs-12 col-lg-6">
			
			<?php echo $form->textField($model,'length', array('placeholder'=>'Длина трека')); ?>
			<?php echo $form->error($model,'length'); ?>
		</div>
	</div>

	<div class="row">
		<div class="col-xs-12 col-lg-6">
			<input type="text" name="albom" placeholder="Альбом">
		</div>
		<div class="col-xs-12 col-lg-6">
			<input type="text" name="year" placeholder="Год">
		</div>
	</div>


	<div class="row buttons">
		<div class="col-xs-12">
			<?php echo CHtml::submitButton($model->isNewRecord ? 'добавить новый трек' : 'Save'); ?>
		</div>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->

