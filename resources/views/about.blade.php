@extends('layouts.main')


@section('container')
    <h1 class="mb-4">Halaman {{ $title }}</h1>
    <h5>Nama  : {{ $name }}</h5>
    <h5>Email : {{ $email }}</h5> 
@endsection


