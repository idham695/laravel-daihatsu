<?php

namespace App\Http\Controllers;

use App\Kemudi;
use Illuminate\Http\Request;

class KemudiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $kemudi = Kemudi::orderBy('id')->get();

        return response()->json([
            'error' => false,
            'kemudi' => $kemudi
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
        $kemudi = Kemudi::create($request->all());

        return response()->json([
            'error' => false,
            'kemudi' => $kemudi,
        ], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Kemudi  $kemudi
     * @return \Illuminate\Http\Response
     */
    public function show(Kemudi $kemudi)
    {
        $kemudi = Kemudi::find($id);

        if(!$kemudi) {
            abort(404);
        }

        return response()->json([
            'error' => false,
            'kemudi' => $kemudi
        ], 200);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Kemudi  $kemudi
     * @return \Illuminate\Http\Response
     */
    public function edit(Kemudi $kemudi)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Kemudi  $kemudi
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Kemudi $kemudi)
    {
        $input = $request->all();

        $kemudi = Kemudi::find($id);
        
        if(!$kemudi) {
            abort(404);
        }

        $kemudi->fill($input);
        $kemudi->save();

        return response()->json($kemudi, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Kemudi  $kemudi
     * @return \Illuminate\Http\Response
     */
    public function destroy(Kemudi $kemudi)
    {
        $kemudi = Kemudi::find($id);
        
        if(!$kemudi) {
            abort(404);
        }

        $kemudi->delete();

        $message = ['message' => 'deleted successfully', 'kemudi_id' => $id];

        return response()->json($message, 200);
    }
}
