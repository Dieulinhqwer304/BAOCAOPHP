@extends('admin_layout')
@section('admin_content')

<h1 class="h3 mb-3"><strong>Danh sách danh mục</strong></h1>

<div class="">
  @if(session()->has('success'))
      <div class="alert alert-success mb-3">
          {{session('success')}}
      </div>
  @endif
</div>

<a class="btn btn-primary" href="{{route('danhmuc.create')}}">Thêm danh mục</a>

  <table class="table">
    <thead>
      <tr>
        <th>Tên danh mục</th>
        <th colspan="2">Actions</th>
      </tr>
    </thead>

    <tbody>
      @foreach($Danhmucs as $danhmuc)
      <tr>
        <td>{{$danhmuc->ten_danhmuc}}</td>
        <td colspan="2" style="display: flex; justify-content: start;">
          <div><a href="{{ route('danhmuc.edit', ['danhmuc' => $danhmuc]) }}" class="btn btn-warning mb-2">Edit</a></div>
          <div style="margin-left: 10px;"><form method="post" action="{{route('danhmuc.destroy', ['danhmuc' => $danhmuc])}}">
              @csrf
              @method('delete')
              <input type="submit" class="btn btn-danger" value="Delete"
              onclick="return confirm('Bạn có chắc chắn muốn xóa danh mục này không?')">
          </form></div>
        
        </td>
      </tr>
      @endforeach
    </tbody>
  </table>
@endsection