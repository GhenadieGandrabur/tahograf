<div class="row">
  <div class="col-s-2 col-2"></div>
  <div class="col-s-8 col-8 ">
    <div style="display:flex;align-items: center; padding:10px;">
      <h2 style="margin: 0; padding-right: 20px;">Incalzitoare si accesorii</h2>
      <?php $userSelectedProducer = $_GET['producer'] ?? 'Eberspaecher'; ?>
      <form id="producerForm" method="get">
        <select name="producer" onchange="submitForm()" style="padding: 5px; border-radius: 5px;">
          <option value="Eberspaecher" <?= $userSelectedProducer == 'Eberspaecher' ? 'selected' : '' ?>>Eberspaecher</option>
          <option value="Webasto" <?= $userSelectedProducer == 'Webasto' ? 'selected' : '' ?>>Webasto</option>
        </select>
      </form>
    </div>
    <?php foreach ($allproducts as $product) : ?>
      <?php if ($product['taho']->category_id == 2 && $product['producer']->name == $userSelectedProducer) : ?>

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
</div>
<script src="/myjs/modal.js"></script>
<script>
  function submitForm() {
    document.getElementById('producerForm').submit();
  }
</script>