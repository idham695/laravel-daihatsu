<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Performance;

class PerformanceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $performance = Performance::orderBy('id')->get();

        return response()->json([
            'error' => false,
            'performance' => $performance
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
        $performance = Performance::create($request->all());

        return response()->json([
            'error' => false,
            'performance' => $performance
        ], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $performance = Performance::find($id);

        if(!$performance) {
            abort(404);
        }

        return response()->json([
            'error' => false,
            'type' => $performance
        ], 200);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $input = $request->all();

        $performance = Performance::find($id);
        
        if(!$performance) {
            abort(404);
        }

        $performance->fill($input);
        $performance->save();

        return response()->json($performance, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $performance = Performance::find($id);
        
        if(!$performance) {
            abort(404);
        }

        $performance->delete();

        $message = ['message' => 'deleted successfully', 'color_id' => $id];

        return response()->json($message, 200);
    }
}
