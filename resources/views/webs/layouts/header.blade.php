<?php
    $categories = \App\Http\Controllers\Admin\CategoryController::getCategoryForWeb();
?>
<div class="top-header">
    <div class="container">
        <div class="top-header-item">
            <div class="cp-icon"><a href="/">JIVA SPORT</a></div>
        </div>
        <div class="top-header-item">
            <ul>
                @foreach($categories as $item)
                    <li>
                        <a href="{{route('web.category.index',['ct'=>$item['id'],'name'=>$item['category_name']])}}">
                            <span>{{$item['category_name']}}</span>
                        </a>
                        @if($category->id == $item['id'])
                            <svg class="nav-arrow"><polygon points="10 0 20 10 0 10 "></polygon></svg>
                        @endif

                    </li>
                @endforeach
            </ul>
        </div>
        <div class="top-header-item">
           <div class="search-container">
               <input type="text" class="form-group" placeholder="Bạn cần tìm gì">
               <span><i class="fa fa-search"></i></span>
           </div>
        </div>
        <div class="top-header-item right-side">
            <span>
                <i class="fa fa-shopping-bag"></i>
            </span>
        </div>
        <div class="top-header-item right-side">
            <span>
                <i class="fa fa-building"></i>
            </span>
        </div>
        <div class="top-header-item right-side">
            <span><i class="fa fa-phone"></i></span>
        </div>
    </div>
</div>

@foreach($categories as $item)
    @if($category->id == $item['id'])
        @if(count($item['childs']))
            <div class="sub-nav">
                <div class="container">
                    <ul>
                        @foreach($item['childs'] as $sub)
                            <li>
                                <a href="{{route('web.category.index',['ct'=>$sub['id'],'name'=>$sub['category_name']])}}">
                                    <span>{{$sub['category_name']}}</span>
                                </a>
                            </li>
                        @endforeach
                    </ul>
                </div>
            </div>
        @endif
    @endif
@endforeach
