<?php

namespace App\Http\Controllers;

use App\Kenyamanan;
use Illuminate\Http\Request;

class KenyamananController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $kenyamanan = Kenyamanan::orderBy('id')->get();

        return response()->json([
            'error' => false,
            'kenyamanan' => $kenyamanan
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
        $kenyamanan = Kenyamanan::create($request->all());

        return response()->json([
            'error' => false,
            'kenyamanan' => $kenyamanan
        ], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Kenyamanan  $kenyamanan
     * @return \Illuminate\Http\Response
     */
    public function show(Kenyamanan $kenyamanan)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Kenyamanan  $kenyamanan
     * @return \Illuminate\Http\Response
     */
    public function edit(Kenyamanan $kenyamanan)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Kenyamanan  $kenyamanan
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $input = $request->all();

        $kenyamanan = Kenyamanan::find($id);
         
         if(!$kenyamanan) {
             abort(404);
         }
 
        $kenyamanan->fill($input);
        $kenyamanan->save();
 
         return response()->json($kenyamanan, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Kenyamanan  $kenyamanan
     * @return \Illuminate\Http\Response
     */
    public function destroy(Kenyamanan $kenyamanan)
    {
        $kenyamanan = Kenyamanan::find($id);
        
        if(!$kenyamanan) {
            abort(404);
        }

        $kenyamanan->delete();

        $message = ['message' => 'deleted successfully', 'kenyamanan_id' => $id];

        return response()->json($message, 200);
    }
}
