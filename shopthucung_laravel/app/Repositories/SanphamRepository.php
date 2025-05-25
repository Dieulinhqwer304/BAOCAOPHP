<?php
namespace App\Repositories;

use App\Repositories\ISanphamRepository;
use App\Models\Sanpham;
use App\Models\Danhmuc;

class SanphamRepository implements ISanphamRepository{

    public function allProduct()
    {
        return Sanpham::orderBy('id_sanpham', 'desc')->take(20)->get();
    }
    public function relatedProduct()
    {
        return Sanpham::orderBy('id_sanpham', 'desc')->take(10)->get();
    }
    public function randomProduct()
    {
        return Sanpham::inRandomOrder()->take(10)->get();
    }
    public function dogProduct()
    {
        return Sanpham::where('id_danhmuc', 1)->orderBy('id_sanpham', 'desc')->take(5)->get();
    }
    public function catProduct()
    {
        return Sanpham::where('id_danhmuc', 2)->orderBy('id_sanpham', 'desc')->take(5)->get();
    }
    public function choGiong()
    {
        return Sanpham::where('id_danhmuc', 6)->orderBy('id_sanpham', 'desc')->take(5)->get();
    }
    public function meoGiong()
    {
        return Sanpham::where('id_danhmuc', 7)->orderBy('id_sanpham', 'desc')->take(5)->get();
    }
    
     public function searchProduct($data)
    {
        $searchKeyword = $data->input('tukhoa');
        $loai = $data->input('loai');

        $query = Sanpham::query();

        if ($searchKeyword) {
            $query->where('tensp', 'like', '%' . $searchKeyword . '%');
        }

        if ($loai) {
            $query->where('id_danhmuc', $loai);
        }

        return $query->paginate(5);
    }

    
    public function viewAllWithPagi()
    {
        return Sanpham::paginate(10);
    }
     public function getAllByDanhMuc($request)
    {
        $danhmucs = Danhmuc::all();
        $query = Sanpham::query();
        if ($request->has('loai')) {
            $query->where('id_danhmuc', $request->loai);
        }
        return $query->paginate(10);
    }

}