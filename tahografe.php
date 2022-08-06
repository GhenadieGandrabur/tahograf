<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tahograf srl</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/13cb9483aa.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="style.css">
  
</head>
<body>  
    <?php include "includes/menu.php" ?>   
    <?php include "includes/advertising.php" ?>   
    <div class="container">
        <h1 style="padding:10px;font-weight: bold; ">Tahografe</h1>
        <div class="row">
            <div class="col-sm-4 p-2">
                <div class="card">
                    <div class="picture">
                        <img id="img1" onmouseover="changephoto(this.id)" src="img/VDO1381NEW.jpg" alt="tahografe"  width="350" height="150px" style="margin-bottom:50px;">
                        <img id="img1S" onmouseout="changephotoback(this.id)" src="img/VDO1381NEWPNG.png" alt="tahografe"  width="350" height="200">
                    </div>
                    <div class="tittle">
                        <h3>VDO 1381 </h3>
                    </div>
                    <div class="describe">
                        <p>Tahograf digital. Deobicei se completeaza din uzina camioanele Mercedes, MAN 
                     si a.
                        </p>
                        <h5>-</h5>
                    </div>
                </div>
            </div>
			<div class="col-sm-4 p-2">
                <div class="card">
                    <div class="picture">
                        <img id="img2" onmouseover="changephoto(this.id)" src="img/SE5000NEW20.jpg" alt="tahografe" width="350" height="150" style="margin-bottom:50px;">
                        <img id="img2S" onmouseout="changephotoback(this.id)" src="img/SE5000NEWPNG200.jpg" alt="tahografe" width="350" height="200">
                    </div>
                    <div class="tittle">
                        <h3>SE 5000 </h3>
                    </div>
                    <div class="describe">
                        <p>Tahograf dijital. Este montat deobicei pe Scania.
                        </p>
                        <h5>-</h5>
                    </div>
                </div>
            </div>
			<div class="col-sm-4 p-2">
                <div class="card">
                    <div class="picture">
                        <img id="img3" onmouseover="changephoto(this.id)" src="img/VDO1324NEW20.jpg" alt="tahografe" width="350" height="150" style="margin-bottom:50px;">
						
                        <img id="img3S" onmouseout="changephotoback(this.id)" src="img/VDO1324NEWPNG.jpg" alt="tahografe" width="350" height="200" >
                    </div>
                    <div class="tittle">
                        <h3>VDO 1324 </h3>
                    </div>
                    <div class="describe">
                        <p>Tahograf modular analogic. Nu se mai produce dar ma sunt multe camioane care le folosesc.
                        </p>
                    </div>
                </div>
            </div>
			<div class="col-sm-4 p-2">
                <div class="card">
                    <div class="picture">
                        <img id="img4" onmouseover="changephoto(this.id)" src="img/VDO1318.jpg" alt="tahografe" width="200" height="200">
                        <img id="img4S" onmouseout="changephotoback(this.id)" src="img/VDO1318PNG.png" alt="tahografe" width="300" height="200">
                    </div>
                    <div class="tittle">
                        <h3>VDO 1318 </h3>
                    </div>
                    <div class="describe">
                        <p>
                            Tahograf analogic. Nu se mai produce dar se mai poate repara.
                        </p>
                    </div>
                </div>
            </div>
			<div class="col-sm-4 p-2">
                <div class="card">
                    <div class="picture">
                        <img id="img5" onmouseover="changephoto(this.id)" src="img/EGK100.jpg" alt="tahografe" width="350" height="200">
                        <img id="img5S" onmouseout="changephotoback(this.id)" src="img/EGK100PNG.png" alt="tahografe" width="350" height="200">
                    </div>
                    <div class="tittle">
                        <h3>EGK100 </h3>
                    </div>
                    <div class="describe">
                        <p>
                            Tahograf analogic construit pentru VOLVO. Nu se mai produce si nu se mai repara.
                        </p>
                    </div>
                </div>
            </div>
			<div class="col-sm-4 p-2">
                <div class="card">
                    <div class="picture">
                        <img id="img6" onmouseover="changephoto(this.id)" src="img/VDO1314.jpg" alt="tahografe" width="200" height="200">
                        <img id="img6S" onmouseout="changephotoback(this.id)" src="img/VDO1314PNG.png" alt="tahografe" width="350" height="200">
                    </div>
                    <div class="tittle">
                        <h3>VDO 1314 </h3>
                    </div>
                    <div class="describe">
                        <p>
                            Primul model de tahograf analogic.  Nu se mai produce si nu se mai repara. 
                        </p>
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