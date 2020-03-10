const filterIndex = document.querySelectorAll("input[type='radio']");
  filterIndex.forEach((radio) => {
    radio.addEventListener('change', () => {
      let maladie = radio.value;
      console.log(maladie);
      fetch(`/recipes/cards?maladie=${radio.value}`)
        .then(function(response) {
          return response.text();
        })
        .then(function(html) {
          document.querySelector('.cards-recipes').innerHTML = html
        });
  });
});


