<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Type;
use App\Product;
use App\Performance;
use App\Down_Payment;

class TypeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function getType()
    {
        $type=Type::orderBy('id')->get();
        return response()->json([
            'error' => false,
            'types' => $type
        ],200);
    }
    public function index()
    {
        $type = Type::with('product')->orderBy('id','desc')->get();
        $product = Product::orderBy('id')->get();

        // return response()->json([
        //     'error' => false,
        //     'type' => $type,
        // ], 200);
        return view('index', compact('type','product'));
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
        $type = Type::create($request->all());

        return response()->json([
            'error' => false,
            'type' => $type,
        ], 200);
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        // page
        $performance = Type::with('performance','kemudi','capacity','velg','transmisi','suspensi','detail')->orderBy('id')->get();
        $spesification = Type::with('eksterior','hiburan','lain','kenyamanan','keselamatan','keamanan')->orderBy('id')->get();
        $type = Type::with('product')->find($id);

        // sidebar
        $products = Product::with('type')->find($id);
        $product = Type::with('product')->orderBy('id')->get();
        // $type = Type::find($id);

        // if(!$type) {
        //     abort(404);
        // }

        // return response()->json([
        //     'error' => false,
        //     'types' => $types,
        //     'down' => $down
        // ], 200);

        return view('type.show', compact('type','product','products','performance','spesification'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Type $type)
    {
        return view('type.edit', compact('type'));
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

        $type = Type::find($id);
        
        if(!$type) {
            abort(404);
        }

        $type->fill($input);
        $type->save();

        return response()->json($type, 200);


    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

        $type = Type::destroy($id);
        $message = ['message' => 'soft deleted successfully', 'type_id' => $id];
        return response()->json($message, 200);
    }
    //returns both non-deleted and softdeleted
    public function typesWithSoftDelete()
    {

        $types = Type::withTrashed()->orderBy('id')->get();
        return response()->json([
            'error' => false,
            'types' => $types
        ], 200);

    }

    public function softDeleted()
    {
        $types = Type::onlyTrashed()->orderBy('id')->get();

        return response()->json([
            'error' => false,
            'types' => $types
        ], 200);
    }

    public function restore($id)
    {

        $type = Type::onlyTrashed()->find($id);
        
        if(!$type) {
            abort(404);
        }
        
        $type->restore();


        $message = ['message' => 'restore successfully', 'type_id' => $id];
        return response()->json($message, 200);
    }

    public function permanentDeleteSoftDeleted($id)
    {
        $type = Type::onlyTrashed()->find($id);

        if(!$type) {
            abort(404);
        }

        $type->forceDelete();


        $message = ['message' => 'delete permanent successfully', 'type_id' => $id];
        return response()->json($message, 200);
    }

}
