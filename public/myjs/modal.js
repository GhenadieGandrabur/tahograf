// Get modal element
var modal = document.getElementById('myModal');

// Get modal image and caption
var modalImg = document.getElementById("img01");
var captionText = document.getElementById("caption");

// Attach click event to each image
document.querySelectorAll('.cardhome img').forEach(img => {
  img.onclick = function() {
    modal.style.display = "block";
    modalImg.src = this.src;
    captionText.innerHTML = this.alt;
  }
});

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
span.onclick = function() { 
  modal.style.display = "none";
}