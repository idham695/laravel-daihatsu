<?php

namespace App\Http\Controllers;

use App\Keselamatan;
use Illuminate\Http\Request;

class KeselamatanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $keselamatan = Keselamatan::orderBy('id')->get();

        return response()->json([
            'error' => false,
            'keselamatan' => $keselamatan
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
        $keselamatan = Keselamatan::create($request->all());

        return response()->json([
            'error' => false,
            'keselamatan' => $keselamatan
        ], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Keselamatan  $keselamatan
     * @return \Illuminate\Http\Response
     */
    public function show(Keselamatan $keselamatan)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Keselamatan  $keselamatan
     * @return \Illuminate\Http\Response
     */
    public function edit(Keselamatan $keselamatan)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Keselamatan  $keselamatan
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $input = $request->all();

        $keselamatan = Keselamatan::find($id);
         
         if(!$keselamatan) {
             abort(404);
         }
 
        $keselamatan->fill($input);
        $keselamatan->save();
 
         return response()->json($keselamatan, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Keselamatan  $keselamatan
     * @return \Illuminate\Http\Response
     */
    public function destroy(Keselamatan $keselamatan)
    {
        $keselamatan = Keselamatan::find($id);
        
        if(!$keselamatan) {
            abort(404);
        }

        $keselamatan->delete();

        $message = ['message' => 'deleted successfully', 'keselamatan_id' => $id];

        return response()->json($message, 200);
    }
}
