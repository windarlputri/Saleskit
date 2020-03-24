
<body>
	<h1>Perkalian </h1>
	<p>Silahkan masukan data berikut :</p>
	<ul>
		    <?php echo form_open('blog/perkalian'); ?>
		    <?php echo form_input('v1', $v1); ?> x
		    <?php echo form_input('v2', $v2); ?> <br>
		    <p><?php echo validation_errors(); ?></p>
		     
		    <?php echo form_submit('submit', 'Hitung'); ?>
		    <?php echo form_close(); ?> <br>
		     
		    Hasil : <?php echo $hasil; ?>
	</ul>
	 
	<p><?php echo anchor('blog', 'Home'); ?></p>
	<p> Page endered in {elapsed_time} second </p>
</body>