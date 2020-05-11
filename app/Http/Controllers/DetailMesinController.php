<?php

namespace App\Http\Controllers;

use App\DetailMesin;
use Illuminate\Http\Request;

class DetailMesinController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $detail=DetailMesin::orderBy('id')->get();

        return response()->json([
            'error' => false,
            'detail' => $detail
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
        $detail = DetailMesin::create($request->all());

        return response()->json([
            'error' => false,
            'detail' => $detail,
        ], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\DetailMesin  $detailMesin
     * @return \Illuminate\Http\Response
     */
    public function show(DetailMesin $detailMesin)
    {
        $detail = DetailMesin::find($id);

        if(!$detail) {
            abort(404);
        }

        return response()->json([
            'error' => false,
            'detail' => $detail
        ], 200);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\DetailMesin  $detailMesin
     * @return \Illuminate\Http\Response
     */
    public function edit(DetailMesin $detailMesin)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\DetailMesin  $detailMesin
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $input = $request->all();

        $detail = DetailMesin::find($id);
        
        if(!$detail) {
            abort(404);
        }

        $detail->fill($input);
        $detail->save();

        return response()->json($detail, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\DetailMesin  $detailMesin
     * @return \Illuminate\Http\Response
     */
    public function destroy(DetailMesin $detailMesin)
    {
        $detail = DetailMesin::find($id);
        
        if(!$detail) {
            abort(404);
        }

        $detail->delete();

        $message = ['message' => 'deleted successfully', 'detail_id' => $id];

        return response()->json($message, 200);
    }
}
