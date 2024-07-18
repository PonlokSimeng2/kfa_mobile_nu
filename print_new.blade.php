

<html>
    <header>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="{{ URL::to('assets/css/bootstrap.min.css') }}">
    <link type="text/css" rel="stylesheet" href="{{asset('/css/report.css')}}" media="all" >
  <link type="text/css" rel="stylesheet" href="{{asset('/css/no-print.css')}}" media="print" >

    </header>
    <body>

    <style>
        .center {
        text-align: center;
        }
    body{
    margin-top: 50px !important;

    }  
        .tableitem,.th,.tr,.td {
            border: 2px;
            border-color:black;
            text-align: center;
        
        }
        .divtotal {
            height: 40px;
            margin: auto;
            padding:8px;
            border: 2px;
        }
        .text {

            position: relative; 
            left: 32%;
            transform: translateX(-50%);
            top: 50px;
        }
        .table .customer-col {
            width: 150px;
            max-width: 200px;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

    </style>
        <div class="container">
  <div>

  <div class="container">



    <div class="row mb-12">
            <div class="col-12">

                <div>
                <strong><h3><b>Sale Product Report</b></h3></strong>
                </div>
                <div>
                    <strong>From: </strong>{{$date_from}} 
                    <strong>To: </strong>{{$date_to}}
                    <strong>Warehouse:</strong><span>{{$warehouse_id == 'All' ? 'All' : ($sale_info->first()->warehouse_name ?? 'N/A')}} 
                    <strong>Brand:</strong><span>{{$brand_id == 'All' ? 'All' : ($sale_info->first()->brand_name ?? 'N/A')}}</span>
                    <strong>Product:</strong><span>{{$product_id == 'All' ? 'All' : ($sale_info->first()->product_name ?? 'N/A')}}</span>
                    <strong>Customer:</strong><span>{{$customer_id == 'All' ? 'All' : ($sale_info->first()->customer_name ?? 'N/A')}}</span>
                </div>
              
            </div>
           
           
            
    </div>
    
        <div class="table-responsive-sm">
            <table class="table table-sm">
            
                        <tr class="bg-primary text-light">
                            <th scope="col">Invoice#</th>
                            <th scope="col">Sold Date</th>
                            <th scope="col" class="customer-col">Customer</th>
                            <th scope="col">Warehouse</th>
                            <th scope="col">Brand</th>
                            <th scope="col">Product Description</th>
                            <th scope="col">Quantity</th>
                        </tr>
            
                            <tbody>
                            @php
                                $total_qty=0;
                            @endphp
                                @foreach ($sales as $sa )
                                   
                                    <tr>
                                        <td>{{$sa->invno}}</td>
                                        <td><strong>{{ date('d-M-y', strtotime($sa->date_sold)) }}</strong></td>
                                        <td class="customer-col" title="{{$sa->customer_name}}">{{$sa->customer_name}}</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                   
                                    </tr>
                                        @foreach ($sale_info as $info )
                                       
                                        @if($info->invno==$sa->invno)
                                        @php
                                            $total_qty= $total_qty + $info->qty;
                                        @endphp
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>{{$info->warehouse_name}}</td>
                                            <td>{{$info->brand_name}}</td>
                                            <td>{{$info->product_name}}</td>
                                            <td>{{$info->qty}}</td>
                                        </tr>
                                        @endif
                                        @endforeach
                                        @endforeach  
                                        <tr class="bg-info">
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>@php echo $total_qty; @endphp</td>
                                        </tr>
                                        </tbody>
                                                            
                                        </table>

                                    </div>



                                    <div class="row">
                <div class="col-sm-6">

                <div id="buttons">
                    <button class="btn btn-print" type="button" onclick="window.print(); return false;">
                        Print
                    </button>
                </div>
                </div>
                <div class="col-sm-6">
                <div id="buttons">
               <form id="exportform" action="{{ route('sale.product-new.export') }}" method="post">
                    @csrf
                    <input type="hidden" name="warehouse_id" id="export_warehouse_id">
                    <input type="hidden" name="brand_id" id="export_brand_id"> 
                    <input type="hidden" name="product_id" id="export_product_id">
                    <input type="hidden" name="customer_id" id="export_customer_id">
                    <input type="hidden" name="dt_from" id="export_dt_from">
                    <input type="hidden" name="dt_to" id="export_dt_to">
                    <button type="submit" class="btn btn-primary">Export to Excel</button>
                </form>
                    </button>
                </div>
                </div>
            </div>

            </div>

            </div>
         </body>
</html>
