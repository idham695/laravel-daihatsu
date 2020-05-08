@include('layout/header')
<nav class="navbar fixed-top navbar-expand-lg navbar-light" id="navbar" >
            <div class="container">
                <div onclick="openNav()" id="main" class="main">&#9776;</div>
                <a class="navbar-brand u" href="/"><img src="{{ URL::asset('img/unnamed.png') }}" alt=""></a>
                <div class="nav ml-auto">
                    <a href="/map" class="feather u"><i class="fas fa-map-marker-alt"></i></a>
                </div>
            </div>
</nav>
<div id="container" onclick="closeNav()">
@include('layout/footer')