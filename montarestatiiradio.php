<!DOCTYPE html>
<html>
  <head>

    <title>Montarestatiiradio</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <link rel="stylesheet" href="style.css">
	  
	  
  </head>
  <body>
	    <?php include "includes/menu.php" ?> 
	    <?php include "includes/advertising.php" ?>

	    <div class="container">
        <div class='container center'><h3>Montare statii radio pe camioane</h3></div>
        <div class="row">
            <div class="col-sm-4 p-2">
                <div class="card">
                    <div class="picture ">
                        <img id="img17" onclick="popup(this.id)" src="img/radio/cb_antenna.jpg" alt="antenna" width="100%" height="200">
                    </div>
                    <div class="tittle">
                        <h3>Antenna President </h3>
                    </div>
                    
                </div>
            </div>
			<div class="col-sm-4 p-2">
                <div class="card">
                    <div class="picture ">
                        <img id="img18" onclick="popup(this.id)" src="img/radio/cb_antenna2.jpg" alt="Cb antena" width="100%" height="200">
                    </div>
                    <div class="tittle">
                        <h3>Antenna Aiova</h3>
                    </div>
                   
                </div>
            </div>
						<div class="col-sm-4 p-2">
                <div class="card">
                    <div class="picture ">
                        <img id="img19" onclick="popup(this.id)" src="img/radio/cb_antenna3.jpg" alt="Cb antena" width="100%" height="200">
                    </div>
                    <div class="tittle">
                        <h3>Antenna Aiova</h3>
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
				  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="includes/main.js"></script>
    <script src="popup.js"></script>
  </body>
</html>
