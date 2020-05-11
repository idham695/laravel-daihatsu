<?php

namespace App\Http\Controllers;

use App\Keamanan;
use Illuminate\Http\Request;

class KeamananController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $keamanan = Keamanan::orderBy('id')->get();

        return response()->json([
            'error' => false,
            'keamanan' => $keamanan
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
        $keamanan = Keamanan::create($request->all());

        return response()->json([
            'error' => false,
            'keamanan' => $keamanan
        ], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Keamanan  $keamanan
     * @return \Illuminate\Http\Response
     */
    public function show(Keamanan $keamanan)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Keamanan  $keamanan
     * @return \Illuminate\Http\Response
     */
    public function edit(Keamanan $keamanan)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Keamanan  $keamanan
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $input = $request->all();

        $keamanan = Keamanan::find($id);
         
         if(!$keamanan) {
             abort(404);
         }
 
        $keamanan->fill($input);
        $keamanan->save();
 
         return response()->json($keamanan, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Keamanan  $keamanan
     * @return \Illuminate\Http\Response
     */
    public function destroy(Keamanan $keamanan)
    {
        $keamanan = Keamanan::find($id);
        
        if(!$keamanan) {
            abort(404);
        }

        $keamanan->delete();

        $message = ['message' => 'deleted successfully', 'keamanan_id' => $id];

        return response()->json($message, 200);
    }
}
