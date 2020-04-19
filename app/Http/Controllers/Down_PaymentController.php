<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Down_Payment;

class Down_PaymentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $down = Down_Payment::with('credit','type')->orderBy('id')->get();

        return response()->json([
            'error' => false,
            'down' => $down
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
        $down = Down_Payment::create($request->all());

        return response()->json([
            'error' => false,
            'down' => $down
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
        //
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

       $down = Down_Payment::find($id);
        
        if(!$down) {
            abort(404);
        }

       $down->fill($input);
       $down->save();

        return response()->json($down, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $down = Down_Payment::find($id);
        
        if(!$down) {
            abort(404);
        }

        $down->delete();

        $message = ['message' => 'deleted successfully', 'down_payment__id' => $id];

        return response()->json($message, 200);
    }
}
