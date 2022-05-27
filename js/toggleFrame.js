var n = document.querySelectorAll("ul li.btn-menu");

function linkeds(type){
    // var types = type.contains('1');
    if(type.contains('1')){
        document.getElementById("frame").src=("home.html")
    }else if(type.contains('2')){
        document.getElementById("frame").src=("inventory.html")
    }else if(type.contains('3')){
        document.getElementById("frame").src=("cashier.html")
    }else if(type.contains('4')){
        document.getElementById("frame").src=("report.html")
    }
}

for(var i = 0, length = n.length; i<length; i++){
    n[i].onclick = function(){
        var act = document.querySelector("ul li.active");
        var before = this.classList.contains("active");
        if(!before){
            act.classList.remove("active");
            this.classList.add("active");
            var type = this.classList;
            linkeds(type);
            console.log(n)
        }
    }
}