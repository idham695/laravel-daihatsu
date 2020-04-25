<?php

namespace App\Http\Controllers;

use App\Transmision;
use Illuminate\Http\Request;

class TransmisionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $transmisi = Transmision::orderBy('id')->get();

        return response()->json([
            'error' => false,
            'transmisi' => $transmisi
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
        $transmisi = Transmision::create($request->all());

        return response()->json([
            'error' => false,
            'transmisi' => $transmisi
        ], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Transmision  $transmision
     * @return \Illuminate\Http\Response
     */
    public function show(Transmision $transmision)
    {
        $transmisi = Transmision::find($id);

        if(!$transmisi) {
            abort(404);
        }

        return response()->json([
            'error' => false,
            'transmisi' => $transmisi
        ], 200);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Transmision  $transmision
     * @return \Illuminate\Http\Response
     */
    public function edit(Transmision $transmision)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Transmision  $transmision
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Transmision $transmision)
    {
        $input = $request->all();

        $transmisi = Transmision::find($id);
        
        if(!$transmisi) {
            abort(404);
        }

        $transmisi->fill($input);
        $transmisi->save();

        return response()->json($transmisi, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Transmision  $transmision
     * @return \Illuminate\Http\Response
     */
    public function destroy(Transmision $transmision)
    {
        $transmisi = Transmision::find($id);
        
        if(!$transmisi) {
            abort(404);
        }

        $transmisi->delete();

        $message = ['message' => 'deleted successfully', 'transmisi_id' => $id];

        return response()->json($message, 200);
    }
}
