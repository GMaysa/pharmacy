// let btn = document.getElementById("btn-login");
// if(document.getElementById("btn-login").onclick == true){
    //     let user = document.getElementById("in-user").value;
    //     if(user == "Admin"){
        //         location.href("dashboard/");
        //     }else{
            //     }
            // }
            //     console.log("who are u?");
function WYR(role){
    const n = document.querySelectorAll("ul li.btn-menu");
    // const act = document.querySelector("ul li.active");
    // for(var i = 0, length = n.length; i<length; i++){
        if(role == "Admin"){
            const btn = document.getElementsByClassName("ul li.3");
            btn.style.display= "none";
        }
    // }
}

document.getElementById("btn-login").onclick = function () {
    const user = document.getElementById("in-user").value;
    if(user == "Admin"){
        location.href = "dashboard/";
    }else if(user == "Staff"){
        location.href = "dashboard/";
    }else{
        console.log("who are u?");
    }
};