<div class="row"> 
      <div class="col-s-2 col-2" ></div>

      <div class="col-s-8 col-8 ">
              <h2>Radio VHF/UHF si accesorii</h2>
            <?php foreach($tahos as $taho): ?>

            <?php if($taho->category_id == 4):?>

                <div class="col-s-4 col-4">
                    <div class="cardhome">
                        <img src="/img/<?=$taho->code?>.jpg" alt="VDO" >
                        <h3> <?=$taho->title?></h3> 
                        <ul>
                          <li><p>cod: <?=$taho->code?> </p></li>
                          <li><p>Producator: <?=$taho->producer_id?> </p> </li>
                          <li style="background-color: orange; padding:5px;">Pret: <?=$taho->picture?> lei </li>
                        </ul>                   
                    </div>
                </div>

            <?php endif;?>
            <?php endforeach; ?>
        </div>
</div>
