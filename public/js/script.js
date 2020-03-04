var element = document.getElementById("container");

function openNav(){
    element.classList.add("utility");
    document.getElementById("navbar").style.opacity="0.3";
    document.getElementById("sidenav").style.transition = "0.3s";
    document.getElementById("sidenav").style.width = "250px";
    document.getElementById("sidenav").style.left = "0";
}

function closeNav() {
    element.classList.remove("utility");
    document.getElementById("navbar").style.opacity="1";
    document.getElementById("sidenav").style.transition = "0.3s";
    document.getElementById("main").style.marginLeft = "0";
    document.getElementById("sidenav").style.left = "-250px";
}


function openSub(){
    element.classList.add("utility");
    if(document.getElementById("icon").className=="fas fa-plus"){
        document.getElementById("icon").className = "fas fa-minus";
        document.getElementById("subsidebar").style.display="block";
        document.getElementById("subsidebar").style.transition="0.3s";
        document.getElementById("subsidebar").style.marginBottom="10px";
    }
    else{
        document.getElementById("icon").className = "fas fa-plus";
        document.getElementById("subsidebar").style.display="none";
        document.getElementById("subsidebar").style.transition="0.3s";
        document.getElementById("subsidebar").style.marginBottom="0";
    }
    
}