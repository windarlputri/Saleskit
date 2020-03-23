<!-- <img class="img-responsive" style="width: 100%" src="<?= base_url() ?>assets\uploads\Slide8.png"> -->
<!-- <div class="col-md-6"> -->
<!-- <div class="box box-solid"> -->
<!-- <div class="box-header with-border"> -->
<!-- <h3 class="box-title">Carousel</h3> -->
<!-- </div> -->
<!-- /.box-header -->
<div class="box-body">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
            <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
            <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
        </ol>
        <div class="carousel-inner">
        <?php
            for ($i = 0; $i < count($gambar); $i++) { $aktif= ($i==0)?"active":""; ?>
                <div class="item <?=$aktif?>">
                    <img class="img-responsive" style="width: 100%" src="<?= base_url() ?>uploads\gambar\<?= $gambar[$i]->gambar ?>">
                    <div class="carousel-caption">
                        <!-- First Slide -->
                    </div>
                </div>
            <?php } ?>

            <!-- <div class="item">
            <img class="img-responsive" style="width: 100%" src="<?= base_url() ?>assets\uploads\Slide12.png" alt="Second slide">

                <div class="carousel-caption">
                    Second Slide
                </div>
            </div>
            <div class="item">
            <img class="img-responsive" style="width: 100%" src="<?= base_url() ?>assets\uploads\Slide13.png" alt="Third slide">

                <div class="carousel-caption">
                    Third Slide
                </div>
            </div> -->
        </div>
        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
            <span class="fa fa-angle-left"></span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
            <span class="fa fa-angle-right"></span>
        </a>
    </div>
</div>
<!-- /.box-body -->
<!-- </div> -->
<!-- /.box -->
<!-- </div> -->