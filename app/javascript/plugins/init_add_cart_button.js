const addCartButton = document.getElementById('bouton-et-texte-commander');
if (addCartButton != null) {
addCartButton.addEventListener('click', () => {
    window.alert("La recette a bien été ajoutée à votre panier.")
    });
};
