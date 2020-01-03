document.addEventListener("DOMContentLoaded", function(){
  var navToggle = document.querySelector('.nav-toggle');
  var nav = document.querySelector('.nav');
  var textArea = document.querySelector('.textarea');

  // Toggles the burger menu
  function doToggle(e) {
    e.preventDefault();
    navToggle.classList.toggle('expanded');
    nav.classList.toggle('expanded');
  };

  navToggle.addEventListener('click', function(e) { doToggle(e); });

  // Automatically adjusts form text area
  function adjustTextarea(e) {
  	e.target.style.height = '25px';
    e.target.style.height = (e.target.scrollHeight)+"px";
	};

	textArea.addEventListener('input', function(e) { adjustTextarea(e) });
});