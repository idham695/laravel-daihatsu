@extends('layout/header')
@section('title', "Dashboard")
@include('layout/navbar')
    <div class="container tipe">
        <h1>Daihatsu {{$types->product->name}} {{$types->type}}</h1>
@include('layout/type/cardType')
@include('layout/type/technical')
@include('layout/type/spesification')
        
    </div>
    
@include('layout/icon')
@include('layout/footercomp')
@include('layout/sidebar')
@include('layout/footer')