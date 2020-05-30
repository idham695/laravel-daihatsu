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
                    <a href="/product/{{$p->id}}" class="product-detail u">
                            <div class="card flex-fill">
                                <img src="img/{{$p->image}}" alt="" class="card-img-top">
                                <div class="card-body">
                                    <h5 class="card-title-product">{{$p->name}}</h5>
                                    <p class="card-text">Rp. {{ number_format($p->min_price, 3) }}.000 - Rp. {{ number_format($p->max_price, 3) }}.000</p>
                                </div>
                            </div>
                    </a>
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
                <div class="sumber">
                Sumber : <a href="https://www.oto.com/mobil-baru/daihatsu" class="text-primary mb-3 mt-1" style="display: block;">https://www.oto.com/mobil-baru/daihatsu</a>
                Sumber : <a href="https://id.priceprice.com/Daihatsu-Gran-Max-BV-23141/specs/" class="text-primary mb-3 mt-1" style="display: block;">https://id.priceprice.com/Daihatsu-Gran-Max-BV-23141/specs/</a>
                Sumber : <a href="https://harga.web.id/info-harga-spesifikasi-lengkap-daihatsu-grand-max-blind-van.info" class="text-primary mb-3 mt-1" style="display: block;">https://harga.web.id/info-harga-spesifikasi-lengkap-daihatsu-grand-max-blind-van.info</a>               
                </div>
            </div>
        </div>
@include('layout/icon')
@include('layout/footercomp')
@include('layout/footer')

