<div class="container"> 
	<div class="row">
		<div class="col-3">
			<div class="box-categori side_bar_box">
			<?php
						 $results = $bd->select($link,'catigories');
						 foreach ($results as $result) {
						echo'<a href="#" class="btn-catigories">'.$result['name_catigories'].'</a> ('.$result['all_p'].')<br>';
						 }
			?>
			</div>
		</div>
		<div class="col-9">
			<div class="box-box-filter side_bar_box">
				<div class="hide_box" style="display: none"><?=$_GET['catigories']?></div>
				<div class="row justify-content-around">
							<select>
						  <option class="btn-filter" value="prise|ASC">Дешёвые</option>
						  <option class="btn-filter" value="prise|DESC">Дорогие</option>
							</select>
							<select>
						  <option class="btn-filter" value="name|ASC">A</option>
						  <option class="btn-filter" value="name|DESC">Z</option>
							</select>
							<select>
						  <option class="btn-filter" value="data|DESC">New</option>
						  <option class="btn-filter" value="data|ASC">Old</option>
							</select>
				</div>
			</div>
			<div class="products">
				<?php
				if($_GET['catigories'] == 'All'){
			$results = $bd->select_filter($link,'products',$_GET['table'],$_GET['ASC']);
				}else{
			$results = $bd->select_where($link,$_GET['catigories'],$_GET['table'],$_GET['ASC']);
				}
				 foreach ($results as $result):?> 
				<div class="box-product">
					<div class="box-img">
						<img src="../../assets/img/<?=$result['img']?>" alt="">
					</div>
					<div class="box-info">
						<div class="name"><?=$result['name']?></div>
						<div class="data"><?=$result['data']?></div>
						<div class="row justify-content-around">
							<div class="prise"><?=$result['prise']?> UA</div>
						<div class="btn-buy" data-name='<?=$result['name']?>' data-img='<?=$result['img']?>' data-data='<?=$result['data']?>' data-prise='<?=$result['prise']?>'>Buy</div>
						</div>
						</div>
				</div>
			<?php endforeach; ?>
			<div class="modal_box">
				
			</div>

			<!-- modal -->
			</div>
			<!-- col-9 -->
		</div>
		<!-- row -->
	</div>
	<!-- container -->
</div>