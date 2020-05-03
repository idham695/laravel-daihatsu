<?php

namespace App\Http\Controllers;

use App\lainLain;
use Illuminate\Http\Request;

class LainLainController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $lain = lainLain::orderBy('id')->get();

        return response()->json([
            'error' => false,
            'lain' => $lain
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
        $lain = lainLain::create($request->all());

        return response()->json([
            'error' => false,
            'lain' => $lain
        ], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\lainLain  $lainLain
     * @return \Illuminate\Http\Response
     */
    public function show(lainLain $lainLain)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\lainLain  $lainLain
     * @return \Illuminate\Http\Response
     */
    public function edit(lainLain $lainLain)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\lainLain  $lainLain
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, lainLain $lainLain)
    {
        $input = $request->all();

        $lain = lainLain::find($id);
         
         if(!$lain) {
             abort(404);
         }
 
        $lain->fill($input);
        $lain->save();
 
         return response()->json($lain, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\lainLain  $lainLain
     * @return \Illuminate\Http\Response
     */
    public function destroy(lainLain $lainLain)
    {
        $lain = lainLain::find($id);
        
        if(!$lain) {
            abort(404);
        }

        $lain->delete();

        $message = ['message' => 'deleted successfully', 'lain_lain_id' => $id];

        return response()->json($message, 200);
    }
}
