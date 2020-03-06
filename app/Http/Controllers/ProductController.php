<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Product;

class ProductController extends Controller
{
    public function index(){
        $product = Product::all();
        return view('index', ['product' => $product]);
    }
}
