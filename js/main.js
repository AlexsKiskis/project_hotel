const loginConteiner = document.querySelector('.registration');
const btn_logIn = document.querySelector('.btn_login');

btn_logIn.addEventListener('click', ()=>{
    loginConteiner.classList.toggle('registration_open');
});