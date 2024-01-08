<div class="row">
  <div class="col-s-2 col-2"></div>
  <div class="col-s-8 col-8 ">
  <?php include __DIR__."/../includes/advertising.php" ?>
    <h2>Tahografe si accesorii</h2>
    <?php foreach ($allproducts as $product) : ?>
      <?php if ($product['taho']->category_id == 1) : ?>
        <div class="col-s-4 col-4">
          <div class="cardhome">
            <img src="/img/<?= trim($product['taho']->code) ?>.jpg" alt="<?= $product['taho']->title ?>">

            <div id="myModal" class="modal">
              <div class="modal-content-wrapper">
                <span class="close">&times;</span>
                <img class="modal-content" id="img01">
                <div id="caption"></div>
              </div>
            </div>

            <div class="describehome">
              <p class="nowrap"> <?= $product['taho']->title ?></p>
              <p>Cod: <?= $product['taho']->code ?></p>
              <p>Producator: <?= $product['producer']->name ?> </p>
              <p><b>Pret:
                  <?php
                  if (!empty($product['taho']->price)) {
                    echo   $product['taho']->price . ' lei TVA inclus.';
                  } else {
                    echo  '-';
                  }
                  ?>
                </b></p>
            </div>
          </div>
        </div>
      <?php endif; ?>
    <?php endforeach; ?>
  </div>
  <div class="col-s-2 col-2"></div>
</div>
<?php include __DIR__."/../includes/advertising.php" ?>
<script src="/myjs/modal.js"></script>