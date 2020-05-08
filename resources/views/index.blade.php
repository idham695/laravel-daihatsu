@extends('layout/header')
@section('title', "Dashboard")
@include('layout/navbar')
    <div class="product" id="product">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 search">
                        <form action="searchProduct" method="POST">
                        {{ csrf_field() }}
                            <div class="input-group mt-3">
                                <input type="text" class="form-control" placeholder="Cari Merk Mobil..." name="cari">
                                <div class="input-group-append">
                                    <button class="btn btn-primary" type="submit">Cari</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="row">
                    @foreach($product as $p)
                    <div class="col-md-4 d-flex">
                        <div class="card flex-fill">
                            <img src="img/{{$p->image}}" alt="" class="card-img-top">
                            <div class="card-body">
                                <h5 class="card-title">{{$p->name}}</h5>
                                <p class="card-text">Rp. {{ number_format($p->min_price, 3) }}.000 - Rp. {{ number_format($p->max_price, 3) }}.000</p>
                                <a href="/product/{{$p->id}}" class="btn btn-primary u">View Product</a>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
                <div class="row promo">
                    <div class="col-6 col-sm-3 ">
                    <a href="https://api.whatsapp.com/send?phone=+628881260028" class="info u">Promo Menarik</a>
                    </div>
                    <div class="col-6 col-sm-3">
                    <a href="https://api.whatsapp.com/send?phone=+628881260028" class="info u">Informasi Harga</a>
                    </div>
                    <div class="col-6 col-sm-3">
                    <a href="https://api.whatsapp.com/send?phone=+628881260028"  class="info u">Informasi DP</a>
                    </div>
                    <div class="col-6 col-sm-3">
                    <a href="https://api.whatsapp.com/send?phone=+628881260028"  class="info u">Informasi Angsuran</a>
                    </div>
                </div>
            </div>
        </div>
@include('layout/icon')
@include('layout/footercomp')
@include('layout/sidebar')
@include('layout/footer')

