<?php

namespace App\Http\Controllers;

use App\Suspension;
use Illuminate\Http\Request;

class SuspensionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $suspensi = Suspension::orderBy('id')->get();

        return response()->json([
            'error' => false,
            'suspensi' => $suspensi
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
        $suspensi = Suspension::create($request->all());

        return response()->json([
            'error' => false,
            'suspensi' => $suspensi,
        ], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Suspension  $suspension
     * @return \Illuminate\Http\Response
     */
    public function show(Suspension $suspension)
    {
        $suspensi = Suspension::find($id);

        if(!$suspensi) {
            abort(404);
        }

        return response()->json([
            'error' => false,
            'suspensi' => $suspensi
        ], 200);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Suspension  $suspension
     * @return \Illuminate\Http\Response
     */
    public function edit(Suspension $suspension)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Suspension  $suspension
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $input = $request->all();

        $suspensi = Suspension::find($id);
        
        if(!$suspensi) {
            abort(404);
        }

        $suspensi->fill($input);
        $suspensi->save();

        return response()->json($suspensi, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Suspension  $suspension
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $suspensi = Suspension::find($id);
        
        if(!$suspensi) {
            abort(404);
        }

        $suspensi->delete();

        $message = ['message' => 'deleted successfully', 'suspensi_id' => $id];

        return response()->json($message, 200);
    }
}
