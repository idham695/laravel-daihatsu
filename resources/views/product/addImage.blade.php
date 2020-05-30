@extends('layout/header')
@section('title', "Dashboard")
@include('layout/navbar')
<div class="container mt-5">
        @if (count($errors) > 0)
        <div class="alert alert-danger">
            <strong>Sorry !</strong> There were some problems with your input.<br><br>
            <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
            </ul>
        </div>
        @endif

            @if(session('success'))
            <div class="alert alert-success">
            {{ session('success') }}
            </div> 
        @endif
    <form action="/image" method="post" enctype="multipart/form-data">
        {{csrf_field()}} <div class="form-group">
        <div class="form-group">
            <label for="product" class="mt-5">ID Product</label>
            <select class="form-control" id="product" name="id_product">
            @foreach($products as $image)
            <option value="{{$image->id}}">{{$image->name}}</option>
            @endforeach
            </select>
        </div>
        <div class="form-group">
            <label for="name">Name</label>
            <select class="form-control" id="name" name="name">
            @foreach($products as $image)
            <option value="{{$image->name}}">{{$image->name}}</option>
            @endforeach
            </select>
        </div>
        <div class="form-group">
            <label for="extension">Extension</label>
            <input type="text" class="form-control" id="extension" placeholder=".webp" name="extension">
        </div>
        <div class="input-group control-group increment">
            <label for="image">Image</label>
            <input type="file" class="form-control" id="image" name="image[]">
            <div class="input-group-btn">
                <button class="btn btn-success" type="button">Add</button>
            </div>
        </div>
        <div class="clone hide">
            <div class="control-group input-group">
                <label for="image">Image</label>
                <input type="file" class="form-control" id="image" name="image[]">
                <div class="input-group-btn">
                    <button class="btn btn-danger" type="button">Remove</button>
                </div>
            </div>
        </div>
        <button class="btn btn-primary" type="submit">Submit</button>
    </form>
  </div>
    </form>
</div>
@include('layout/icon')
@include('layout/footercomp')
@include('layout/footer')