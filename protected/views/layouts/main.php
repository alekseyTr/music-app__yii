<?php /* @var $this Controller */ ?>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="language" content="en">

	<!-- blueprint CSS framework -->
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/screen.css" media="screen, projection">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/print.css" media="print">
	<!--[if lt IE 8]>
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/ie.css" media="screen, projection">
	<![endif]-->

	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/main.css">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/form.css">

	<title><?php echo CHtml::encode($this->pageTitle); ?></title>
</head>

<body>

<div id="page">

	<div id="header">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<p class="app-name"><?php echo CHtml::encode(Yii::app()->name); ?></p>
				</div>
			</div>
		</div>
	</div><!-- header -->
	<header class="main-header">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<h1 class="header-title">Музыка всегда с тобой</h1>
					<div class="header-img">
						<img src="<?= Yii::app()->request->baseUrl.'/images/header-main-img.png' ?>" alt="Гитара">
					</div>
				</div>
			</div>
		</div>
	</header>

	<?php echo $content; ?>


	<div id="footer">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<p class="author">Aleksey Travin | 2016</p>
				</div>
			</div>
		</div>
	</div><!-- footer -->

</div><!-- page -->

</body>
</html>
