const togglePassword = document.querySelector('#togglepassword');
const password = document.querySelector('#password');

togglePassword.addEventListener('click', function (e){
    const type = password.getAttribute('type') === ('password') ? 'text' : 'password';
    password.setAttribute('type', type);
    if(togglePassword.className == ('fa-solid pss fa-eye-slash')){
        togglePassword.classList.remove('fa-eye-slash');
        togglePassword.classList.add('fa-eye');
    }else{
        togglePassword.classList.remove('fa-eye');
        togglePassword.classList.add('fa-eye-slash');
    }
});