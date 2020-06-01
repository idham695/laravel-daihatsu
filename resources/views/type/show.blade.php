@extends('layout/header')
@section('title', "Dashboard")
@include('layout/navbar')
    <div class="container tipe">
        <h1>Daihatsu {{$type->product->name}} {{$type->type}}</h1>
@include('layout/type/cardType')
@include('layout/type/technical')
@include('layout/type/spesification')
        <!-- <div class="varian">
            <h3>Tipe Daihatsu {{$type->product->name}} Lainnya</h3>
            <div class="content">
                <table class="table table-lg bg-light">
                    <thead>
                        <tr>
                            <th>Tipe</th>
                            <th>Harga</th>
                        </tr>
                    </thead>
                    <tbody>
                            @foreach($product as $types)
                            <tr>
                                <td><a href="/type/{{$types->id}}" class="text-dark"><p class="type-link">{{$types->type}}</p></a></td>
                                <td>{{$types->price}} Juta</td>
                            </tr>
                            @endforeach
                    </tbody>
                </table>
            </div> -->
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