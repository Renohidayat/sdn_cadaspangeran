@extends('layouts.Frontend.app')
@section('title')
    Kegiatan Sekolah
@endsection

@section('content')
    @section('about')
        <div class="event-page-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="row event-inner-wrapper">

                            @foreach ($kegiatan as $item)
                                <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
                                    <div class="single-item">
                                        <div class="item-img">
                                            <a href="{{url('kegiatan', $item->slug)}}">
                                                <img src="{{asset('storage/images/kegiatan/' .$item->image)}}" alt="kegiatan" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="item-content">
                                            <h3 class="sidebar-title"><a href="{{url('kegiatan', $item->slug)}}">{{$item->nama}}</a></h3>
                                            <p>{!! Str::limit(strip_tags($item->content), 100) !!}</p>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endsection
@endsection
