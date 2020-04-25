<?php

namespace App\Http\Controllers;

use App\Capacity;
use Illuminate\Http\Request;

class CapacityController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $capacity=Capacity::orderBy('id')->get();

        return response()->json([
            'error' => false,
            'capacity' => $capacity
        ]); 
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
        $capacity = Capacity::create($request->all());

        return response()->json([
            'error' => false,
            'capacity' => $capacity,
        ], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Capacity  $capacity
     * @return \Illuminate\Http\Response
     */
    public function show(Capacity $capacity)
    {
        $capacity = Capacity::find($id);

        if(!$capacity) {
            abort(404);
        }

        return response()->json([
            'error' => false,
            'detail' => $capacity
        ], 200);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Capacity  $capacity
     * @return \Illuminate\Http\Response
     */
    public function edit(Capacity $capacity)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Capacity  $capacity
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Capacity $capacity)
    {
        $input = $request->all();

        $capcity = Capacity::find($id);
        
        if(!$capcity) {
            abort(404);
        }

        $capcity->fill($input);
        $capcity->save();

        return response()->json($capcity, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Capacity  $capacity
     * @return \Illuminate\Http\Response
     */
    public function destroy(Capacity $capacity)
    {
        $capacity = Capacity::find($id);
        
        if(!$capacity) {
            abort(404);
        }

        $capacity->delete();

        $message = ['message' => 'deleted successfully', 'capacity_id' => $id];

        return response()->json($message, 200);

    }
}
