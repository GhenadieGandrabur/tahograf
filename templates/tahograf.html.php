<div class="row">  
  <div class="col-s-2 col-2"></div>
  <div class="col-s-8 col-8 ">
  <?php include __DIR__."/../includes/advertising.php" ?>
    <h2>Tahografe si accesorii</h2>
    <?php foreach ($allproducts as $product) : ?>
   
        <div class="col-s-4 col-4">
          <div class="cardhome">
            <img src="/img/<?= trim($product->code) ?>.jpg" alt="<?= $product->title ?>">

            <div id="myModal" class="modal">
              <div class="modal-content-wrapper">
                <span class="close">&times;</span>
                <img class="modal-content" id="img01">
                <div id="caption"></div>
              </div>
            </div>

            <div class="describehome">
              <p class="nowrap"> <?= $product->title ?></p>
              <p>Cod: <?= $product->code ?></p>
              <p>Producator: <?= $product->producer_name ?> </p>
              <p><b>Pret:
                  <?php
                  if (!empty($product->price)) {
                    echo   $product->price . ' lei TVA inclus.';
                  } else {
                    echo  '-';
                  }
                  ?>
                </b></p>
            </div>
          </div>
        </div>
     
    <?php endforeach; ?>
  </div>
  <div class="pager">
    <?php for($i = 0; $i < $totalPages; $i++): ?>
      <a style="border:1px solid; padding:10px; margin:2px;" href="/tahografe?page=<?=$i?>"><?=$i+1?></a>
    <?php endfor; ?>
  </div>
  <div class="col-s-2 col-2"></div>
</div>
<?php include __DIR__."/../includes/advertising.php" ?>
<script src="/myjs/modal.js"></script>