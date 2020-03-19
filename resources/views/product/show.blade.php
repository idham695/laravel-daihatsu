@extends('layout/header')
@section('title', "Dashboard")
@include('layout/navbar')
<div class="banner">
    <img src="{{asset('/img/'. $products->banner)}}" alt="">
    <div class="container">
        <div class="banner-teks">
            <h2>{{$products->name}}</h2>
        </div>
        <!-- <div class="banner-price">
            <h5>Rp. {{$products->min_price}}0.000 - Rp. {{$products->max_price}}0.000</h5>
        </div> -->
        <div class="banner-button">
                    <a href="https://api.whatsapp.com/send?phone=+628881260028" class="qta u">Promo Menarik</a>
                    <a href="" class="qta u">Detail Gambar</a>
        </div>
    </div>
</div>
<div class="products">
    <div class="container">
        <div class="informasi">
            <!-- @foreach ($products->type as $type)
            <p>{{$type->type}}</p>
            @endforeach -->
            <h1>Informasi Terkait {{$products->name}}</h1>
            <p class="a">
                {{$products->desc}}
            </p>
        </div>
    </div>
</div>
<div class="kelebihan">
    <div class="container">
        <h1>{{$products->name}} : Dari para ahli</h1>
        <div class="plus-minus">
            <div class="row">
                <div class="col-md-4 bg-hijau">
                    <h3>Kelebihan {{$products->name}} </h3>
                    <ul>
                        <li class="hijau">hello</li>
                        <li class="hijau">hello</li>
                        <li class="hijau">hello</li>
                        <li class="hijau">hello</li>
                    </ul>
                </div>
                <div class="col-md-4 offset-md-1 bg-merah">
                    <h3>Kekurangan {{$products->name}}</h3>
                    <ul>
                        <li class="merah">hi</li>
                        <li class="merah">hi</li>
                        <li class="merah">hi</li>
                        <li class="merah">hi</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
@include('layout/icon')
@include('layout/footercomp')
@include('layout/sidebar')
@include('layout/footer')

<!-- Carousel DP -->
<!-- <div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                         <div class="container">
                            <div class="row">
                                    <div class="col-4 col-md-4">
                                        <div class="card">
                                            <div class="card-body">
                                                <p>Hello</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-4 col-md-4">
                                        <div class="card">
                                            <div class="card-body">
                                                <p>Hello</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-4 col-md-4">
                                        <div class="card">
                                            <div class="card-body">
                                                <p>Hello</p>
                                            </div>
                                        </div>
                                    </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                         <div class="container">
                            <div class="row">
                                    <div class="col-4 col-md-4">
                                        <div class="card">
                                            <div class="card-body">
                                                <p>Hello</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-4 col-md-4">
                                        <div class="card">
                                            <div class="card-body">
                                                <p>Hello</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-4 col-md-4">
                                        <div class="card">
                                            <div class="card-body">
                                                <p>Hello</p>
                                            </div>
                                        </div>
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div> -->