document.addEventListener("DOMContentLoaded", function() {
	var toggle = document.querySelector("div[data-action='toggle-nav']");
	var menu = document.querySelector("div[data-action='nav']");

	toggle.addEventListener("click", function() {
		menu.classList.toggle('hidden')
	});
});