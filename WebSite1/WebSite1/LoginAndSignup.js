const sign_in_btn = document.querySelector('#sign-in-button');
const sign_up_btn = document.querySelector('#sign-up-button');
const container = document.querySelector('.container');

var delayInMilliseconds = 1700; //1 second


sign_up_btn.addEventListener('click', () => {
    container.classList.add('sign-up-mode');
    setTimeout(function () {
        window.location = "Su.aspx";

    }, delayInMilliseconds);
})




sign_in_btn.addEventListener('click', () => {
    container.classList.remove('sign-up-mode');
})