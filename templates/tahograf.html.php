<div>
  <div class="col-s-2 col-2"><?php include __DIR__ . "/../includes/advertising.php"?>
</div>

  <div class="col-s-8 col-8 ">

    <?php include __DIR__ . "/../includes/advertising.php" ?>
    <div class="flex">
      <h2 style="margin-left: 20px;"><?= $title ?></h2>

      <div class="searchbar">
        <form id="searchform">
          <input type="hidden" name="page" value="0">
          <input type="hidden" name="sort" value="<?= $sort ?>">          
          <?php foreach($producers ?? [] as $producer):?>
            <label for=""><?= $producer['name']?></label>
            <input type="checkbox" name="producer[]" value="<?=$producer['id']?>" <?=$producer['enabled'] ?? false ? 'checked': '' ?> onchange="document.getElementById('searchform').submit()">
          <?php endforeach;?>
          <div class="input-wrapper">
            <input type="text" name="search" class="input-text" placeholder="cautare" value="<?=$search?>">
            <input type="reset" value="❌" class="input-reset">
            <input type="submit" value="🔎" class="input-submit">
          </div>
        </form>
      </div>
    </div>
    <div class="flex">
    <div class="pager">
        <?php for ($i = 0; $i < $totalPages; $i++) : ?>
          <a class="<?= (($_GET['page'] ?? 0) == $i) ? 'active' : '' ?>" href="/<?= $url ?>?sort=<?= $sort ?>&search=<?=$search?>&page=<?= $i ?><?=$producerURI ?? ''?>"><?= $i + 1 ?></a>
        <?php endfor; ?>
      </div>
      <form id="sortform">
        <input type="hidden" value="<?=$search?>" name="search">
        <?php foreach($producers as $producer):?>
          <?php if($producer['enabled']):?>
            <input type="hidden" value="<?=$producer['id']?>" name="producer[]">
          <?php endif;?>
        <?php endforeach;?>
        <lable>Sortare dupa:</lable>
        <select onchange="document.getElementById('sortform').submit()" name="sort" style="padding:5px ;">
          <option value="title" <?= ($sort === 'title') ? 'selected checked' : '' ?>>Denumire</option>
          <option value="price" <?= ($sort === 'price') ? 'selected checked' : '' ?>>Pret</option>         
        </select>
      </form>     
    </div>
    <div>
      <?php foreach ($allproducts as $product) : ?>
        <div class="col-s-3 col-3">
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
              <p class="nowrap">Producator: <?= $product->producer_name ?> </p>
              <p>
                  <?php
                  if (!empty($product->price)) {
                    echo 'Pret:'.  $product->price . ' lei cu TVA';
                  } else {
                    echo  '<span style="color:#ffcd11;">Nu este in stoc</span>';
                  }
                  ?>
                </p>
            </div>
          </div>
        </div>

      <?php endforeach; ?>
    </div>
    <div class="pager">
      <?php for ($i = 0; $i < $totalPages; $i++) : ?>
        <a class="<?= (($_GET['page'] ?? 0) == $i) ? 'active' : '' ?>" href="/<?= $url ?>?sort=<?= $sort ?>&search=<?=$search?>&page=<?= $i ?><?=$producerURI ?? ''?>"><?= $i + 1 ?></a>
      <?php endfor; ?>
    </div>
  </div>
</div>
<div class="col-s-2 col-2"></div>
</div>




 <?php include __DIR__ . "/../includes/advertising.php" ?> 
<script src="/myjs/modal.js"></script>