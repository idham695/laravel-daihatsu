<?php

namespace App\Http\Controllers;

use App\Hiburan;
use Illuminate\Http\Request;

class HiburanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $hiburan = Hiburan::orderBy('id')->get();

        return response()->json([
            'error' => false,
            'hiburan' => $hiburan
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
        $hiburan = Hiburan::create($request->all());

        return response()->json([
            'error' => false,
            'hiburan' => $hiburan
        ], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Hiburan  $hiburan
     * @return \Illuminate\Http\Response
     */
    public function show(Hiburan $hiburan)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Hiburan  $hiburan
     * @return \Illuminate\Http\Response
     */
    public function edit(Hiburan $hiburan)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Hiburan  $hiburan
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $input = $request->all();

        $hiburan = Hiburan::find($id);
         
         if(!$hiburan) {
             abort(404);
         }
 
        $hiburan->fill($input);
        $hiburan->save();
 
         return response()->json($hiburan, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Hiburan  $hiburan
     * @return \Illuminate\Http\Response
     */
    public function destroy(Hiburan $hiburan)
    {
        $hiburan = Hiburan::find($id);
        
        if(!$hiburan) {
            abort(404);
        }

        $hiburan->delete();

        $message = ['message' => 'deleted successfully', 'hiburan_id' => $id];

        return response()->json($message, 200);
    }
}
