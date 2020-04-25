<?php

namespace App\Http\Controllers;

use App\VelgBan;
use Illuminate\Http\Request;

class VelgBanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $velg = VelgBan::orderBy('id')->get();

        return response()->json([
            'error' => false,
            'velg' => $velg
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
        $velg = VelgBan::create($request->all());

        return response()->json([
            'error' => false,
            'velg' => $velg
        ], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\VelgBan  $velgBan
     * @return \Illuminate\Http\Response
     */
    public function show(VelgBan $velgBan)
    {
        $velg = VelgBan::find($id);

        if(!$velg) {
            abort(404);
        }

        return response()->json([
            'error' => false,
            'velg' => $velg
        ], 200);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\VelgBan  $velgBan
     * @return \Illuminate\Http\Response
     */
    public function edit(VelgBan $velgBan)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\VelgBan  $velgBan
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, VelgBan $velgBan)
    {
        $input = $request->all();

        $velg = VelgBan::find($id);
        
        if(!$velg) {
            abort(404);
        }

        $velg->fill($input);
        $velg->save();

        return response()->json($velg, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\VelgBan  $velgBan
     * @return \Illuminate\Http\Response
     */
    public function destroy(VelgBan $velgBan)
    {
        $vleg = VelgBan::find($id);
        
        if(!$vleg) {
            abort(404);
        }

        $vleg->delete();

        $message = ['message' => 'deleted successfully', 'vleg_id' => $id];

        return response()->json($message, 200);
    }
}
