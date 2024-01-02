<div class="row">
  <div class="col-s-2 col-2"></div>
  <div class="col-s-8 col-8 ">
      <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-7188583604227224"
        crossorigin="anonymous"></script>
    <!-- Tahograf header -->
    <ins class="adsbygoogle"
        style="display:inline-block;width:728px;height:90px"
        data-ad-client="ca-pub-7188583604227224"
        data-ad-slot="6541643188"></ins>
    <script>
        (adsbygoogle = window.adsbygoogle || []).push({});
    </script>
    <h2>Radio CB si accesorii</h2>
    <?php foreach ($allproducts as $product) : ?>
      <?php if ($product['taho']->category_id == 3) : ?>
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
              <p style="white-space: nowrap; text-overflow: ellipsis; overflow-x: hidden;"> <?= $product['taho']->title ?></p>
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
</div>
<script src="/myjs/modal.js"></script>