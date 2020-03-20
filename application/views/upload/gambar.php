<?php

echo '<div class="row">';
$k = 'gambar';
$img = rb_system_logo(200);

echo '<div class="col-md-6">';
echo validation_errors();
echo form_open_multipart($url . "upload_g", array('class' => 'form-horizontal'));
?>
<input type="hidden" name="type" value="<?= $img; ?>" />
<div class="form-group required">
	<label class="control-label col-sm-2">Gambar 1</label>
	<div class="col-md-4">
		<input type="file" name="gambar[]" accept=".png, .jpg, .jpeg" />
	</div>
</div>
<div class="form-group required">
	<label class="control-label col-sm-2">Gambar 2</label>
	<div class="col-md-4">
		<input type="file" name="gambar[]" accept=".png, .jpg, .jpeg" />
		
	</div>
</div>
<div class="form-group required">
	<label class="control-label col-sm-2">Gambar 3</label>
	<div class="col-md-4">
		<input type="file" name="gambar[]" accept=".png, .jpg, .jpeg" />
	</div>
</div>
<div class="form-group required">
	<label class="control-label col-sm-2">Gambar 4</label>
	<div class="col-md-4">
		<input type="file" name="gambar[]" accept=".png, .jpg, .jpeg" />
	</div>
</div>
<div class="form-group required">
	<label class="control-label col-sm-2">Gambar 5</label>
	<div class="col-md-4">
		<input type="file" name="gambar[]" accept=".png, .jpg, .jpeg" />
	</div>
</div>
<div class="form-group required">
	<label class="control-label col-sm-2">Menu</label>
	<div class="col-md-4">
		<select name="menu" id="menu">
			<?php foreach ($list_menu as $key => $value) { ?>
				<option value="<?=$value->file?>"><?=$value->menu_title?></option>
			<?php } ?>
		</select>
	</div>
</div>


<?php
?>
<div class="form-group ">
	<label class="control-label col-sm-2">&nbsp;</label>
	<div class="col-md-10">
		<button type="submit" class="btn btn-primary btn-flat">Upload</button>
	</div>
</div>
<?php
echo form_close();
echo '</div>';

echo '</div>';
?>

<!--<img class="img-responsive" style="width: 100%" src="<?= base_url() ?>assets\uploads\Slide27.png"

<img src="<?php echo base_url('uploads/userphoto/' . $row->photo . ''); ?>" height="50px" width="50px"> -->