<div class="row"> 
  <div class="col-s-2 col-2" ></div>
  <div class="col-s-8 col-8 ">
      <h2>Radio vhf/uhf </h2>
      <?php foreach($allproducts as $product): ?>
        <?php if($product['taho']->category_id == 4):?>
            <div class="col-s-4 col-4">
                <div class="cardhome">
                    <img src="/img/<?=trim($product['taho']->code)?>.jpg" alt="<?=$product['taho']->title?>" >

                     <div id="myModal" class="modal">
                        <div class="modal-content-wrapper">
                          <span class="close">&times;</span>
                          <img class="modal-content" id="img01">
                          <div id="caption"></div>
                        </div>
                      </div>
                    
                    <div class="describehome">
                      <p> <?=$product['taho']->title?></p>               
                      <p>Cod: <?=$product['taho']->code?></p>
                      <p>Producator: <?=$product['producer']->name?> </p> 
                      <p><b>Pret: 
                      <?php 
                      if(!empty($product['taho']->picture))
                      {
                      echo   $product['taho']->picture . ' lei TVA inclus.';
                      }else{
                      echo  '-';
                      }
                      ?>
                      </b></p>
                    </div>                 
                </div>
              </div>
      <?php endif;?>
      <?php endforeach; ?> 
    </div>
</div>
<script src="/myjs/modal.js"></script>

