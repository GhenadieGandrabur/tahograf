<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Incalzitoare</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!--<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>-->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="style.css">
</head>
<body>  

    <?php include "includes/menu.php" ?>   
    <?php include "includes/advertising.php" ?>
   
    <div class="container">
        <h1 style="padding:10px;font-weight: bold; ">Incalzitoare</h1>
        <div class="row">
            <div class="col-sm-4 p-2">
                <div class="cardHeater">
                    <div class="picture">
                        <img id="img20" onmouseover="changephoto(this.id)" src="img/D2.jpg" alt="tahografe" width="300" height="200">
                        <img id="img20S" onmouseout="changephotoback(this.id)" src="img/D2PNG.png" alt="tahografe" width="350" height="200">
                    </div>
                    <div class="tittle">
                        <h3>Eberspaecher D2</h3>
                    </div>
                    <div class="describe">
                        <p>Incalzitor pentru camine medii de camioane, ntactoare si tehnica de constructii
                        </p>
                        <p>Disponibil 12V/24V</p>
                        <h5> -</h5>
                    </div>
                </div>
            </div>
			<div class="col-sm-4 p-2">
                <div class="cardHeater">
                    <div class="picture">
                        <img id="img21" onmouseover="changephoto(this.id)" src="img/AT2000STC.jpg" alt="tahografe" width="350" height="200">
                        <img id="img21S" onmouseout="changephotoback(this.id)" src="img/AT2000STCPNG.png" alt="tahografe" width="350" height="200">
                    </div>
                    <div class="tittle">
                        <h3>Webasto AT-2000STC </h3>
                    </div>
                    <div class="describe">
                        <p>
                            Este recomandat pentru camioane cu cabina mare si microbuse.
                        </p>
                        <p>Disponibil 12V/24V</p>
                        <h5> La comanda</h5>
                    </div>
                </div>
            </div>
			<div class="col-sm-4 p-2">
                <div class="cardHeater">
                    <div class="picture">
                        <img id="img22" onmouseover="changephoto(this.id)" src="img/planar.jpg" alt="tahografe" width="350" height="200">
                        <img id="img22S" onmouseout="changephotoback(this.id)" src="img/planarPNG.png" alt="tahografe" width="350" height="200">
                    </div>
                    <div class="tittle">
                        <h3>Planar 2D</h3>
                    </div>
                    <div class="describe">
                        <p>
                            Incalzitor fabricat in FR. Raportul calitate - pret il face cel mai solicitat 
                            incalzitor pentru camione cu cabina mica, tractoare si tehnica de constructie.
                        </p>
                        <p>Disponibil 12V/24V</p>
                        <h5>-</h5>   
                    </div>
                </div>
            </div>
			<div class="col-sm-4 p-2">
                <div class="cardHeater">
                    <div class="picture">
                        <img id="img23" onmouseover="changephoto(this.id)" src="img/D2.jpg" alt="tahografe" width="300" height="200">
                        <img id="img23S" onmouseout="changephotoback(this.id)" src="img/D2PNG.png" alt="tahografe" width="350" height="200">
                    </div>
                    <div class="tittle">
                        <h3>Eberspaecher D4</h3>
                    </div>
                    <div class="describe">
                        <p>
                            D4 este un incalzitor cu capacitatea de 4Wt.
                        </p>                      
                        <p>Disponibil 12V/24V</p>
                        <h5>-</h5>
                    </div>
                </div>
            </div>
			<div class="col-sm-4 p-2">
                <div class="cardHeater">
                    <div class="picture">
                        <img id="img24" onmouseover="changephoto(this.id)" src="img/AT2000STC.jpg" alt="tahografe" width="350" height="200">
                        <img id="img24S" onmouseout="changephotoback(this.id)" src="img/AT2000STCPNG.png" alt="tahografe" width="350" height="200">
                    </div>
                    <div class="tittle">
                        <h3>Air Top Evo 40/55 </h3>
                    </div>
                    <div class="describe">
                        <p>
                            Cel mai modern incalzitor produs de Webasto.
                        </p>
                        <p>Disponibil 12V/24V</p> 
                        <h5>La comanda</h5> 
                    </div>
                </div>
            </div>
			<div class="col-sm-4 p-2">
                <div class="cardHeater">
                    <div class="picture">
                        <img id="img25" onmouseover="changephoto(this.id)" src="img/planar.jpg" alt="tahografe" width="350" height="200">
                        <img id="img25S" onmouseout="changephotoback(this.id)" src="img/planarPNG.png" alt="tahografe" width="350" height="200">
                    </div>
                    <div class="tittle">
                        <h3>Planar d44 </h3>
                    </div>
                    <div class="describe">
                        <p>
                        Puternic si robust.
                        </p>
                        <p>Disponibil 12V/24V</p> 
                        <h5>-</h5>   
                    </div>
                </div>
            </div>

            
           
            

        </div>
    </div>
    <div id="myModal" class="modal">
        <span class="close">&times;</span>
        <img class="modal-content" id="img01">
        <div id="caption"></div>
    </div>
    <?php include "includes/advertising.php" ?>
    <?php include "includes/footer.php" ?>
    <script src="includes/main.js"></script>
    <script src="includes/popup.js"></script>
</body>

</html>