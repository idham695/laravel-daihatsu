@extends('layout/header')
@section('title', "Dashboard")
@include('layout/navbar')
    <div class="container tipe">
        <h1>Daihatsu {{$types->product->name}} {{$types->type}}</h1>
@include('layout/type/cardType')
@include('layout/type/technical')
@include('layout/type/spesification')
        <div>
            Sumber : <a href="https://www.oto.com/mobil-baru/daihatsu" class="text-primary mb-3 mt-1" style="display: block;">https://www.oto.com/mobil-baru/daihatsu</a>
            Sumber : <a href="https://id.priceprice.com/Daihatsu-Gran-Max-BV-23141/specs/" class="text-primary mb-3 mt-1" style="display: block;">https://id.priceprice.com/Daihatsu-Gran-Max-BV-23141/specs/</a>
            Sumber : <a href="https://harga.web.id/info-harga-spesifikasi-lengkap-daihatsu-grand-max-blind-van.info" class="text-primary mb-3 mt-1" style="display: block;">https://harga.web.id/info-harga-spesifikasi-lengkap-daihatsu-grand-max-blind-van.info</a>               
        </div>
    </div>
    
@include('layout/icon')
@include('layout/footercomp')
@include('layout/sidebar')
@include('layout/footer')