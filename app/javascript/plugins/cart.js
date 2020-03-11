// (function(){
//   (".panier").on("click", function() {
//     (".shopping-cart").fadeToggle( "fast");
//   });

const b = document.querySelector('.dropdown-menu');
const a = document.querySelector('.panier');

a.addEventListener("click", (b) => {
 b.fadeToggle("slow");
});


