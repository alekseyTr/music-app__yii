<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
?>
<?php 
/**
 * 
 */
 class Tracks extends CFormModel
 {
 	public $track_name;
 	public $artists;
 	public $track_length;
 	public $albom;
 	public $year;
 	
 	private $_identify;

 	public function rules() {

 	}

} 
 ?>
<section class="track__add">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="form">
					<form action="#">
						<div class="row">
							<div class="col-xs-12">
								<input class="input-form" type="text" name="" id="" placeholder="Название трека">
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12 col-lg-6">
								<input class="input-form" type="text" name="" id="" placeholder="Исполнитель">
							</div>
							<div class="col-xs-12 col-lg-6">
								<input class="input-form" type="text" name="" id="" placeholder="Длина трека">
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12 col-lg-6">
								<input class="input-form" type="text" name="" id="" placeholder="Альбом">
							</div>
							<div class="col-xs-12 col-lg-6">
								<input class="input-form" type="text" name="" id="" placeholder="Год">
							</div>
						</div>
						<button class="btn">добавить новый трек</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- вытаскиваем из БД строки --><!-- TODO: перенести в model -->
<?php
$connection=Yii::app()->db;
$sql = 'SELECT name_artist 
FROM {{artists}}
JOIN {{tracks}}';
$dataReader = $connection->createCommand($sql)->query();
while (($row=$dataReader->read())!==false) {
	foreach ($row as $value) {
		// echo "$value";
	}
}
		// $dataReader->bindColumn(1, $id_artist);
		// $dataReader->bindColumn(2, $name_artist);

		// while ($dataReader->read()!==false) {
		// 	echo "<p> $id_artist $name_artist</p>";
		// }
					// echo "<pre>";
					// var_dump($dataReader);
					// echo "</pre>";
?>
<section class="track__list">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<form action="#">
					<input type="search" placeholder="Поиск">
				</form>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12">
				
				<table class="list-all-items">
					
					<tr class="list-item">
						<td>1</td>
						<td>
							Название трека <br>
							<span class="accent">Исполнитель</span>
						</td>
						<td>2.34</td>
						<td>Название альбома</td>
						<td>2013</td>
					</tr>					
				</table>

			</div>
		</div>
	</div>
</section>