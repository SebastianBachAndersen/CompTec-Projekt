//Funktionen bliver kaldt inde i index.php 
function menuDropdown() {
    //Denne linje toggler css classen "show". Css classen vælger om div'en med button skal vises
    document.getElementById("menuDropdown").classList.toggle("show");
}
// Når man clicker kalder den denne function
window.onclick = function(event) {
    // Hvis der man klikker ikke er på button classen "menu" kører den nedenstående 
    if(!event.target.matches('.menu')) {
        var dropDowns = document.getElementsByClassName("dropdownMenu");
        var i;
            //Her indsættes de buttons der er i div'et i et array hvor den looper igennem hver af dem
        for (i = 0; i < dropDowns.length; i++) {
            var openDropdown = dropDowns[i];
            //Hvis classen "dropdownMenu" er medlem af css classen show så fjerner den classen så den bliver hidden
            if (openDropdown.classList.contains('show')) {
                openDropdown.classList.remove('show');
            }
        }
    }
}
