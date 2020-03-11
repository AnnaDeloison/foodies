// (function(){
//   (".panier").on("click", function() {
//     (".shopping-cart").fadeToggle( "fast");
//   });

const recipes = document.querySelectorAll('.card-index')
const search = document.querySelector('.champ');


    if (search) {
    search.addEventListener('keyup', () => {
      recipes.forEach((recipe) => {
        const name = recipe.querySelector('.recipe-name').innerHTML;

        if (name.toLowerCase().includes(search.value)) {

           recipe.style.display = "block"
        }  else {
          recipe.style.display = "none"
        }
      })
    })
  }



