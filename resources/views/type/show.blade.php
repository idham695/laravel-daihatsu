@extends('layout/header')
@section('title', "Dashboard")
@include('layout/navbar')
    <div class="container">
        <h1>Daihatsu {{$types->product->name}} {{$types->type}}</h1>
        <div class="spesification">
            <div class="d-flex flex-row flexnowrap">

            </div>
        </div>
        <div class="teknical">
            <h3>Spesifikasi Teknik {{$types->product->name}} {{$types->type}}</h3>
            <div class="performance">
                @foreach($types->performance as $performance)
                    <table class="table table-secondary">
                        <thead>
                            <tr>
                                <th colspan="2">Performance</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>kapasitas mesin</td>
                                <td>{{$performance->machine_capacity}}</td>
                            </tr>
                            <tr>
                                <td>Tenaga</td>
                                <td>{{$performance->horse_power}}</td>
                            </tr>
                            <tr>
                                <td>Torsi</td>
                                <td>{{$performance->torsi}}</td>
                            </tr>
                            <tr>
                                <td>Jenis Bahan Bakar</td>
                                <td>{{$performance->fuel}}</td>
                            </tr>
                        </tbody>
                    </table>
                @endforeach
            </div>
        </div>
        
    </div>
@include('layout/icon')
@include('layout/footercomp')
@include('layout/sidebar')
@include('layout/footer')