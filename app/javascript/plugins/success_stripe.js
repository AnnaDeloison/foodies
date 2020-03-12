import toastr from 'toastr';
import 'toastr/build/toastr.min.css'

toastr.options = {
  "closeButton": true,
  "debug": false,
  "newestOnTop": false,
  "progressBar": false,
  "positionClass": "toast-top-center",
  "preventDuplicates": false,
  "onclick": null,
  "showDuration": "300",
  "hideDuration": "1000",
  "timeOut": "5000",
  "extendedTimeOut": "1000",
  "showEasing": "swing",
  "hideEasing": "linear",
  "showMethod": "fadeIn",
  "hideMethod": "fadeOut"
}

const successOrder = () => {
  toastr.success("Votre commande a bien été enregistrée.", "Félicitations !");
}

if (document.querySelector('.success-stripe')) {
  document.addEventListener("DOMContentLoaded", (e) => {
    if (window.location.search.substr(1) == "provenance=stripe") {
      successOrder();
    }
  })
}

