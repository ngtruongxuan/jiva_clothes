<?php
    $categories = \App\Http\Controllers\Admin\CategoryController::getCategoryForWeb();
?>
<div class="top-header">
    <div class="container">
        <div class="cp-icon"><a href="/">Jiva</a></div>
        <div class="frm-search" style="width: 35%">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Bạn cần tìm gì ?" aria-describedby="basic-addon2">
                <span class="input-group-addon" id="basic-addon2" style="cursor: pointer"><i class="fa fa-search" aria-hidden="true"></i></span>
            </div>
        </div>
        <div class="top-header-item">
            <i class="fa fa-phone"></i>
            <span>BÁN HÀNG: <strong>1800 1162</strong> (miễn phí)</span>
        </div>
        <div class="top-header-item">
            <a>
                <i class="fa fa-building"></i>
                <span>Xem hệ thống <strong>79</strong> cửa hàng</span>
            </a>
        </div>
        <div class="top-header-item">
            <a>
                <i class="fa fa-shopping-bag"></i>
                <span><strong>79</strong> sản phẩm</span>
            </a>
        </div>
    </div>
</div>
<div class="header-nav">
    <div class="container">
        <div class="nav-menu">
            <ul>
                @foreach($categories as $item)
                    <li id="ctg_{{$item['id']}}">
                        <div class="nav-menu-content">
                            <a href="/">
                                <div>
                                    @if(!empty($item['thunbnail']))
                                        <img src="{{$item['thunbnail']}}">
                                    @else
                                        <i class="fa {{$item['icon']}}"></i>
                                    @endif
                                </div>
                                <span style="display: block">{{$item['category_name']}}</span>
                            </a>
                        </div>
                        @if(count($item['childs'])>0)
                            <div class="nav-menu-sub">
                                <ul>
                                    @foreach($item['childs'] as $sub)
                                        <li>
                                            <a href="/">
                                                <i class="fa fa-caret-right"></i>
                                                <span>{{$sub['category_name']}}</span>
                                            </a>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif
                    </li>
                @endforeach
            </ul>
        </div>
    </div>
</div>
<style>
    /*Sub menu*/
    .header-nav .nav-menu >ul>li .nav-menu-sub>ul>li>a>i{
        margin-right: 20px;
    }
    .header-nav .nav-menu >ul>li .nav-menu-sub>ul>li>a{
        margin: 10px;
        cursor: pointer;
        text-decoration-line: none;
    }
    .header-nav .nav-menu >ul>li .nav-menu-sub>ul>li{
        margin-top: 5px;
        margin-left: -30px;
    }
    .header-nav .nav-menu >ul>li .nav-menu-sub>ul{
        list-style: revert;
    }
    .header-nav .nav-menu >ul>li .nav-menu-sub{
        position: absolute;
        display: none;
        background: #f7f7f7;
        height: 80px;
        width: 500px;
    }
    .header-nav .nav-menu >ul>li:hover .nav-menu-sub{
        display: block;
    }
    /*End Sub menu*/

    /*content of menu*/
    .header-nav .nav-menu-content a >div{
        margin: 0px 10px;
        padding: 5px 0px;
        text-align: center;
        height: 40px;
    }
    .header-nav .nav-menu-content a span{
        text-align: center;
    }
    .nav-menu>ul>li.active{
        background: black;
    }
    .nav-menu>ul>li.active>div>a{
        color: white;
    }
    .header-nav .nav-menu-content a{
        color: black;
        text-decoration-line: none;
        width: auto;
        word-spacing: -1px;
    }
    .header-nav .nav-menu-content:hover >a{
        background: black;
        color:white;
    }

    .header-nav .nav-menu-content:hover{
        background: black;
        color:white;
    }
    .header-nav .nav-menu-content{
        width: 130px;
        /*height: 60px;*/
        font-size: 14px;
        cursor: pointer;
    }
    .header-nav .nav-menu>ul>li{
        display: inline-block;
        position: relative;
        margin: 0px;
        border-right: 1px dashed #ddd;
    }
    .header-nav .nav-menu>ul{
        position: relative;
    }
    .header-nav .nav-menu{
    }
    .header-nav ul{
        list-style: none;
        margin: 0px;
    }
    .header-nav{
        background: #f7f7f7;
        position: relative;
        /*height: 60px;*/
    }
    /*End content of menu*/
    .frm-search .input-group{
        width: 100%;
        top: 5px;
        border-radius: 16px;
    }
    .cp-icon>a{
        color: red;
        font-size: 30px;
        text-decoration-line: none;
    }
    .top-header .container{
        /*line-height: 100px;*/
    }
    .top-header .container>div{
        display: inline-block;
        margin-left: 20px;
    }
    .top-header{
        height: auto;
        position: relative;
    }
    .top-header-item{
        position: relative;
        font-size: 12px;
        line-height: 50px;
    }

    .top-header-item .fa{
        /*font-size: 16px;*/
        line-height: 30px;
        background: #f7f7f7;
        /*display: block;*/
        width: 30px;
        height: 30px;
        float: left;
        text-align: center;
        border-radius: 100%;
        margin-right: 5px;
        position: relative;
    }
    .top-header-item .fa-shopping-bag{
        background: red;
        color: white;
    }
    .top-header-item span{
        letter-spacing: -1px;
        position: relative;
        top: -10px;
    }
    .top-header-item a{
        text-decoration-line: none;
        cursor: pointer;
    }
</style>
<script>
    $(document).ready(function() {
        width = $(window).width();
        $(window).resize(function(){
            if(width<1200){
                $('.header-nav').css("position","relative");
                $('.header-nav').css("width","100%");
            }
        });
        // var headerTop = $('#header-nav').offset().top;
        // var headerBottom = headerTop + 120; // Sub-menu should appear after this distance from top.
        $(window).scroll(function () {
            var scrollTop = $(window).scrollTop(); // Current vertical scroll position from the top
            if (scrollTop > 100) { // Check to see if we have scrolled more than headerBottom
                // $('.header-nav').css("position","fixed");
                // $('.header-nav').css("top","0px");
                // $('.header-nav').css("width","100%");
            } else {
                $('.header-nav').css("position","relative");
                $('.header-nav').css("width","100%");
                // if ($(".header-nav").is(":visible")) {
                //     $('.header-nav').hide();
                // }
            }
        });
    });
</script>