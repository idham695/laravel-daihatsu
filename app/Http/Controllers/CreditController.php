<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Credit;

class CreditController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $credit = Credit::all();

        return response()->json([
            'error' => false,
            'credit' => $credit
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
        $credit = Credit::create($request->all());

        return response()->json([
            'error' => false,
            'credit' => $credit
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

        $credit = Credit::find($id);
         
         if(!$credit) {
             abort(404);
         }
 
        $credit->fill($input);
        $credit->save();
 
         return response()->json($credit, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $credit = Credit::find($id);
        
        if(!$credit) {
            abort(404);
        }

        $credit->delete();

        $message = ['message' => 'deleted successfully', 'credit__id' => $id];

        return response()->json($message, 200);
    }
}
