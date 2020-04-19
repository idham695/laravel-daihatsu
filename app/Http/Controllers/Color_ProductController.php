<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Color_Product;

class Color_ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $color = Color_Product::orderBy('id')->get();
        return response()->json([
            'error' => false,
            'color' => $color
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
        $color = Color_Product::create($request->all());

        return response()->json([
            'error' => false,
            'color' => $color
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
        $color = Color_Product::find($id);

        if(!$color) {
            abort(404);
        }

        return response()->json([
            'error' => false,
            'type' => $color
        ], 200);
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

        $color = Color_Product::find($id);
        
        if(!$color) {
            abort(404);
        }

        $color->fill($input);
        $color->save();

        return response()->json($color, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $color = Type::find($id);
        
        if(!$color) {
            abort(404);
        }

        $color->delete();

        $message = ['message' => 'deleted successfully', 'color_id' => $id];

        return response()->json($message, 200);

    }
}
