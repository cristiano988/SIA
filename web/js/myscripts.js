window.onload = function(){
    myinit();
};

function myinit(){
    document.getElementById("contact-form").addEventListener("submit",myvalidation);
    
}

function myvalidation(event)
{
    event.preventDefault();
    var pass = document.getElementById("password");
    var confirmPassword = document.getElementById("confirmPassword");
    var name = document.getElementById("name");
    var email = document.getElementById("email");
    
    if(isEmpty(name)){
        setMessage("nameMsg","*O campo nome é obrigatório");
        return false;
    }else{
        setMessage("nameMsg","");
    }
    if(isEmpty(email)){
        setMessage("emailMsg","*Tem que indicar um email");
        return false;
    }else {
        setMessage("emailMsg","");
        if(!emailIsValid(email)){
            setMessage("emailMsg","*O email não é válido");
            return false;
        }else{
            setMessage("emailMsg","");
        }
    }
    if(isEmpty(pass)){
        setMessage("passwordMsg","*Tem que preencher a password");
        return false;
    }else{
        if(!isPasswordValid(pass)){
            setMessage("passwordMsg","*A password deve conter entre 6-16 carateres e um número");
            return false;
        }else{
            setMessage("passwordMsg","");
        }
    }
    if(isEmpty(confirmPassword)){
        setMessage("confPasswordMsg","*Tem que confirmar a password");
        return false;
    }else{
        setMessage("confPasswordMsg","");
    }
    if(pass.value !== confirmPassword.value){
        setMessage("passwordMsg","*As passwords não coincidem");
        setMessage("confPasswordMsg","*As passwords não coincidem");
        return false;
    }else{
        setMessage("passwordMsg","");
        setMessage("confPasswordMsg","");
    }
    return true;
}

function isEmpty(field)
{
    if(field.value === ""){
        return true;
    }else{
        return false;
    }
}

function setMessage(field,message)
{
    document.getElementById(field).innerHTML = message;
}

function emailIsValid(email){
    var expression = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    return expression.test(email.value);
}

function isPasswordValid(password){
    var expression = /^((?=.*\d)(?=.*[a-zA-Z])[a-zA-Z0-9]{6,16})$/;
    return expression.test(password.value);
}