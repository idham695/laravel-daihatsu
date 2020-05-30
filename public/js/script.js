// var element = document.getElementById("container");
// var nav = document.getElementsByClassName("u");
// var card = document.getElementsByClassName("card");
// var navbar = document.getElementById("navbar");

// $(document).on('click', function () {
//     $('.collapse').collapse('hide');
// })
$(document).ready(function () {
    $(".btn-success").click(function () {
        var html = $(".clone").html();
        $(".increment").after(html);
    });
    $("body").on("click", ".btn-danger", function () {
        $(this).parents(".control-group").remove();
    });
});
// function openNav(){
//     element.classList.add("utility");
//     navbar.style.opacity="0.3";
//     document.getElementById("sidenav").style.transition = "0.3s";
//     document.getElementById("sidenav").style.width = "250px";
//     document.getElementById("sidenav").style.left = "0";
//     for(var i = 0; i < nav.length; i++){
//         nav[i].classList.add("disabled");
//     }
//     for(var i = 0; i < card.length; i++){
//         card[i].classList.add("disabled");
//     }
// }

// function closeNav() {
//     element.classList.remove("utility");
//     navbar.style.opacity="1";
//     document.getElementById("sidenav").style.transition = "0.3s";
//     document.getElementById("main").style.marginLeft = "0";
//     document.getElementById("sidenav").style.left = "-250px";
//     for(var i = 0; i < nav.length; i++){
//         nav[i].classList.remove("disabled");
//     }
//     for(var i = 0; i < card.length; i++){
//         card[i].classList.remove("disabled");
//     }
// }

// function openSub(id){
//     element.classList.add("utility");
//     if(document.getElementById("icon" + id).className=="fas fa-plus"){
//         document.getElementById("icon" + id).className = "fas fa-minus";
//         document.getElementById('subsidebar' + id).style.display="block";
//         document.getElementById('subsidebar' + id).style.transition="0.3s";
//         document.getElementById('subsidebar' + id).style.marginBottom="10px";
//     }
//     else{
//         document.getElementById("icon" + id).className = "fas fa-plus";
//         document.getElementById('subsidebar' + id).style.display="none";
//         document.getElementById('subsidebar' + id).style.transition="0.3s";
//         document.getElementById('subsidebar' + id).style.marginBottom="0";
//     }

// }
