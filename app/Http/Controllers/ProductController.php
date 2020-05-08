<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Type;
use App\Product;
use App\Down_Payment;
use App\Product_Image;
class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function searchProduct(Request $request){
        $cari = $request->cari;
        $product = Product::where('name','like',"%".$cari."%")->get();

        return view('index', compact('product'));
    }
    public function getImageProducts($id){
        // untuk sidebar
        $type = Product::with('type')->orderBy('id','desc')->get();
        $product = Product::orderBy('id')->get();

        // untuk halaman image
        $products = Product::with('interior','eksterior')->find($id); 
        $image = Product_Image::all();
        $count = Product::withCount('image')->where('id', $id)->get();

        return view('product.getImage', compact('product','type','products','image','count'));
    }
    public function index()
    {
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        // untuk sidebar
        $type = Product::with('type', 'color')->orderBy('id','desc')->get();
        $products = Product::with('type')->find($id);
        
        // untuk halaman show
        $product = Product::orderBy('id')->get();
        $c = Product::withCount('color')->where('id', $id)->get();
        $down = Down_payment::with('credit')->orderBy('id','desc')->get();

         // if(!$type) {
        //     abort(404);
        // }

        // return response()->json([
        //     'error' => false,
        //     'type' => $type
        // ], 200);

        


        return view('product.show', compact('product','type','products','down','c'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        return view('product.edit', compact('product'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
