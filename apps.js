function toggleMenu() {
    var menu = document.getElementById('verticalMenu');
    var icon = document.querySelector('.menu-icon');
    icon.classList.toggle('change');

    if (menu.style.display === 'block') {
        menu.style.display = 'none';
    } else {
        menu.style.display = 'block';
    }
}
