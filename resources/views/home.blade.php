@extends('dashboard.app')
@section("title") Dashboard @endsection

@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">

                @if(\Session::has('error'))
                    <div class="alert alert-danger">
                        {{\Session::get('error')}}
                    </div>
                @endif

                <div class="card-header">Admin Dashboard</div>

                <div class="card-body d-flex flex-wrap">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                        <div class="col-12 col-lg-6 col-md-6">
                            <canvas id="myChart" ></canvas>
                        </div>
                        <div class="col-12 col-lg-6 col-md-6">
{{--                            {{ \App\Post::with('getViewer')->get() }}--}}
                        </div>
                </div>
            </div>
        </div>
    </div>

@endsection
@section('foot')
    <script>
        var url = "{{url('stock/chart')}}";
        var Years = new Array();
        var Labels = new Array();
        var Prices = new Array();
        $(document).ready(function(){
            $.get(url, function(response){
                response.forEach(function(data){
                    Years.push(data.name);
                    Labels.push(data.id);
                    Prices.push(data.get_viewer_count);
                });
                var ctx = document.getElementById("myChart").getContext('2d');
                var myChart = new Chart(ctx, {
                    type: 'bar',
                    data: {
                        labels:Years,
                        datasets: [{
                            label: 'Infosys Price',
                            data: Prices,
                            borderWidth: 1
                        }]
                    },
                    options: {
                        scales: {
                            yAxes: [{
                                ticks: {
                                    beginAtZero:true
                                }
                            }]
                        }
                    }
                });
            });
        });
    </script>
{{--    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.bundle.js" charset="utf-8"></script>--}}
{{--    <script>--}}
{{--        --}}{{--var url = "{{url('stock/chart')}}";--}}
{{--        var date = new Array();--}}
{{--        var Labels = new Array();--}}
{{--        var Prices = new Array();--}}
{{--        $(document).ready(function(){--}}
{{--            $.get(url, function(response){--}}
{{--                response.forEach(function(data){--}}
{{--                    Years.push(data.stockYear);--}}
{{--                    Labels.push(data.stockName);--}}
{{--                    Prices.push(data.stockPrice);--}}
{{--                });--}}
{{--                var ctx = document.getElementById("canvas").getContext('2d');--}}
{{--                var myChart = new Chart(ctx, {--}}
{{--                    type: 'bar',--}}
{{--                    data: {--}}
{{--                        labels:Years,--}}
{{--                        datasets: [{--}}
{{--                            label: 'Infosys Price',--}}
{{--                            data: Prices,--}}
{{--                            borderWidth: 1--}}
{{--                        }]--}}
{{--                    },--}}
{{--                    options: {--}}
{{--                        scales: {--}}
{{--                            yAxes: [{--}}
{{--                                ticks: {--}}
{{--                                    beginAtZero:true--}}
{{--                                }--}}
{{--                            }]--}}
{{--                        }--}}
{{--                    }--}}
{{--                });--}}
{{--            });--}}
{{--        });--}}
{{--    </script>--}}
@endsection
