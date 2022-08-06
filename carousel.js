// // let i = 0;
// // for(let li of carousel.querySelectorAll('li')){
// //     li.style.position = "relative";
// //     // li.insertAdjacentHTML('beforeend',`<span style="position:absolute;left:0;top:0">${i}</span>`);
// //     i++;
// // }

// let width = 350;
// let count = 1;

// let list = carousel.querySelector('ul');
// let listItems = carousel.querySelectorAll('li');
// var i = 0;
// if (i > listItems.length){

// }

// let position = 0;


// carousel.querySelector('.prev').onclick = function(){
//     i--;
//     position += width * count;
//     position = Math.min(position,0);
//     list.style.marginLeft = position + 'px';
// };

// carousel.querySelector('.next').onclick = function() {
//     i++;
//     position -= width * count;
//     position = Math.max(position, -width * (listItems.length - count));
//     list.style.marginLeft = position + 'px';
//   };
let images = document.querySelectorAll('imgs');
let current = 0;

function slider(){
    for (let i = 0;i < images.length; i++){
        images[i].classList.add('.opacity0');
    }
    images[current].classList.remove('.opacity0');
    current++;
}
let test= document.getElementsByClassName('.picture img');
test.addEventListener("mouseover",slider(),false)