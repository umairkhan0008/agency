import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.textContent = "Hello World!"
  }
}





document.addEventListener("DOMContentLoaded", function () {
  const navbarToggler = document.querySelector(".navbar-toggler");
  const navbarCollapse = document.querySelector(".navbar-toggler-content");

  navbarToggler.addEventListener("click", function () {
      this.classList.toggle("active");
      navbarCollapse.classList.toggle("active");
  });
});


