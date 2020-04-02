<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Minus_Product;

class Minus_Product_Controller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $minus = Minus_Product::all();

        return response()->json([
            'error' => false,
            'minus' => $minus
        ], 200);
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
        $minus = Minus_Product::create($request->all());

        return response()->json([
            'error' => false,
            'plus' => $minus
        ], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        
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
        $input = $request->all();

        $minus = Minus_Product::find($id);
        
        if(!$minus) {
            abort(404);
        }

        $minus->fill($input);
        $minus->save();

        return response()->json($minus, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $minus = Minus_Product::find($id);
        
        if(!$minus) {
            abort(404);
        }

        $minus->delete();

        $message = ['message' => 'deleted succesfully', 'Minus_product_id' => $id];

        return response()->json($message, 200);
    }
}
