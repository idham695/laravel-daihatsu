<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Type;
use App\Product;
use App\Down_Payment;
class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function getImageProducts($id){
        $type = Product::with('type')->orderBy('id','desc')->get();
        $product = Product::orderBy('id')->get();
        $products = Product::with('image','interior','eksterior')->find($id); 


        return view('product.getImage', compact('product','type','products'));
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
        $products = Product::with('type')->find($id); 
        // $types = Type::with('down')->find($id); 
        $type = Product::with('type', 'color')->orderBy('id','desc')->get();
        $c = Product::withCount('color')->where('id', $id)->get();
        $down = Down_payment::with('credit')->orderBy('id','desc')->get();
        $product = Product::orderBy('id')->get();

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
