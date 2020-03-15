@extends('layout/header')
@section('title', "Dashboard")
@include('layout/navbar')
<div class="container">
    <div class="products">
        <div class="right">
            <img src="{{asset('/img/'. $products->image)}}" alt="" class="image">
        </div>
        <div class="left">
            <h1>Daihatsu {{$products->name}}</h1>
            <a href="/search" class="search">Ubah Mobil</a>
            <p class="price">Rp. {{$products->min_price}}0.000 - Rp. {{$products->max_price}}0.000</p>
        </div>
        <div class="informasi">
            <h1>Informasi Terkait {{$products->name}}</h1>
        </div>
    </div>
</div>
@include('layout/icon')
@include('layout/footercomp')
@include('layout/sidebar')
@include('layout/footer')

