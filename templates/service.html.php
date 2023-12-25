<div class="row">
  <div class="col-s-2 col-2" ></div>
    <div class="col-s-4 col-4 ">
        <h2>Servicii</h2>
        <table>
          <tr>
            <th>Denumire</th>
            <th>Pret</th>         
          </tr>
        <?php foreach($services as $service): ?>
          <!-- <?php if($service->category == 1):?> -->
            <tr>
              <td><?=$service->servicename?></td>
              <td><?=$service->price?></td>            
            </tr>
          <!-- <?php endif;?>          -->
        <?php endforeach; ?>
        </table>
      </div>
         <div class="col-s-4 col-4 "><img src="/img/SE5000.jpg" width="300"></div>
    <div class="col-s-2 col-2" ></div>
</div>


