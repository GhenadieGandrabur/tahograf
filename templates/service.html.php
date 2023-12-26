<div class="col-s-12 col-12 b" >
  <div class="col-s-2 col-2 b" style="height:500px;" ></div>

    <div class="col-s-8 col-8 b" >      
            <div class="col-s-4 col-4 ">
              <h2>Servicii</h2>
              <table>
                <tr>
                  <th>Denumire</th>
                  <th>Pret</th>         
                </tr>
              <?php foreach($services as $service): ?>
                <?php if($service->category == 1):?> 
                  <tr>
                    <td><?=$service->servicename?></td>
                    <td><?=$service->price?></td>            
                  </tr>
                <?php endif;?>          
              <?php endforeach; ?>
              </table>
            </div>

          <div class="col-s-4 col-4 ">
            <img src="/img/SE5000.jpg" width="300">
          </div>
    </div>

  <div class="col-s-8 col-8 b" >    
     
         <div class="col-s-4 col-4 ">
            <img src="/img/SE5000.jpg" width="300">
          </div>
      
            <div class="col-s-4 col-4 ">
              <h2>Incalzitoare</h2>
              <table>
                <tr>
                  <th>Denumire</th>
                  <th>Pret</th>         
                </tr>
              <?php foreach($services as $service): ?>
                <?php if($service->category == 2):?> 
                  <tr>
                    <td><?=$service->servicename?></td>
                    <td><?=$service->price?></td>            
                  </tr>
                <?php endif;?>          
              <?php endforeach; ?>
              </table>
            </div>       
    </div>

  <div class="col-s-8 col-8 b " >    
      
      
            <div class="col-s-4 col-4 ">
              <h2>Statii radio</h2>
              <table>
                <tr>
                  <th>Denumire</th>
                  <th>Pret</th>         
                </tr>
              <?php foreach($services as $service): ?>
                <?php if($service->category == 1):?> 
                  <tr>
                    <td><?=$service->servicename?></td>
                    <td><?=$service->price?></td>            
                  </tr>
                <?php endif;?>          
              <?php endforeach; ?>
              </table>
            </div>

          <div class="col-s-4 col-4 ">
            <img src="/img/SE5000.jpg" width="300">
          </div>
        </div>
      
      
      
      
      
      
      <div class="col-s-2 col-2 b" style="height:500px;"></div>
    </div>
    
    




