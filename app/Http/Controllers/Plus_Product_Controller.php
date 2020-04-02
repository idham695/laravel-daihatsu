<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Plus_Product;

class Plus_Product_Controller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $plus = Plus_Product::all();

        return response()->json([
            'error' => false,
            'plus' => $plus
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
        $plus = Plus_Product::create($request->all());

        return response()->json([
            'error' => false,
            'plus' => $plus,
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
        //
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

        $plus = Plus_Product::find($id);
        
        if(!$plus) {
            abort(404);
        }

        $plus->fill($input);
        $plus->save();

        return response()->json($plus, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $plus = Plus_Product::find($id);
    
        if(!$plus) {
            abort(404);
        }

        $plus->delete();

        $message = ['message' => 'deleted succesfully', 'plus_product_id' => $id];

        return response()->json($message, 200);
    }
}
