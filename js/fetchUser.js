const loginForm = document.getElementById('login_form');
const btnLogin = document.querySelector('.btn_login');


loginForm.addEventListener('submit',function(event){
    event.preventDefault();
    let formData = new FormData(loginForm);
    let xhr = new XMLHttpRequest();
    xhr.open("POST","api/insertUser.php");
    xhr.send(formData);
    xhr.onload = ()=>{
        if(xhr.response == 'не совпадают пароли') alert("Пароли не совпадают");
        if(xhr.response == 'Такой логин уже есть') alert("Такой логин уже есть");
        if(xhr.response == 'вы зарегестрированны') alert("Регистрация прошла успешно");
        if(xhr.response == 'регситрация не прошла') alert("Регситрация не прошла");
    }
});
