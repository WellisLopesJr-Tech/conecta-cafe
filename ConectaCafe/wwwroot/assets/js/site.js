let elements = document.querySelectorAll('input[type="text"]');
elements.forEach((elem, index, array) => {
    if (elem.value != "") {
        elem.parentElement.classList.add('is-filled')
    }
})