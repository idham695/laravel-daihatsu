@extends('layout/header')
@section('title', "Dashboard")
@include('layout/navbar')
    <div class="container">
    <div class="products">
        <div class="right">
            <img src="{{asset('/img/'. $types->product->image)}}" alt="" class="image">
        </div>
        <div class="left">
            <h1>Daihatsu {{$types->product->name}} {{$types->type}}</h1>
            <p class="price">Rp. {{$types->price}}0.000</p>
        </div>
    </div>
    </div>
@include('layout/icon')
@include('layout/footercomp')
@include('layout/sidebar')
@include('layout/footer')