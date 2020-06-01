@extends('layout/header')
@section('title', "Dashboard")
@include('layout/navbar')

<div class="container">
        <div class="image">
                <div class="image-360">
                    <h3>Gambar 360 Daihatsu {{$products->name}}</h3>
                    <!-- <a href="/product/addImage/{{$products->id}}" class="btn btn-primary">Add 360 Image</a> -->
                                <div class="images-wraper">
                                    <div class="images">
                                        <!-- semua gambar yang dimasukan ke 360 harus sama -->
                                        @forelse($products->photo as $images)
                                        <div
                                        class="cloudimage-360"
                                        data-folder="{{asset('/img/'.$images->name)}}"
                                        data-filename="/{{$images->name}}-{index}{{$images->extension}}"
                                        data-drag-speed=100
                                        data-speed=100
                                        data-amount=35
                                        >
                                        <button class="cloudimage-360-prev"></button>
	                                    <button class="cloudimage-360-next"></button>
                                        @empty
                                        <div class="text-center mt-auto">
                                            <h4>Gambar 360 Tidak ada</h4>
                                        </div>
                                        @endforelse
                                        </div>
                                    </div>
                                </div>
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
         <!-- <div class="sumber-image">
                Sumber : <a href="https://www.oto.com/mobil-baru/daihatsu" class="text-primary mb-3 mt-1" style="display: block;">https://www.oto.com/mobil-baru/daihatsu</a>
                Sumber : <a href="https://id.priceprice.com/Daihatsu-Gran-Max-BV-23141/specs/" class="text-primary mb-3 mt-1" style="display: block;">https://id.priceprice.com/Daihatsu-Gran-Max-BV-23141/specs/</a>
                Sumber : <a href="https://harga.web.id/info-harga-spesifikasi-lengkap-daihatsu-grand-max-blind-van.info" class="text-primary mb-3 mt-1" style="display: block;">https://harga.web.id/info-harga-spesifikasi-lengkap-daihatsu-grand-max-blind-van.info</a>               
        </div> -->
</div>

@include('layout/icon')
@include('layout/footercomp')
@include('layout/footer')