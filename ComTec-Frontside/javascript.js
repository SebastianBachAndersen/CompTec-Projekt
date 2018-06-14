function menuDropdown() {
    document.getElementById("menuDropdown").classList.toggle("show");
}
window.onclick = function(event) {
    if(!event.target.matches('.menu')) {
        var dropDowns = document.getElementsByClassName("dropdownMenu");
        var i;
        for (i = 0; i < dropDowns.length; i++) {
            var openDropdown = dropDowns[i];
            if (openDropdown.classList.contains('show')) {
                openDropdown.classList.remove('show');
            }
        }
    }
}
