<?php

namespace App\Http\Controllers;

use App\Eksterior;
use Illuminate\Http\Request;

class EksteriorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $eksterior = Eksterior::orderBy('id')->get();

        return response()->json([
            'error' => false,
            '$eksterior' => $eksterior
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
        $eksterior = Eksterior::create($request->all());

        return response()->json([
            'error' => false,
            'eksterior' => $eksterior
        ], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Eksterior  $eksterior
     * @return \Illuminate\Http\Response
     */
    public function show(Eksterior $eksterior)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Eksterior  $eksterior
     * @return \Illuminate\Http\Response
     */
    public function edit(Eksterior $eksterior)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Eksterior  $eksterior
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Eksterior $eksterior)
    {
        $input = $request->all();

        $eksterior = Eksterior::find($id);
         
         if(!$eksterior) {
             abort(404);
         }
 
        $eksterior->fill($input);
        $eksterior->save();
 
         return response()->json($eksterior, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Eksterior  $eksterior
     * @return \Illuminate\Http\Response
     */
    public function destroy(Eksterior $eksterior)
    {
        $eskterior = Eksterior::find($id);
        
        if(!$eskterior) {
            abort(404);
        }

        $eskterior->delete();

        $message = ['message' => 'deleted successfully', 'eskterior_id' => $id];

        return response()->json($message, 200);
    }
}
