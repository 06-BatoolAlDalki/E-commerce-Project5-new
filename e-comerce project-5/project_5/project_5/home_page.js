
var slidernumber = 0;
var images = ["Images/slider1.png", "Images/slider2.png", "Images/slider3.png"];
var pre = document.querySelector(".previous");
var next = document.querySelector(".next");
var slider_img = document.querySelector(".slider_container img");

pre.onclick = function () {
    if (slidernumber < 0) {
        slidernumber = images.length - 1;
    }
       
    else {
        slider_img.src = images[slidernumber];
        slidernumber--;
     }
}

next.onclick = function () {
    if (slidernumber == images.length) {
        slidernumber = 0;
    } else {
        slider_img.src = images[slidernumber];
        slidernumber++;
    }
}