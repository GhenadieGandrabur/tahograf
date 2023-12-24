 <div class="cap">
  <a href="/"><img src="img/Taho-logo.PNG"></a>
  <a href="tel:+37369113318"><i class="fa fa-mobile" style="font-size:20px"></i> +373 69113318</a>
</div>
<div class="col-s-12 col-12" style="display:flex;">
<div class="logo">
  <a href="/"><img src="img/Taho-logo.PNG"></a>
</div>
<div class="navbar" id="myNavbar">   
    <span class="menu">Menu</span>
    <a href="/">Home</a>    
    <div class="dropdown">
      <button class="dropbtn">Produse
        <i class="fa fa-caret-down"></i>
      </button>
      <div class="dropdown-content">
        <a href="/tahografe">Tahografe</a>
        <a href="/heaters">Incalzitoare</a>
        <a href="/radioCb">Radio CB</a>
        <a href="/radiovhfuhf">Radio vhf/uhf</a>
      </div>
    </div>
    <div class="dropdown">
      <button class="dropbtn">Servicii
        <i class="fa fa-caret-down"></i>
      </button>
      <div class="dropdown-content">
        <a href="#">Link 1</a>
        <a href="#">Link 2</a>
        <a href="#">Link 3</a>
      </div>
    </div>
    <a href="/">Contacte</a>
    
    <div class="phone">
        <a href="tel:+37369113318"><i class="fa fa-mobile" style="font-size:20px"></i> +373 69113318</a>
    </div>

     <a href="javascript:void(0);" class="icon" onclick="myFunction()"><i class="fa fa-bars"></i>
     </a>

</div>
</div>

<script>
  function myFunction() {
    var x = document.getElementById("myNavbar");
    if (x.className === "navbar") {
        x.className += " responsive";
    } else {
        x.className = "navbar";
    }
}
</script>