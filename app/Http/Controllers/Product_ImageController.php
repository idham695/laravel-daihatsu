<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product_Image;

class Product_ImageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $image = Product_Image::orderBy('id')->get();

        $output = [
            "message" => "image",
            "result" => $image
        ];

        return response()->json($output, 200);
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
        $input = $request->all();
        $request->validate([
            'id_product' => 'required|exists:product,id',
            'image' => 'required|file|image|mimes:jpg,jpeg,png,webp|max:2048'
        ]);

        $image = new Product_Image();
        $image->id_product = $request->input('id_product');
        $image->name = $request->input('name');
        $image->extension = $request->input('extension');
        
        if ($request->hasFile('image')) {
            $data = $request->file('image');
            $name = $request->input('name');
            $imageName =$name . '-' .$data->getClientOriginalName();
            $request->file('image')->move(public_path('/img/'.$name.''), $imageName);

            $current_image_path = public_path('avatar') . '/' . $image->image;
            if(file_exists($current_image_path)){
                unlink($current_image_path);
            }
            $image->image = $imageName;
        }

        $image->save();
        return response()->json($image, 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $image = Product_Image::find($id);

        if(!$image) {
            abort(404);
        }

        return response()->json([
            'error' => false,
            'type' => $image
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

        $image = Product_Image::find($id);

        if(!$image) {
            abort(404);
        }

        $request->validate([
            'id_product' => 'required|exists:product,id',
            'image' => 'required|file|image|mimes:jpeg,png,jpg,webp|max:2048',
            'extension' => 'rewuired'
        ]);

        $image->id_product = $request->input('id_product');
        $image->name = $request->input('name');
        $image->extension = $request->input('extension');

        if ($request->hasFile('image')) {
            $data = $request->file('image');
            $name = $request->input('name');
            $imageName =$name . '-' .$data->getClientOriginalName();
            $request->file('image')->move(public_path('/img/'.$name.''), $imageName);

            $current_image_path = public_path('avatar') . '/' . $image->image;
            if(file_exists($current_image_path)){
                unlink($current_image_path);
            }
            $image->image = $imageName;
        }

        $image->save();
        return response()->json($image, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $image = Product_Image::find($id);

        if(!$image) {
            abort(404);
        }

        $image->delete();

        $message = ['message' => 'deleted successfully', 'id_image' => $id];

        return response()->json($message, 200);
    }
}
