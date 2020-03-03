<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title')</title>
</head>
    <link rel="stylesheet" href="{{ URL::asset('css/bootstrap.css') }}">
    <link rel="stylesheet" href="{{ URL::asset('fontawesome/css/fontawesome.css') }}">
    <link rel="stylesheet" href="{{ URL::asset('fontawesome/css/solid.css') }}">
    <link rel="stylesheet" href="{{ URL::asset('fontawesome/css/brands.css') }}">
    <link rel="stylesheet" href="{{ URL::asset('css/style.css') }}">
<body>
    <div id="container">
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container">
                <div onclick="openNav()" id="main" class="main">&#9776;</div>
                <a class="navbar-brand" href="#"><img src="{{ URL::asset('img/unnamed.png') }}" alt=""></a>
                <div class="nav ml-auto">
                    <a href="#" class="feather"><i class="fas fa-map-marker-alt"></i></a>
                    <a href="#" class="feather"><i class="fas fa-search"></i></a>
                </div>
            </div>
        </nav>
        @yield('container')
        @yield('icon')
        <div class="container">
                    <div class="icon">
                        <a href="https://api.whatsapp.com/send?phone=+628881260028"><img src="{{ URL::asset('img/whatsapp.png') }}" alt=""></a>
                    </div>
        </div>
        @yield('footer')
        <div class="row footer" id="footer">
            <div class="col text-center">
                <p>&copy; 2020 all right reserved by Daihatsu Tunas</p>
            </div>
        </div>
    </div>
    @yield('sidebar')
<div class="sidenav" id="sidenav">
        <div class="closebtn" onclick="closeNav()">&times;</div>
        <div onclick="openSub()" class="insidenav" id="insidenav">Sigra
            <span class="iconsidebar" id="iconplus"><i id="icon" class="fas fa-plus"></i></span>
        </div>
            <div class="subsidebar" id="subsidebar">
                <a href="#" class="link">Sigra 1.2 X AT </a>
                <a href="#" class="link">Sigra 1.0 M MT </a>
                <a href="#" class="link">Sigra 1.2 R AT </a>
                <a href="#" class="link">Sigra 1.2 X DLX MT </a>
                <a href="#" class="link">Sigra 1.2 X DLX AT </a>
                <a href="#" class="link">Sigra 1.2 X D MT </a>
                <a href="#" class="link">Sigra 1.2 X MT </a>
                <a href="#" class="link">Sigra 1.2 R MT </a>
                <a href="#" class="link">Sigra 1.2 R DLX MT </a>
                <a href="#" class="link">Sigra 1.2 R DLX AT </a>
            </div>
        <div class="insidenav">Xenia
            <span class="iconsidebar"><i class="fas fa-plus"></i></span>
        </div>
        <div class="insidenav">Hi-Max
            <span class="iconsidebar"><i class="fas fa-plus"></i></span>
        </div>
        <div class="insidenav">Ayla
            <span class="iconsidebar"><i class="fas fa-plus"></i></span>
        </div>
        <div class="insidenav">Terios
            <span class="iconsidebar"><i class="fas fa-plus"></i></span>
        </div>
        <div class="insidenav">Luxio
            <span class="iconsidebar"><i class="fas fa-plus"></i></span>
        </div>
        <div class="insidenav">Grand Max MB
            <span class="iconsidebar"><i class="fas fa-plus"></i></span>
        </div>
        <div class="insidenav">Grand Max PU
            <span class="iconsidebar"><i class="fas fa-plus"></i></span>
        </div>
        <div class="insidenav">Grand Max BV
            <span class="iconsidebar"><i class="fas fa-plus"></i></span>
        </div>
        <div class="insidenav">Sirion
            <span class="iconsidebar"><i class="fas fa-plus"></i></span>
        </div>
    </div>
</body>
    <script src="{{ URL::asset('js/jquery-3.4.1.js') }}"></script>
    <script src="{{ URL::asset('js/popper.min.js') }}"></script>
    <script src="{{ URL::asset('js/bootstrap.js') }}"></script>
    <script src="{{ URL::asset('js/headroom.js') }}"></script>
    <script src="{{ URL::asset('js/feather.min.js') }}"></script>
    <script src="{{ URL::asset('js/script.js') }}"></script>
</html>