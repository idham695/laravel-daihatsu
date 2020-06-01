@extends('layout/header')
@section('title', "Dashboard")
@include('layout/navbar')
<div class="banner mt-5">
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
                    <a href="/product/photo/{{$products->id}}" class="qta u">Detail Gambar</a>
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
                        @foreach($products->plus as $kelebihan)
                        <li class="hijau">{{$kelebihan->kelebihan}}</li>
                        @endforeach
                    </ul>
                </div>
                <div class="col-md-6 offset-md-1 color">
                    <h3>Warna Daihatsu {{$products->name}}</h3>
                    <p style="text-align: justify;">{{$products->name}} tersedia dalam  @foreach($c as $color){{$color->color_count}} @endforeach  warna yang berbeda yaitu @foreach($products->color as $color){{$color->color_name}}{{$loop->last ? '' : ', '}}@endforeach </p>
                        <div class="product-color">
                            <div class="d-flex flex-row flex-nowrap">
                                <div class="colorbox">
                                    @foreach($products->color as $color)
                                    <div class="dflex flex-column">
                                        <div class="color-product" style="background-color: {{$color->color}};">
                                            </div>
                                            <p class="name-color">{{$color->color_name}}</p>
                                    </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    </div>
                <!-- <div class="col-md-4 offset-md-1 bg-merah">
                    <h3>Kekurangan {{$products->name}}</h3>
                    <ul>
                        @foreach($products->minus as $kekurangan)
                        <li class="merah">{{$kekurangan->kekurangan}}</li>
                        @endforeach
                    </ul>
                </div> -->
            </div>
        </div>
    </div>
</div>
<div class="container">
    <h1 class="type-price">Harga dan Promo Type {{$products->name}}</h1>
    <div class="product-price">
        <div class="d-flex flex-row flex-nowrap">
                @foreach($products->type as $type)
                <div class="catalog">
                    <div class="catalog-body">
                            <a href="/type/{{$type->id}}" class="text-dark"><p class="type">{{$type->type}} | Rp. {{$type->price}} juta</p></a>
                        @foreach($type->down as $down)
                        <div class="d-flex justify-content-between">
                            <p class="column">DP(Mulai Dari)</p>
                            <p class="price">Rp. {{$down->price_min}} juta</p>
                        </div>
                        @endforeach
                        @foreach($down->credit as $credit)
                        <div class="d-flex justify-content-between">
                            <p class="column">Angsuran</p>
                            <p class="price">Rp. {{$credit->price}} juta</p>
                        </div>
                        <div class="d-flex justify-content-between">
                            <div class="column">Tenor</div>
                            <p class="price">{{$credit->tenor}} months</p>
                        </div>
                        <div class="d-flex justify-content-center">
                        <a href="https://api.whatsapp.com/send?phone=+628881260028" class="text-danger">Promo Menarik</a>
                        </div>
                        @endforeach
                    </div>
                </div>
                @endforeach
        </div>
    </div>
    <!-- <div class="sumber">
            Sumber : <a href="https://www.oto.com/mobil-baru/daihatsu" class="text-primary mb-3 mt-1" style="display: block;">https://www.oto.com/mobil-baru/daihatsu</a>
            Sumber : <a href="https://id.priceprice.com/Daihatsu-Gran-Max-BV-23141/specs/" class="text-primary mb-3 mt-1" style="display: block;">https://id.priceprice.com/Daihatsu-Gran-Max-BV-23141/specs/</a>
            Sumber : <a href="https://harga.web.id/info-harga-spesifikasi-lengkap-daihatsu-grand-max-blind-van.info" class="text-primary mb-3 mt-1" style="display: block;">https://harga.web.id/info-harga-spesifikasi-lengkap-daihatsu-grand-max-blind-van.info</a>               
    </div> -->
</div>
@include('layout/icon')
@include('layout/footercomp')
@include('layout/footer')