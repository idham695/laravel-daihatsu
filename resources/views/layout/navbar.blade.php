@include('layout/header')
<nav class="navbar navbar-expand-lg navbar-light" id="navbar">
            <div class="container">
                <div onclick="openNav()" id="main" class="main">&#9776;</div>
                <a class="navbar-brand" href="/"><img src="{{ URL::asset('img/unnamed.png') }}" alt=""></a>
                <div class="nav ml-auto">
                    <a href="/map" class="feather"><i class="fas fa-map-marker-alt"></i></a>
                    <a href="/search" class="feather"><i class="fas fa-search"></i></a>
                </div>
            </div>
</nav>
@include('layout/footer')