// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import { initMapbox } from '../plugins/init_mapbox';

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
const map = document.getElementById("map")
const icon = document.querySelector('#map-toggle')
const gridContainer = document.querySelector(".chef-card-grid-container")
const chefFlexContainer = document.querySelector(".chef-flex-container")
const gridIcon = document.querySelector("#grid-icon")
const mapContainer = document.querySelector(".map-container")

// Media Queries
const iphone = window.matchMedia('(max-width: 400px)')


const insertMap = () => {
  // if(gridContainer.classList.contains("toggle-single-column")){
  //   gridContainer.classList.remove("toggle-single-column")
  // }else{
  //   gridContainer.classList.add("toggle-single-column")
  // }

  // if(gridContainer.classList.contains("toggle-half-width")){
  //   gridContainer.classList.remove("toggle-half-width")
  // }else{
  //   gridContainer.classList.add("toggle-half-width")
  // }

  // if(map.classList.contains("toggle-hide-content")){
  //   map.classList.remove("toggle-hide-content")
  // }else{
  //   map.classList.add("toggle-hide-content")
  // }

  // if(chefFlexContainer.classList.contains("toggle-flex")){
  //   chefFlexContainer.classList.remove("toggle-flex")
  // }else{
  //   chefFlexContainer.classList.add("toggle-flex")
  // }

  // if(iphone.matches){
  //   map.classList.toggle("toggle-hide-content")
  //   mapContainer.classList.toggle("toggle-hide-content")
  //   mapContainer.classList.toggle("toggle-hide-content")
  //   icon.classList.toggle("toggle-hide-content")
  //   gridIcon.classList.toggle("toggle-hide-content")
  // }else{
    gridContainer.classList.toggle("toggle-single-column")
    gridContainer.classList.toggle("toggle-half-width")
    map.classList.toggle("toggle-hide-content")
    mapContainer.classList.toggle("toggle-hide-content")
    chefFlexContainer.classList.toggle("toggle-flex")
    icon.classList.toggle("toggle-hide-content")
    gridIcon.classList.toggle("toggle-hide-content")
  // }

  
  console.log("clicked")
}

icon.addEventListener('click', insertMap)
gridIcon.addEventListener('click', insertMap)


document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  initMapbox();
});
