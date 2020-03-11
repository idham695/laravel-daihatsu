@extends('layout/header')
@section('title', "Dashboard")
@include('layout/navbar')
<div id="container">
    <div class="product" id="product">
            <div class="container">
                <div class="row">
                    @foreach($product as $p)
                    <div class="col-md-4 d-flex col-sm-12">
                        <div class="card flex-fill product">
                            <img src="img/{{$p->image}}" alt="" class="card-img-top">
                            <div class="card-body">
                                <h5 class="card-title">{{$p->name}}</h5>
                                <p class="card-text">Rp. {{$p->min_price}} - Rp. {{$p->max_price}} Juta</p>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
@include('layout/icon')
@include('layout/footercomp')
@include('layout/sidebar')
@include('layout/footer')

