@extends('dashboard.app')

@section("title") Game List @endsection

@section('content')

    @component("component.breadcrumb",["data"=>[

    ]])
        @slot("last") Game List @endslot
    @endcomponent

    <div class="row">
        <div class="col-12">
            @component("component.card")
                @slot('icon') <i class="feather-file text-primary"></i> @endslot
                @slot('title') Game List @endslot
                @slot('button')
                    <a href="{{ route('post.create') }}" class="btn btn-sm btn-outline-primary">
                        <i class="fas fa-plus fa-fw"></i>
                    </a>
                @endslot
                @slot('body')
                    <div class="table-responsive">
                        <table class="table  table-hover mb-0 table-hover">
                            <thead>
                            <tr>
{{--                                <th scope="col">#</th>--}}
                                <th  scope="col">Game</th>
                                <th scope="col">Category</th>
                                <th scope="col">Version</th>
                                <th scope="col">Link</th>
                                <th scope="col">Controls</th>
                                <th scope="col">Created_at</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($posts as $p)
                                <tr >
{{--                                    <th scope="row">{{ $p->id }}</th>--}}
                                    <td >
                                        <div class="d-inline-flex">
                                            <img class="rounded mr-2 border border-danger" src="{{ asset("/storage/thumbnail/".$p->logo) }}" alt="" style="width: 45px;">
                                            <div class="d-flex align-items-center">
                                                {{ Str::words($p->name,3, '...')  }}
                                            </div>
                                        </div>

                                    </td>
                                    <td>{{ $p->getCategory->title }}</td>
                                    <td>{{ $p->version }}</td>
                                    <td class="justify-content-around">

                                        <a href="{{ $p->link1 }}" class="btn btn-primary btn-sm mt-1"><i class="feather-arrow-down"></i></a>
                                        @isset($p->link2)
                                            <a href="{{ $p->link2 }}" class="btn btn-success btn-sm mt-1"><i class="feather-arrow-down"></i></a>
                                        @endisset
                                        @isset($p->link3)
                                            <a href="{{ $p->link3 }}" class="btn btn-info btn-sm mt-1"><i class="feather-arrow-down"></i></a>
                                        @endisset
                                    </td>
                                    <td>
                                        <div class="d-inline-flex">
                                            <a href="{{ route('post.edit',$p->id) }}" class="btn mr-2 btn-outline-warning btn-sm">
                                                <i class="feather-edit"></i>
                                            </a>
                                            <form action="{{ route('post.destroy',$p->id) }}"  method="post">
                                                @csrf
                                                @method("DELETE")
                                                <button href="" class="btn btn-sm btn-outline-danger text-left">
                                                    <i class="feather-trash-2"></i>
                                                </button>
                                            </form>
                                            <a href="{{ route('post.show',$p->id) }}" class="btn ml-2 btn-outline-success btn-sm">
                                                <i class="feather-eye"></i>
                                            </a>
                                        </div>

                                    </td>

                                    <td>{{ $p->created_at->diffForHumans() }}</td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                @endslot
            @endcomponent
        </div>
    </div>
@endsection
@section("foot")
    <script>
        $(".table").dataTable({
            "order": [[0, "desc" ]]
        });
        $(".dataTables_length,.dataTables_filter,.dataTable,.dataTables_paginate,.dataTables_info").parent().addClass("px-0");
    </script>
@endsection
