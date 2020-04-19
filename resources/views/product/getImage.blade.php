@extends('layout/header')
@section('title', "Dashboard")
@include('layout/navbar')

<div class="container">
    <div class="image">
        <div class="image-360">
            <h3>Gambar 360 Daihatsu {{$products->name}}</h3>
        </div>
        <div class="interior">
            <h3>Gallery gambar interior Daihatsu {{$products->name}}</h3>
                @foreach($products->interior as $image)
                    <img class = "photo" src="{{asset('/img/interior/'. $image->image)}}" alt="">
                    
                @endforeach
        </div>
        <div class="eksterior">
            <h3>Gallery gambar eksterior Daihatsu {{$products->name}}</h3>
                    @foreach($products->eksterior as $image) 
                    <img class = "photo" src="{{asset('/img/eksterior/'. $image->image)}}" alt="">
                    @endforeach
        </div>
    </div>
</div>

@include('layout/icon')
@include('layout/footercomp')
@include('layout/sidebar')
@include('layout/footer')