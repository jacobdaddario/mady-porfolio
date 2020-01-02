document.addEventListener("DOMContentLoaded", function(){
  var navToggle = document.querySelector('.nav-toggle');
  var nav = document.querySelector('.nav');

  function doToggle(e) {
    e.preventDefault();
    navToggle.classList.toggle('expanded');
    nav.classList.toggle('expanded');
  }

  navToggle.addEventListener('click', function(e) { doToggle(e); });
});