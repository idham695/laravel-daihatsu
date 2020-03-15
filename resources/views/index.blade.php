@extends('layout/header')
@section('title', "Dashboard")
@include('layout/navbar')
    <div class="product" id="product">
            <div class="container">
                <div class="row">
                    @foreach($product as $p)
                    <div class="col-md-4 d-flex">
                        <div class="card flex-fill product">
                            <img src="img/{{$p->image}}" alt="" class="card-img-top">
                            <div class="card-body">
                                <h5 class="card-title">{{$p->name}}</h5>
                                <p class="card-text">Rp. {{$p->min_price}}0.000 - Rp. {{$p->max_price}}0.000</p>
                                <a href="/product/{{$p->id}}" class="btn btn-primary">View Product</a>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
                <div class="row promo">
                    <div class="col-6 col-sm-3 ">
                    <a href="https://api.whatsapp.com/send?phone=+628881260028" class="info">Promo Menarik</a>
                    </div>
                    <div class="col-6 col-sm-3">
                    <a href="https://api.whatsapp.com/send?phone=+628881260028" class="info">Informasi Harga</a>
                    </div>
                    <div class="col-6 col-sm-3">
                    <a href="https://api.whatsapp.com/send?phone=+628881260028"  class="info">Informasi DP</a>
                    </div>
                    <div class="col-6 col-sm-3">
                    <a href="https://api.whatsapp.com/send?phone=+628881260028"  class="info">Informasi Angsuran</a>
                    </div>
                </div>
            </div>
        </div>
@include('layout/icon')
@include('layout/footercomp')
@include('layout/sidebar')
@include('layout/footer')

