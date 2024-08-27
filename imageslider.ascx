<%@ Control Language="C#" AutoEventWireup="true" CodeFile="imageslider.ascx.cs" Inherits="Soucre_WebUserControl" %>

<style>
    /* Banner slider styling */
    .imageslider-content-css-container {
        width: 100%; /* Full width for a banner */
        max-width: 100%; /* Ensure no max width limit */
        height: 400px; /* Set a height for the banner */
        position: relative;
        margin: auto;
        overflow: hidden;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
    }

    .imageslider-content-css-slides {
        display: flex;
        width: 100%; /* Full width for each slide */
        transition: transform 0.5s ease-in-out;
    }

    .imageslider-content-css-slides img {
        width: 100%; /* Ensure image takes full width of the container */
        height: 100%; /* Set height for the image to match container */
        object-fit: cover; /* Scale the image to fit, preserving aspect ratio */
    }

    .imageslider-content-css-prev,
    .imageslider-content-css-next {
        cursor: pointer;
        position: absolute;
        top: 50%;
        width: auto;
        padding: 10px;
        color: white;
        background-color: rgba(0, 0, 0, 0.5);
        transform: translateY(-50%);
        font-size: 18px;
        border-radius: 5px;
    }

    .imageslider-content-css-prev {
        left: 10px;
    }

    .imageslider-content-css-next {
        right: 10px;
    }

    /* Dots navigation */
    .imageslider-content-css-dots {
        text-align: center;
        margin-top: 10px;
    }

    .imageslider-content-css-dots span {
        height: 12px;
        width: 12px;
        margin: 0 3px;
        background-color: #bbb;
        border-radius: 50%;
        display: inline-block;
        cursor: pointer;
    }

    .imageslider-content-css-dots .active {
        background-color: #717171;
    }
            .category{
            display:flex;
            padding-left:16%;

        }
        .category div img{

            padding-left:20px;
        }
         .pk{
            font-family:  'Mongolian Baiti';
                


           
        }
        .category div img:hover{
transform: scale(1.10); 
     transition: 650ms;  


        }
        .h1d{

            font-family:Gabriola;
            font-size:45px;
        }
</style>

<div class="imageslider-content-css-container">
    <div class="imageslider-content-css-slides" id="imageSlideSlider">
        <img src="Images/first.png" alt="Image 1" />
        <img src="Images/flat.png" alt="Image 2" />
        <img src="Images/Get Flats.png" alt="Image 3" />
    </div>
    <!-- Arrows -->
    <a class="imageslider-content-css-prev" onclick="moveImageSlide(-1)">&#10094;</a>
    <a class="imageslider-content-css-next" onclick="moveImageSlide(1)">&#10095;</a>
</div>

<!-- Dots -->
<div class="imageslider-content-css-dots" id="imageSlideDots">
    <span onclick="setImageSlide(1)"></span>
    <span onclick="setImageSlide(2)"></span>
    <span onclick="setImageSlide(3)"></span>
</div>

<br />


<!-- imgs -->

 <h1 align="center" class="h1d">Choose Category</h1>
 <div class="category">
 <div>
    <a href="http://google.com"> <img src="https://static.99acres.com/universalhp/img/d_hp_buy.webp" /></a>
     <b><p class="pk" align="center">Buy Homes</p></b>
 </div>
 <div>
     <img src="https://static.99acres.com/universalhp/img/d_hp_rent.webp" />
     <b> <p class="pk" align="center">Luxury Flats</p></b>
 </div>
 <div>
     <img src="https://static.99acres.com/universalhp/img/d_hp_ppf.webp" />
     <b> <p class="pk" align="center">Invest Now</p></b>
 </div>
 <div>
     <img src="https://static.99acres.com/universalhp/img/d_hp_pg.webp" />
     <b> <p class="pk" align="center">Buy Homes</p></b>
 </div>
 <div>
     <img src="https://static.99acres.com/universalhp/img/d_hp_rent.webp" />
     <b> <p class="pk" align="center">Request</p></b>
 </div>
 </div>







<script>
    // JavaScript for Image Slider with unique class names
    var imageSlideIndex = 0;
    var imageSlides = document.querySelectorAll('.imageslider-content-css-slides img');
    var imageDots = document.querySelectorAll('.imageslider-content-css-dots span');

    function showImageSlides() {
        for (var i = 0; i < imageSlides.length; i++) {
            imageSlides[i].style.display = 'none'; // Hide all slides
        }
        imageSlideIndex++;
        if (imageSlideIndex > imageSlides.length) { imageSlideIndex = 1; }
        for (var i = 0; i < imageDots.length; i++) {
            imageDots[i].className = imageDots[i].className.replace(' active', '');
        }
        imageSlides[imageSlideIndex - 1].style.display = 'block'; // Show current slide
        imageDots[imageSlideIndex - 1].className += ' active';
        setTimeout(showImageSlides, 4000); // Change slide every 4 seconds
    }

    function moveImageSlide(n) {
        imageSlideIndex += n - 1;
        if (imageSlideIndex < 0) { imageSlideIndex = imageSlides.length - 1; }
        else if (imageSlideIndex >= imageSlides.length) { imageSlideIndex = 0; }
        setImageSlide(imageSlideIndex + 1);
    }

    function setImageSlide(n) {
        for (var i = 0; i < imageSlides.length; i++) {
            imageSlides[i].style.display = 'none';
        }
        for (var i = 0; i < imageDots.length; i++) {
            imageDots[i].className = imageDots[i].className.replace(' active', '');
        }
        imageSlides[n - 1].style.display = 'block';
        imageDots[n - 1].className += ' active';
    }

    // Initialize the slider on page load
    document.addEventListener('DOMContentLoaded', showImageSlides);
</script>

