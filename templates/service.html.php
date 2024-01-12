
<div class="col-s-12 col-12">

      <div class="col-s-2 col-2 "></div>

      <div class="col-s-8 col-8 ">

            <?php include __DIR__."/../includes/advertising.php" ?>          

            <h1 class="tc">Lista preturilor pentru servicii</h1>           

            <h2>Tahografe</h2>
                <table>
                      <tr>
                        <th style="width:75%">Denumire</th>
                        <th>Unitate</th>
                        <th>Pret</th>
                      </tr>
                      <?php foreach ($services as $service) : ?>
                        <?php if ($service->category == 1) : ?>
                          <tr>
                          <td><?= $service->servicename ?></td>
                          <td><?= $service->unit?></td>
                          <td><?= $service->price = $service->price == 0 ? "-" : $service->price; ?>
                          </td>
                          </tr>
                        <?php endif; ?>
                      <?php endforeach; ?>
                </table>
         


            <h2>Incalzitoare</h2>

            <table>
                <tr>
                    <th style="width:75%">Denumire</th>
                    <th>Unitate</th>
                    <th>Pret</th>
                </tr>
                <?php foreach ($services as $service) : ?>
                    <?php if ($service->category == 2) : ?>
                        <tr>
                        <td><?= $service->servicename ?></td>
                        <td><?= $service->unit ?></td>
                        <td><?= $service->price = $service->price == 0 ? "-" : $service->price; ?>
                        </tr>
                    <?php endif; ?>
                <?php endforeach; ?>
            </table>
           
            <h2>Radio</h2>

            <table>
                <tr>
                    <th style="width:75%">Denumire</th>
                    <th>Unitate</th>
                    <th>Pret</th>
                </tr>
                <?php foreach ($services as $service) : ?>
                    <?php if ($service->category == 3) : ?>
                    <tr>
                    <td><?= $service->servicename ?></td>
                    <td><?= $service->unit ?></td>
                    <td><?= $service->price = $service->price == 0 ? "-" : $service->price; ?>
                    </tr>
                    <?php endif; ?>
                <?php endforeach; ?>
            </table>

            <h2>Frig</h2>

            <table>
                <tr>
                    <th style="width:75%">Denumire</th>
                    <th>Unit</th>
                    <th>Pret</th>
                </tr>
                <?php foreach ($services as $service) : ?>
                  <?php if ($service->category == 5) : ?>
                  <tr>
                    <td><?= $service->servicename ?></td>
                      <td><?= $service->unit ?></td>
                      <td><?= $service->price = $service->price == 0 ? "-" : $service->price; ?>
                  </tr>
                  <?php endif; ?>
                <?php endforeach; ?>
            </table>
         

            <?php include __DIR__."/../includes/advertising.php" ?>
      </div>
      <div class="col-s-2 col-2"></div>
</div>
